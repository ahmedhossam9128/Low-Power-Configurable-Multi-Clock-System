`timescale 1ns/1ps
module System_Top_tb;

    // ------------------------------------------------------------------ clocks
    localparam real REF_HALF  = 5.0;                       // 100 MHz
    localparam real UART_HALF = 1.0e9 / 3686400.0 / 2.0;    // 3.6864 MHz
    localparam real BIT_NS    = 32.0 * 2.0 * UART_HALF;     // 115200 baud

    reg REF_CLK = 0, UART_CLK = 0;
    always #(REF_HALF)  REF_CLK  = ~REF_CLK;
    always #(UART_HALF) UART_CLK = ~UART_CLK;

    reg  RST;
    reg  RX_IN;
    wire TX_OUT;
    wire RX_D_VALID;

    System_Top DUT (
        .REF_CLK(REF_CLK), .UART_CLK(UART_CLK), .RST(RST),
        .RX_IN(RX_IN), .TX_OUT(TX_OUT), .RX_D_VALID(RX_D_VALID)
    );

    // ------------------------------------------------------------ command codes
    localparam [7:0] RF_WR_CMD = 8'hAA, RF_RD_CMD = 8'hBB,
                     ALU_OP_CMD = 8'hCC, ALU_NOP_CMD = 8'hDD;

    // ALU function codes (taken from ALU.v)
    localparam [3:0] F_ADD = 4'd0,  F_SUB = 4'd1,  F_MUL = 4'd2,  F_DIV = 4'd3,
                     F_AND = 4'd4,  F_OR  = 4'd5,  F_XOR = 4'd8,
                     F_EQ  = 4'd10, F_GT  = 4'd11, F_SHR = 4'd13, F_SHL = 4'd14;

    // ------------------------------------------------------- runtime settings
    integer TGT_PAR_EN  = 1;
    integer TGT_PAR_TYP = 0;
    integer quick       = 0;

    // Parity config currently active in the DUT (reset default: enabled, even)
    reg cfg_par_en  = 1'b1;
    reg cfg_par_typ = 1'b0;

    integer pass_cnt = 0, fail_cnt = 0;

    // ------------------------------------------------------ TX_OUT monitor
    reg [7:0] mon_data   [0:4095];
    reg       mon_par_ok [0:4095];
    reg       mon_stp_ok [0:4095];
    integer   mon_wr = 0, mon_rd = 0;
    reg       mon_en = 0;

    initial begin : monitor
        reg [7:0] d;
        reg       p, s;
        integer   i;
        wait (mon_en === 1'b1);
        forever begin
            @(negedge TX_OUT);                       // start bit
            #(BIT_NS/2.0);
            if (TX_OUT === 1'b0) begin
                for (i = 0; i < 8; i = i + 1) begin
                    #(BIT_NS); d[i] = TX_OUT;
                end
                p = 1'b0;
                if (cfg_par_en) begin
                    #(BIT_NS); p = TX_OUT;
                end
                #(BIT_NS); s = TX_OUT;
                mon_data[mon_wr]   = d;
                mon_par_ok[mon_wr] = !cfg_par_en ||
                                     (p === (cfg_par_typ ? ~(^d) : (^d)));
                mon_stp_ok[mon_wr] = (s === 1'b1);
                mon_wr = mon_wr + 1;
            end
        end
    end

    // -------------------------------------------------------------- master TX
    localparam GAP_BITS = 1;

    task automatic send_byte(input [7:0] b);
        integer i;
        reg     par;
        begin
            RX_IN = 1'b0;  #(BIT_NS);                       // start
            for (i = 0; i < 8; i = i + 1) begin
                RX_IN = b[i]; #(BIT_NS);                    // data, LSB first
            end
            if (cfg_par_en) begin
                par   = cfg_par_typ ? ~(^b) : (^b);
                RX_IN = par;  #(BIT_NS);                    // parity
            end
            RX_IN = 1'b1;  #(BIT_NS);                       // stop
            #(BIT_NS * GAP_BITS);                           // idle gap
        end
    endtask

    // ---------------------------------------------------------- response check
    task automatic expect_byte(input [7:0] exp, input [8*28-1:0] label);
        integer t;
        begin
            t = 0;
            while (mon_rd >= mon_wr && t < 100) begin
                #(BIT_NS); t = t + 1;
            end
            if (mon_rd >= mon_wr) begin
                $display("[%0t] FAIL  %0s : no response (expected 0x%h)", $time, label, exp);
                fail_cnt = fail_cnt + 1;
            end
            else begin
                if (mon_data[mon_rd] !== exp) begin
                    $display("[%0t] FAIL  %0s : got 0x%h expected 0x%h", $time, label,
                             mon_data[mon_rd], exp);
                    fail_cnt = fail_cnt + 1;
                end
                else if (!mon_par_ok[mon_rd]) begin
                    $display("[%0t] FAIL  %0s : data 0x%h ok but TX parity bit wrong", $time, label, exp);
                    fail_cnt = fail_cnt + 1;
                end
                else if (!mon_stp_ok[mon_rd]) begin
                    $display("[%0t] FAIL  %0s : data 0x%h ok but TX stop bit wrong", $time, label, exp);
                    fail_cnt = fail_cnt + 1;
                end
                else begin
                    $display("[%0t] PASS  %0s : 0x%h", $time, label, exp);
                    pass_cnt = pass_cnt + 1;
                end
                mon_rd = mon_rd + 1;
            end
        end
    endtask

    // nothing should be pending on TX_OUT
    task automatic check_no_extra(input [8*28-1:0] label);
        begin
            #(BIT_NS * 25);
            if (mon_rd !== mon_wr) begin
                $display("[%0t] FAIL  %0s : %0d unexpected byte(s) on TX_OUT (first = 0x%h)",
                         $time, label, mon_wr - mon_rd, mon_data[mon_rd]);
                fail_cnt = fail_cnt + 1;
                mon_rd = mon_wr;
            end
            else begin
                $display("[%0t] PASS  %0s : no unexpected TX traffic", $time, label);
                pass_cnt = pass_cnt + 1;
            end
        end
    endtask

    // ------------------------------------------------------------ ALU golden model
    function automatic [15:0] alu_model(input [7:0] a, input [7:0] b, input [3:0] f);
        reg [15:0] A16, B16;
        begin
            A16 = {8'h00, a};  B16 = {8'h00, b};
            case (f)
                F_ADD: alu_model = A16 + B16;
                F_SUB: alu_model = A16 - B16;
                F_MUL: alu_model = A16 * B16;
                F_DIV: alu_model = (b == 0) ? 16'h0000 : (A16 / B16);
                F_AND: alu_model = A16 & B16;
                F_OR : alu_model = A16 | B16;
                F_XOR: alu_model = A16 ^ B16;
                F_EQ : alu_model = (a == b) ? 16'd1 : 16'd0;
                F_GT : alu_model = (a >  b) ? 16'd2 : 16'd0;
                F_SHR: alu_model = A16 >> 1;
                F_SHL: alu_model = A16 << 1;
                default: alu_model = 16'h0000;
            endcase
        end
    endfunction

    function automatic [8*4-1:0] fname(input [3:0] f);
        case (f)
            F_ADD: fname = "ADD "; F_SUB: fname = "SUB "; F_MUL: fname = "MUL ";
            F_DIV: fname = "DIV "; F_AND: fname = "AND "; F_OR : fname = "OR  ";
            F_XOR: fname = "XOR "; F_EQ : fname = "EQ  "; F_GT : fname = "GT  ";
            F_SHR: fname = "SHR "; F_SHL: fname = "SHL "; default: fname = "??? ";
        endcase
    endfunction

    // ---------------------------------------------------------- command tasks
    task automatic rf_write(input [7:0] addr, input [7:0] data);
        begin
            send_byte(RF_WR_CMD);
            send_byte(addr);
            send_byte(data);
        end
    endtask

    task automatic rf_read_check(input [7:0] addr, input [7:0] exp, input [8*28-1:0] label);
        begin
            send_byte(RF_RD_CMD);
            send_byte(addr);
            expect_byte(exp, label);
        end
    endtask

    task automatic alu_with_operands(input [7:0] a, input [7:0] b, input [3:0] f);
        reg [15:0] exp;
        reg [8*28-1:0] lbl;
        begin
            exp = alu_model(a, b, f);
            send_byte(ALU_OP_CMD);
            send_byte(a);
            send_byte(b);
            send_byte({4'h0, f});
            $sformat(lbl, "CC %0s A=0x%h B=0x%h LSB", fname(f), a, b);
            expect_byte(exp[7:0], lbl);
            $sformat(lbl, "CC %0s A=0x%h B=0x%h MSB", fname(f), a, b);
            expect_byte(exp[15:8], lbl);
        end
    endtask

    task automatic alu_no_operand(input [7:0] a, input [7:0] b, input [3:0] f);
        reg [15:0] exp;
        reg [8*28-1:0] lbl;
        begin
            exp = alu_model(a, b, f);          // operands already in REG0/REG1
            send_byte(ALU_NOP_CMD);
            send_byte({4'h0, f});
            $sformat(lbl, "DD %0s A=0x%h B=0x%h LSB", fname(f), a, b);
            expect_byte(exp[7:0], lbl);
            $sformat(lbl, "DD %0s A=0x%h B=0x%h MSB", fname(f), a, b);
            expect_byte(exp[15:8], lbl);
        end
    endtask

    // Configuration through RegFile writes to 0x3 (div ratio) and 0x2 (UART cfg)
    task automatic configure(input integer pres, input integer pen, input integer ptyp);
        reg [7:0] cfg;
        begin
            cfg = {pres[5:0], ptyp[0], pen[0]};
            rf_write(8'h03, 8'd32);           // TX div ratio: 32 -> 115200 baud
            rf_write(8'h02, cfg);             // {Prescale, PAR_TYP, PAR_EN}
            cfg_par_en  = pen[0];             // DUT now uses the new parity setting
            cfg_par_typ = ptyp[0];
            #(BIT_NS * 4);                    // let the RX clock divider settle
        end
    endtask

    // Measure the real RX_CLK / TX_CLK periods inside the DUT after configuration
    task automatic check_clocks(input integer pres);
        realtime t0, t1;
        real exp_rx, exp_tx;
        begin
            exp_rx = (2.0 * UART_HALF) * (32 / pres);      // RX div = 32/Prescale
            exp_tx = (2.0 * UART_HALF) * 32.0;             // TX div = REG3 = 32
            @(posedge DUT.RX_CLK); t0 = $realtime;
            @(posedge DUT.RX_CLK); t1 = $realtime;
            if ((t1 - t0 > exp_rx - 1.0) && (t1 - t0 < exp_rx + 1.0)) begin
                $display("[%0t] PASS  RX_CLK period %0.1f ns (Prescale %0d -> UART_CLK/%0d)",
                         $time, t1 - t0, pres, 32 / pres);
                pass_cnt = pass_cnt + 1;
            end else begin
                $display("[%0t] FAIL  RX_CLK period %0.1f ns, expected %0.1f ns", $time, t1 - t0, exp_rx);
                fail_cnt = fail_cnt + 1;
            end
            @(posedge DUT.TX_CLK); t0 = $realtime;
            @(posedge DUT.TX_CLK); t1 = $realtime;
            if ((t1 - t0 > exp_tx - 1.0) && (t1 - t0 < exp_tx + 1.0)) begin
                $display("[%0t] PASS  TX_CLK period %0.1f ns (= 1 bit @ 115200 baud)", $time, t1 - t0);
                pass_cnt = pass_cnt + 1;
            end else begin
                $display("[%0t] FAIL  TX_CLK period %0.1f ns, expected %0.1f ns", $time, t1 - t0, exp_tx);
                fail_cnt = fail_cnt + 1;
            end
        end
    endtask

    // ------------------------------------------------------------ one sweep
    task automatic run_prescale(input integer pres);
        integer k, v;
        reg [7:0] a, b;
        reg [7:0] cfg;
        reg [3:0] flist [0:10];
        reg [7:0] rf_addr [0:3];
        reg [7:0] rf_data [0:3];
        reg [8*28-1:0] lbl;
        begin
            flist[0]=F_ADD; flist[1]=F_SUB; flist[2]=F_MUL; flist[3]=F_DIV;
            flist[4]=F_AND; flist[5]=F_OR;  flist[6]=F_XOR; flist[7]=F_EQ;
            flist[8]=F_GT;  flist[9]=F_SHR; flist[10]=F_SHL;

            $display("\n================ Prescale = %0d  (PAR_EN=%0d PAR_TYP=%0d) ================",
                     pres, TGT_PAR_EN, TGT_PAR_TYP);

            // 1+2. configuration and read-back
            configure(pres, TGT_PAR_EN, TGT_PAR_TYP);
            check_clocks(pres);
            cfg = {pres[5:0], TGT_PAR_TYP[0], TGT_PAR_EN[0]};
            rf_read_check(8'h02, cfg,  "RD REG2 (UART cfg)");
            rf_read_check(8'h03, 8'd32, "RD REG3 (div ratio)");

            // 3. register file write / read (addresses 0x4 .. 0xF)
            rf_addr[0]=8'h04; rf_addr[1]=8'h07; rf_addr[2]=8'h0B; rf_addr[3]=8'h0F;
            rf_data[0]=8'hA5 ^ pres[7:0]; rf_data[1]=8'h3C ^ pres[7:0];
            rf_data[2]=8'hFF;             rf_data[3]=8'h01 + pres[7:0];
            for (k = 0; k < 4; k = k + 1) rf_write(rf_addr[k], rf_data[k]);
            check_no_extra("RF writes: no response");
            for (k = 0; k < 4; k = k + 1) begin
                $sformat(lbl, "RD RF[0x%h]", rf_addr[k]);
                rf_read_check(rf_addr[k], rf_data[k], lbl);
            end

            // 4. ALU with operands (0xCC)
            for (k = 0; k < 11; k = k + 1) begin
                // fixed vector (b != 0, a > b so SUB / DIV are unambiguous)
                a = 8'd200 - k;  b = 8'd7 + k;
                alu_with_operands(a, b, flist[k]);
                if (!quick) begin
                    a = $urandom_range(1,255);  b = $urandom_range(1,255);
                    alu_with_operands(a, b, flist[k]);
                end
            end
            // corner cases
            alu_with_operands(8'd55, 8'd55, F_EQ);      // equal
            alu_with_operands(8'd255, 8'd255, F_MUL);   // max product
            alu_with_operands(8'd10,  8'd0,  F_DIV);    // divide by zero

            // 5. ALU with no operand (0xDD): operands come from REG0 / REG1
            rf_write(8'h00, 8'd90 + pres[7:0]);
            rf_write(8'h01, 8'd12);
            check_no_extra("REG0/REG1 writes: no resp");
            a = 8'd90 + pres[7:0];  b = 8'd12;
            alu_no_operand(a, b, F_ADD);
            alu_no_operand(a, b, F_SUB);
            alu_no_operand(a, b, F_AND);
            alu_no_operand(a, b, F_SHL);
            alu_no_operand(a, b, F_GT);
            // and operands left over from a previous 0xCC command must persist
            alu_with_operands(8'd33, 8'd3, F_DIV);
            alu_no_operand(8'd33, 8'd3, F_MUL);

            // 6. nothing else on the line
            check_no_extra("end of sweep: TX idle");
        end
    endtask

    // ------------------------------------------------------------------ main
    initial begin
        if ($test$plusargs("QUICK")) quick = 1;
        if ($value$plusargs("PAR_EN=%d",  TGT_PAR_EN))  ;
        if ($value$plusargs("PAR_TYP=%d", TGT_PAR_TYP)) ;
        if ($test$plusargs("DUMP")) begin
            $dumpfile("System_Top_tb.vcd");
            $dumpvars(0, System_Top_tb);
        end

        RST   = 1'b0;
        RX_IN = 1'b1;
        #200;
        RST   = 1'b1;
        #(BIT_NS * 3);
        mon_en = 1'b1;
        #(BIT_NS * 2);

        run_prescale(32);
        run_prescale(16);
        run_prescale(8);

        $display("\n==================== SUMMARY ====================");
        $display("PASSED: %0d   FAILED: %0d", pass_cnt, fail_cnt);
        if (fail_cnt == 0) $display("ALL TESTS PASSED");
        else               $display("SOME TESTS FAILED");
        $display("=================================================");
        $stop;
    end

    // watchdog (~120 ms of simulated time)
    initial begin
        #120_000_000;
        $display("WATCHDOG TIMEOUT  (passed=%0d failed=%0d)", pass_cnt, fail_cnt);
        $stop;
    end

endmodule