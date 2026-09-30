`timescale 1ns / 1ps

module UART_RX_tb;

    real CLK_PER = 1085.06; // Default for Prescale = 8

    reg        CLK;
    reg        RST;
    reg        RX_IN;
    reg  [5:0] Prescale;
    reg        PAR_EN;
    reg        PAR_TYP;
    wire [7:0] P_DATA;
    wire       data_valid;
    wire       Parity_Error;
    wire       Stop_Error;

    integer test_num = 0;
    integer pass_count = 0;
    integer fail_count = 0;
    reg [256*8-1:0] test_name;

    UART_RX DUT (
        .CLK          (CLK),
        .RST          (RST),
        .RX_IN        (RX_IN),
        .Prescale     (Prescale),
        .PAR_EN       (PAR_EN),
        .PAR_TYP      (PAR_TYP),
        .P_DATA       (P_DATA),
        .data_valid   (data_valid)
    );

assign Parity_Error = DUT.u_Parity_Checker.par_err;
assign Stop_Error = DUT.u_Stop_Checker.stp_err;

    // Clock Generation
    initial CLK = 0;
    always #(CLK_PER/2.0) CLK = ~CLK;

    // Task to Send Frame synced to Clock Negedges
    task send_uart_frame;
        input [7:0] data_byte;
        input       par_enable;
        input       par_type;
        input       inject_par_err;
        input       inject_stp_err;
        
        integer i, k;
        reg calculated_parity;
        
        begin
           
            calculated_parity = (par_type == 1'b0) ? ^data_byte : ~(^data_byte);

            // 1. Start Bit
            @(negedge CLK);
            RX_IN = 1'b0;
            repeat(Prescale) @(negedge CLK);

            // 2. Data Bits
            for (i = 0; i < 8; i = i + 1) begin
                RX_IN = data_byte[i];
                repeat(Prescale) @(negedge CLK);
            end

            // 3. Parity Bit
            if (par_enable) begin
                RX_IN = inject_par_err ? ~calculated_parity : calculated_parity;
                repeat(Prescale) @(negedge CLK);
            end

            // 4. Stop Bit
            RX_IN = inject_stp_err ? 1'b0 : 1'b1;
            repeat(Prescale) @(negedge CLK);
            
            // Allow extra margin for FSM processing (line returns to idle-high,
            // as a real UART line would, even after a bad stop bit)
            RX_IN = 1'b1;
            repeat(Prescale) @(negedge CLK);
        end
    endtask

    // Check Task
    task check_results;
        input [7:0] exp_data;
        input       exp_valid;
        input       exp_par_err;
        input       exp_stp_err;
        
        begin
            if ((P_DATA === exp_data || !exp_valid) && 
                (data_valid === exp_valid) && 
                (Parity_Error === exp_par_err) && 
                (Stop_Error === exp_stp_err)) begin
                
                $display("[PASS] TEST %0d: \"%0s\"\n       INPUTS : Prescale=%0d | PAR_EN=%b | PAR_TYP=%b | Frame Data=0x%0h\n       OUTPUTS: P_DATA=0x%0h | Valid=%b | ParErr=%b | StpErr=%b\n", 
                         test_num, test_name, Prescale, PAR_EN, PAR_TYP, exp_data, P_DATA, data_valid, Parity_Error, Stop_Error);
                pass_count = pass_count + 1;
            end else begin
                $display("[FAIL] TEST %0d: \"%0s\"\n       INPUTS  : Prescale=%0d | PAR_EN=%b | PAR_TYP=%b | Frame Data=0x%0h\n       EXPECTED: P_DATA=0x%0h | Valid=%b | ParErr=%b | StpErr=%b\n       GOT     : P_DATA=0x%0h | Valid=%b | ParErr=%b | StpErr=%b\n", 
                         test_num, test_name, Prescale, PAR_EN, PAR_TYP, exp_data, exp_data, exp_valid, exp_par_err, exp_stp_err, P_DATA, data_valid, Parity_Error, Stop_Error);
                fail_count = fail_count + 1;
            end
        end
    endtask

    initial begin
        CLK      = 1'b0;
        RST      = 1'b0;
        RX_IN    = 1'b1;
        Prescale = 6'd8;
        PAR_EN   = 1'b0;
        PAR_TYP  = 1'b0;

        // Reset Pulse
        #(CLK_PER * 3);
        RST = 1'b1; // Activate Reset
        // TEST 1
        test_num  = 1;
        test_name = "Prescale 8, Even Parity, Valid Frame (0xA5)";
        Prescale  = 6'd8; CLK_PER = 1085.06; PAR_EN = 1'b1; PAR_TYP = 1'b0;
        send_uart_frame(8'hA5, PAR_EN, PAR_TYP, 1'b0, 1'b0);
        check_results(8'hA5, 1'b1, 1'b0, 1'b0);

        // TEST 2
        test_num  = 2;
        test_name = "Prescale 16, Odd Parity, Valid Frame (0x3C)";
        Prescale  = 6'd16; CLK_PER = 542.54; PAR_EN = 1'b1; PAR_TYP = 1'b1;
        send_uart_frame(8'h3C, PAR_EN, PAR_TYP, 1'b0, 1'b0);
        check_results(8'h3C, 1'b1, 1'b0, 1'b0);

        // TEST 3
        test_num  = 3;
        test_name = "Prescale 32, Parity Disabled, Valid Frame (0xF3)";
        Prescale  = 6'd32; CLK_PER = 271.26; PAR_EN = 1'b0; PAR_TYP = 1'b0;
        send_uart_frame(8'hF3, PAR_EN, PAR_TYP, 1'b0, 1'b0);
        check_results(8'hF3, 1'b1, 1'b0, 1'b0);

        // Reset to Prescale 8
        Prescale = 6'd8; CLK_PER = 1085.06;

        // TEST 4 Frame 1
        test_num  = 4;
        test_name = "Back-to-Back Consecutive Frames (Frame 1: 0x12)";
        PAR_EN    = 1'b1; PAR_TYP = 1'b0;
        send_uart_frame(8'h12, PAR_EN, PAR_TYP, 1'b0, 1'b0);
        check_results(8'h12, 1'b1, 1'b0, 1'b0);

        // TEST 4 Frame 2
        test_name = "Back-to-Back Consecutive Frames (Frame 2: 0x34)";
        send_uart_frame(8'h34, PAR_EN, PAR_TYP, 1'b0, 1'b0);
        send_uart_frame(8'h34, PAR_EN, PAR_TYP, 1'b0, 1'b0);
        check_results(8'h34, 1'b1, 1'b0, 1'b0);

        // TEST 5
        test_num  = 5;
        test_name = "Parity Error Injection (0x55)";
        PAR_EN    = 1'b1; PAR_TYP = 1'b0;
        send_uart_frame(8'h55, PAR_EN, PAR_TYP, 1'b1, 1'b0);
        check_results(8'h55, 1'b0, 1'b1, 1'b0);

        // TEST 6
        test_num  = 6;
        test_name = "Stop Bit Error Injection (0xAA)";
        PAR_EN    = 1'b1; PAR_TYP = 1'b0;
        send_uart_frame(8'hAA, PAR_EN, PAR_TYP, 1'b0, 1'b1);
        check_results(8'hAA, 1'b0, 1'b0, 1'b1);

        // TEST 7
        test_num  = 7;
        test_name = "Start Bit Glitch Filtering (data sent after glitch must NOT be received)";
        Prescale  = 6'd8; CLK_PER = 1085.06; PAR_EN = 1'b1; PAR_TYP = 1'b0;

        begin : test7_block
            reg [7:0] pdata_before;
            reg [7:0] data_byte7;
            reg       start_glitch_seen;
            integer   i;

            pdata_before  = P_DATA;
            data_byte7    = 8'hFF;                 
            @(negedge CLK);
            RX_IN = 1'b0;
            repeat(2) @(negedge CLK);
            RX_IN = 1'b1;
            repeat(Prescale - 2) @(negedge CLK);

            for (i = 0; i < 8; i = i + 1) begin
                RX_IN = data_byte7[i];
                repeat(Prescale) @(negedge CLK);
            end

            RX_IN = 1'b1; // stop-bit-shaped period
            repeat(Prescale) @(negedge CLK);
            repeat(Prescale) @(negedge CLK); // margin

            start_glitch_seen = DUT.u_Start_Checker.start_glitch;

            if (start_glitch_seen           === 1'b1 &&
                P_DATA                      === pdata_before &&
                data_valid                  === 1'b0 &&
                Stop_Error   === 1'b0 &&
                Parity_Error === 1'b0) begin
                $display("[PASS] TEST %0d: \"%0s\"\n       INPUTS :Frame Data=0x%0h (driven after glitch) | Prescale=%0d | PAR_EN=%b | PAR_TYP=%b\n       OUTPUTS: P_DATA=0x%0h (unchanged) | Valid=%b | start_glitch=%b | par_err=%b | stp_err=%b\n",
                         test_num, test_name,data_byte7 , Prescale, PAR_EN, PAR_TYP,P_DATA ,
                         data_valid, start_glitch_seen,
                         Parity_Error, Stop_Error);
                pass_count = pass_count + 1;
            end else begin
                $display("[FAIL] TEST %0d: \"%0s\"\n       EXPECTED: P_DATA=0x%0h (unchanged) | Valid=0 | start_glitch=1 | par_err=0 | stp_err=0\n       GOT     : P_DATA=0x%0h | start_glitch=%b | Valid=%b | par_err=%b | stp_err=%b\n",
                         test_num, test_name, pdata_before,
                         start_glitch_seen, P_DATA, data_valid,
                         Parity_Error, Stop_Error);
                fail_count = fail_count + 1;
            end
        end

        $display("=======================================================");
        $display(" SIMULATION SUMMARY: %0d PASSED, %0d FAILED", pass_count, fail_count);
        $display("=======================================================\n");
        $stop;
    end

endmodule