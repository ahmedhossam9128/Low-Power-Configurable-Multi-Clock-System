`timescale 1ns/1ps
// -----------------------------------------------------------------------------
// UART loopback / echo testbench
//
//   MASTER --TX--> m2s ---> RX--SLAVE
//   MASTER <-RX--- s2m <--- TX--SLAVE
//
//  1. Master transmits a byte.
//  2. Slave receives it, then transmits the same byte back (echo).
//  3. Master receives the echo and compares it with what it originally sent.
//
//  Run over several Prescale values and parity settings.
// -----------------------------------------------------------------------------
module UART_tb;

    // ---------------- clock / reset ----------------
    // RX_CLK : fast oversampling clock (100 MHz)
    // TX_CLK : bit-rate clock, period = Prescale * RX_CLK period.
    //          Generated externally, free-running and NOT phase-aligned to RX_CLK.
    localparam CLK_PERIOD = 10;               // RX_CLK period (ns)
    reg RX_CLK = 0;
    always #(CLK_PERIOD/2) RX_CLK = ~RX_CLK;

    reg TX_CLK = 0;
    integer tx_half = 40;                     // updated per config (Prescale*CLK_PERIOD/2)
    initial begin
        #3;                                   // arbitrary phase offset vs RX_CLK
        forever begin #(tx_half) TX_CLK = ~TX_CLK; end
    end

    reg RST;                                  // active low

    // ---------------- configuration (shared by both sides) ----------------
    reg [5:0] Prescale;
    reg       PAR_EN;
    reg       PAR_TYP;

    // ---------------- serial lines ----------------
    wire m2s;   // master TX -> slave RX
    wire s2m;   // slave  TX -> master RX

    // ---------------- master ports ----------------
    reg  [7:0] M_TX_DATA;
    reg        M_TX_VALID;
    wire       M_TX_BUSY;
    wire [7:0] M_RX_DATA;
    wire       M_RX_VALID;

    // ---------------- slave ports ----------------
    reg  [7:0] S_TX_DATA;
    reg        S_TX_VALID;
    wire       S_TX_BUSY;
    wire [7:0] S_RX_DATA;
    wire       S_RX_VALID;

    UART MASTER (
        .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .RST(RST), .Prescale(Prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP),
        .TX_P_DATA(M_TX_DATA), .TX_DATA_VALID(M_TX_VALID), .TX_OUT(m2s), .TX_BUSY(M_TX_BUSY),
        .RX_IN(s2m), .RX_P_DATA(M_RX_DATA), .RX_DATA_VALID(M_RX_VALID)
    );

    UART SLAVE (
        .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .RST(RST), .Prescale(Prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP),
        .TX_P_DATA(S_TX_DATA), .TX_DATA_VALID(S_TX_VALID), .TX_OUT(s2m), .TX_BUSY(S_TX_BUSY),
        .RX_IN(m2s), .RX_P_DATA(S_RX_DATA), .RX_DATA_VALID(S_RX_VALID)
    );

    // ---------------- scoreboard ----------------
    integer pass_cnt = 0;
    integer fail_cnt = 0;

    // ---------------- slave behaviour: receive, then echo ----------------
    reg [7:0] slave_got;
    reg       slave_got_flag;
    reg       s_prev_valid;

    always @(posedge RX_CLK or negedge RST) begin
        if (!RST) begin
            s_prev_valid   <= 1'b0;
            slave_got_flag <= 1'b0;
        end else begin
            s_prev_valid <= S_RX_VALID;
            // RX data_valid is a level held during the STOP state: use rising edge
            if (S_RX_VALID && !s_prev_valid) begin
                slave_got      <= S_RX_DATA;
                slave_got_flag <= 1'b1;
            end
        end
    end

    // Once the slave has a byte, push it back out of its TX
    always @(posedge RX_CLK) begin
        if (slave_got_flag && !S_TX_VALID && !S_TX_BUSY) begin
            S_TX_DATA  <= slave_got;
            S_TX_VALID <= 1'b1;
        end
        else if (S_TX_VALID && S_TX_BUSY) begin
            S_TX_VALID     <= 1'b0;    // accepted
            slave_got_flag <= 1'b0;
        end
    end

    // ---------------- master receive capture ----------------
    reg [7:0] master_got;
    reg       master_got_flag;
    reg       m_prev_valid;

    always @(posedge RX_CLK or negedge RST) begin
        if (!RST) begin
            m_prev_valid    <= 1'b0;
            master_got_flag <= 1'b0;
        end else begin
            m_prev_valid <= M_RX_VALID;
            if (M_RX_VALID && !m_prev_valid) begin
                master_got      <= M_RX_DATA;
                master_got_flag <= 1'b1;
            end
        end
    end

    // ---------------- one full transaction ----------------
    task automatic send_and_check(input [7:0] data);
        integer timeout;
        begin
            master_got_flag = 1'b0;

            // master sends
            @(negedge RX_CLK);
            M_TX_DATA  = data;
            M_TX_VALID = 1'b1;
            // hold VALID until the TX has accepted it (BUSY rises)
            timeout = 0;
            while (!M_TX_BUSY && timeout < 100000) begin
                @(negedge RX_CLK); timeout = timeout + 1;
            end
            M_TX_VALID = 1'b0;

            // wait for echo to come back
            timeout = 0;
            while (!master_got_flag && timeout < 200000) begin
                @(posedge RX_CLK); timeout = timeout + 1;
            end

            if (!master_got_flag) begin
                $display("[%0t] FAIL  sent=%h  -> no echo received (timeout)", $time, data);
                fail_cnt = fail_cnt + 1;
            end
            else if (slave_got !== data) begin
                $display("[%0t] FAIL  sent=%h  slave_received=%h  (master->slave path wrong)",
                         $time, data, slave_got);
                fail_cnt = fail_cnt + 1;
            end
            else if (master_got !== data) begin
                $display("[%0t] FAIL  sent=%h  slave_received=%h  echo_received=%h  (slave->master path wrong)",
                         $time, data, slave_got, master_got);
                fail_cnt = fail_cnt + 1;
            end
            else begin
                $display("[%0t] PASS  sent=%h  slave_received=%h  echo_received=%h",
                         $time, data, slave_got, master_got);
                pass_cnt = pass_cnt + 1;
            end

            // idle gap between frames
            repeat (4*Prescale) @(posedge RX_CLK);
        end
    endtask

    // ---------------- run a set of bytes for one configuration ----------------
    task automatic run_config(input [5:0] pres, input pen, input ptyp);
        integer i;
        begin
            $display("\n=== Prescale=%0d  PAR_EN=%b  PAR_TYP=%s ===", pres, pen,
                     pen ? (ptyp ? "odd" : "even") : "n/a");
            RST = 1'b0;
            tx_half = (pres*CLK_PERIOD)/2;
            Prescale = pres; PAR_EN = pen; PAR_TYP = ptyp;
            M_TX_VALID = 0; S_TX_VALID = 0; M_TX_DATA = 0; S_TX_DATA = 0;
            slave_got_flag = 0; master_got_flag = 0;
            repeat (5) @(posedge RX_CLK);
            RST = 1'b1;
            repeat (2*pres) @(posedge RX_CLK);

            // corner cases
            send_and_check(8'h00);
            send_and_check(8'hFF);
            send_and_check(8'hA5);
            send_and_check(8'h5A);
            send_and_check(8'h01);
            send_and_check(8'h80);
            // random data
            for (i = 0; i < 8; i = i + 1)
                send_and_check($urandom_range(0,255));
        end
    endtask

    // ---------------- main ----------------
    initial begin
        $dumpfile("uart_tb.vcd");
        $dumpvars(0, UART_tb);

        run_config(6'd8,  1'b0, 1'b0);   // no parity
        run_config(6'd8,  1'b1, 1'b0);   // even parity
        run_config(6'd8,  1'b1, 1'b1);   // odd parity
        run_config(6'd16, 1'b1, 1'b0);
        run_config(6'd32, 1'b0, 1'b0);

        $display("\n==================== SUMMARY ====================");
        $display("PASSED: %0d   FAILED: %0d", pass_cnt, fail_cnt);
        if (fail_cnt == 0) $display("ALL TESTS PASSED");
        else               $display("SOME TESTS FAILED");
        $display("=================================================");
        $finish;
    end

    // global watchdog
    initial begin
        #500_000_000;
        $display("WATCHDOG TIMEOUT");
        $finish;
    end

endmodule