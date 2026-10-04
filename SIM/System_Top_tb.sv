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
                     F_AND = 4'd4,  F_OR  = 4'd5,  F_NAND = 4'd6, F_NOR = 4'd7, 
                     F_XOR = 4'd8,  F_XNOR = 4'd9, F_EQ  = 4'd10, F_GT  = 4'd11,
                     F_LT = 4'd12,  F_SHR = 4'd13, F_SHL = 4'd14;

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

    // Actual TX bit time, tracked by the monitor so it stays valid when the
    // back-pressure test slows TX down (REG3 = 128).
    //
    // NOTE: only the monitor's `initial` block may use this in a delay control.
    // A bare module-level `real` used as '#(mon_bit)' inside an automatic task
    // crashes QuestaSim (SIGSEGV, "Bad handle or reference"), so the tasks use
    // the BIT_NS localparam instead.
    real      mon_bit = BIT_NS;

    // REF_CLK cycles spent with the FIFO FULL (the stall condition). The original
    // report measured "FIFO_FULL high for 0 cycles" because no test ever filled it.
    integer   fifo_full_cycles = 0;

    // Stall counter: REF_CLK cycles with the FIFO FULL.
    always @(posedge REF_CLK)
        if (DUT.FIFO_FULL) fifo_full_cycles = fifo_full_cycles + 1;

    initial begin : monitor
        reg [7:0] d;
        reg       p, s;
        integer   i;
        wait (mon_en === 1'b1);
        forever begin
            @(negedge TX_OUT);                       // start bit
            if (mon_en === 1'b1) begin
                #(mon_bit/2.0);
                if (TX_OUT === 1'b0) begin
                    for (i = 0; i < 8; i = i + 1) begin
                        #(mon_bit); d[i] = TX_OUT;
                    end
                    p = 1'b0;
                    if (cfg_par_en) begin
                        #(mon_bit); p = TX_OUT;
                    end
                    #(mon_bit); s = TX_OUT;
                    mon_data[mon_wr]   = d;
                    mon_par_ok[mon_wr] = !cfg_par_en ||
                                         (p === (cfg_par_typ ? ~(^d) : (^d)));
                    mon_stp_ok[mon_wr] = (s === 1'b1);
                    mon_wr = mon_wr + 1;
                end
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
    // All string pieces are `string` type and every value is copied into a plain
    // local before use, so $display never has to format a packed vector or a
    // function call inside its own argument list.
    task automatic expect_byte(input [7:0] exp, input string tag,
                               input [7:0] pa, input [7:0] pb, input [3:0] pf,
                               input bit msb);
        integer t;
        string  nm, half;
        begin
            nm   = fname(pf);
            half = msb ? "MSB" : "LSB";
            t = 0;
            while (mon_rd >= mon_wr && t < 400) begin
                #(BIT_NS); t = t + 1;
            end
            if (mon_rd >= mon_wr) begin
                $display("[%0t] FAIL  %s %s A=0x%h B=0x%h %s : no response (expected 0x%h)",
                         $time, tag, nm, pa, pb, half, exp);
                fail_cnt = fail_cnt + 1;
            end
            else begin
                if (mon_data[mon_rd] !== exp) begin
                    $display("[%0t] FAIL  %s %s A=0x%h B=0x%h %s : got 0x%h expected 0x%h",
                             $time, tag, nm, pa, pb, half, mon_data[mon_rd], exp);
                    fail_cnt = fail_cnt + 1;
                end
                else if (!mon_par_ok[mon_rd]) begin
                    $display("[%0t] FAIL  %s %s A=0x%h B=0x%h %s : data 0x%h ok but TX parity bit wrong",
                             $time, tag, nm, pa, pb, half, exp);
                    fail_cnt = fail_cnt + 1;
                end
                else if (!mon_stp_ok[mon_rd]) begin
                    $display("[%0t] FAIL  %s %s A=0x%h B=0x%h %s : data 0x%h ok but TX stop bit wrong",
                             $time, tag, nm, pa, pb, half, exp);
                    fail_cnt = fail_cnt + 1;
                end
                else begin
                    $display("[%0t] PASS  %s %s A=0x%h B=0x%h %s : 0x%h",
                             $time, tag, nm, pa, pb, half, exp);
                    pass_cnt = pass_cnt + 1;
                end
                mon_rd = mon_rd + 1;
            end
        end
    endtask

    // nothing should be pending on TX_OUT
    task automatic check_no_extra(input string label);
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
                F_ADD : alu_model = A16 + B16;
                F_SUB : alu_model = A16 - B16;
                F_MUL : alu_model = A16 * B16;
                F_DIV : alu_model = (b == 0) ? 16'h0000 : (A16 / B16);
                F_AND : alu_model = A16 & B16;
                F_OR  : alu_model = A16 | B16;
                F_NAND: alu_model = ~(A16 & B16);
                F_NOR : alu_model = ~(A16 | B16); 
                F_XOR : alu_model = A16 ^ B16;
                F_XNOR: alu_model = ~(A16 ^ B16);
                F_EQ  : alu_model = (a == b) ? 16'd1 : 16'd0;
                F_GT  : alu_model = (a >  b) ? 16'd2 : 16'd0;
                F_LT  : alu_model = (a <  b) ? 16'd3 : 16'd0;
                F_SHR : alu_model = A16 >> 1;
                F_SHL : alu_model = A16 << 1;
                default:alu_model = 16'h0000;
            endcase
        end
    endfunction

    // Returns a real `string` (NUL-terminated, well-defined %s) rather than a
    // packed bit vector. Formatting a packed vector with %0s relies on the tool
    // walking raw bytes, which is what produced the stale "ADD" names.
    function automatic string fname(input [3:0] f);
        case (f)
            F_ADD : fname = "ADD";  F_SUB : fname = "SUB";  F_MUL : fname = "MUL";
            F_DIV : fname = "DIV";  F_AND : fname = "AND";  F_OR  : fname = "OR";
            F_NAND: fname = "NAND"; F_NOR : fname = "NOR";  F_XOR : fname = "XOR";
            F_XNOR: fname = "XNOR"; F_EQ  : fname = "EQ";   F_GT  : fname = "GT";
            F_LT  : fname = "LT";   F_SHR : fname = "SHR";  F_SHL : fname = "SHL";
            default: fname = "?";
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

    task automatic rf_read_check(input [7:0] addr, input [7:0] exp);
        begin
            send_byte(RF_RD_CMD);
            send_byte(addr);
            expect_byte(exp, "RD", addr, 8'h00, 4'h0, 1'b0);
        end
    endtask

    task automatic alu_with_operands(input [7:0] a, input [7:0] b, input [3:0] f);
        reg [15:0] exp;
        begin
            exp = alu_model(a, b, f);
            send_byte(ALU_OP_CMD);
            send_byte(a);
            send_byte(b);
            send_byte({4'h0, f});
            expect_byte(exp[7:0],  "CC", a, b, f, 1'b0);
            expect_byte(exp[15:8], "CC", a, b, f, 1'b1);
        end
    endtask

    task automatic alu_no_operand(input [7:0] a, input [7:0] b, input [3:0] f);
        reg [15:0] exp;
        begin
            exp = alu_model(a, b, f);          // operands already in REG0/REG1
            send_byte(ALU_NOP_CMD);
            send_byte({4'h0, f});
            expect_byte(exp[7:0],  "DD", a, b, f, 1'b0);
            expect_byte(exp[15:8], "DD", a, b, f, 1'b1);
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

    // ---------------------FIFO-full back-pressure---------------------
    //   1. report recorded as "FIFO_FULL high for 0 cycles";
    //   2. every queued byte still comes back correct
    task automatic bp_test();
        integer        k, t, full_before;
        reg [3:0]      fl [0:5];
        reg [15:0]     exp;
        begin
            $display("");
            $display("================ FIFO-full back-pressure ================");
            $display("Slowing TX (REG3 = 128) so the FIFO fills faster than it drains.");

            // 0. start from a drained FIFO and an empty monitor queue
            t = 0;
            while (((DUT.FIFO_EMPTY !== 1'b1) || (mon_rd != mon_wr)) && (t < 300)) begin
                #(BIT_NS); t = t + 1;
            end
            if ((DUT.FIFO_EMPTY !== 1'b1) || (mon_rd != mon_wr)) begin
                $display("[%0t] FAIL  BP: not drained before test (EMPTY=%b mon_rd=%0d mon_wr=%0d)",
                         $time, DUT.FIFO_EMPTY, mon_rd, mon_wr);
                fail_cnt = fail_cnt + 1;
            end

            full_before = fifo_full_cycles;

            // 1. slow the transmitter: TX_CLK = UART_CLK / REG3
            rf_write(8'h03, 8'd128);
            mon_bit = (2.0 * UART_HALF) * 128.0;
            #(BIT_NS * 8);

            // 2. operands for 0xDD (no-operand ALU) come from REG0 / REG1
            rf_write(8'h00, 8'h7A);
            rf_write(8'h01, 8'h0C);
            #(BIT_NS * 8);

            // 3. queue 6 ALU results = 12 bytes into an 8-deep FIFO
            fl[0] = F_ADD; fl[1] = F_SUB; fl[2] = F_AND;
            fl[3] = F_OR;  fl[4] = F_XOR; fl[5] = F_SHL;
            for (k = 0; k < 6; k = k + 1) begin
                send_byte(ALU_NOP_CMD);
                send_byte({4'h0, fl[k]});
            end

            // 4. the FIFO must actually have gone FULL
            #(BIT_NS * 4);
            if (fifo_full_cycles > full_before) begin
                $display("[%0t] PASS  BP back-pressure : FIFO went FULL (%0d REF_CLK cycles; was %0d)",
                         $time, fifo_full_cycles - full_before, full_before);
                pass_cnt = pass_cnt + 1;
            end
            else begin
                $display("[%0t] FAIL  BP back-pressure : FIFO never went FULL (%0d cycles) - stall not reached",
                         $time, fifo_full_cycles);
                fail_cnt = fail_cnt + 1;
            end

            // 5. every queued byte must come back, in order
            for (k = 0; k < 6; k = k + 1) begin
                exp = alu_model(8'h7A, 8'h0C, fl[k]);
                expect_byte(exp[7:0],  "BP", 8'h7A, 8'h0C, fl[k], 1'b0);
                expect_byte(exp[15:8], "BP", 8'h7A, 8'h0C, fl[k], 1'b1);
            end

            // 6. the 12 expect_byte calls above each waited for their byte, so TX
            //    has drained; this is just margin before restoring REG3 = 32.
            #(BIT_NS * 20);
            rf_write(8'h03, 8'd32);
            mon_bit = BIT_NS;
            #(BIT_NS * 8);
            check_no_extra("BP: TX idle after drain");
        end
    endtask

    // ------------------------------------------------------------ one sweep
    task automatic run_prescale(input integer pres);
        integer k, v;
        reg [7:0] a, b;
        reg [7:0] cfg;
        reg [3:0] flist [0:14];
        reg [7:0] rf_addr [0:3];
        reg [7:0] rf_data [0:3];
        begin
            flist[0] =F_ADD; flist[1] = F_SUB ; flist[2] = F_MUL; flist[3] =F_DIV; flist[4] =F_AND;
            flist[5] =F_OR ; flist[6] = F_NAND; flist[7] = F_NOR; flist[8] =F_XOR; flist[9] =F_XNOR; 
            flist[10]=F_EQ ; flist[11]= F_GT  ; flist[12]= F_LT ; flist[13]=F_SHR; flist[14]=F_SHL;

            $display("\n================ Prescale = %0d  (PAR_EN=%0d PAR_TYP=%0d) ================",
                     pres, TGT_PAR_EN, TGT_PAR_TYP);

            // 1+2. configuration and read-back
            configure(pres, TGT_PAR_EN, TGT_PAR_TYP);
            check_clocks(pres);
            cfg = {pres[5:0], TGT_PAR_TYP[0], TGT_PAR_EN[0]};
            rf_read_check(8'h02, cfg);
            rf_read_check(8'h03, 8'd32);

            // 3. register file write / read (addresses 0x4 .. 0xF)
            rf_addr[0]=8'h04; rf_addr[1]=8'h07; rf_addr[2]=8'h0B; rf_addr[3]=8'h0F;
            rf_data[0]=8'hA5 ^ pres[7:0]; rf_data[1]=8'h3C ^ pres[7:0];
            rf_data[2]=8'hFF;             rf_data[3]=8'h01 + pres[7:0];
            for (k = 0; k < 4; k = k + 1) rf_write(rf_addr[k], rf_data[k]);
            check_no_extra("RF writes: no response");
            for (k = 0; k < 4; k = k + 1) begin
                rf_read_check(rf_addr[k], rf_data[k]);
            end

            // 4. ALU with operands (0xCC)
            if(pres == 32)
                for (k = 0; k < 15; k = k + 1) begin
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
        bp_test();
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