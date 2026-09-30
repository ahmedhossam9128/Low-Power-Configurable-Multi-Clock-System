`timescale 1ns / 1ps

module UART_TX_tb;

    // Parameters & Clock Config (200 MHz -> Period = 5ns)

    parameter CLK_PERIOD = 5.0; 

    reg        CLK_tb;
    reg        RST_tb;
    reg        PAR_EN_tb;
    reg        PAR_TYP_tb;
    reg        DATA_VALID_tb;
    reg  [7:0] P_DATA_tb;

    wire       TX_OUT_tb;
    wire       busy_tb;

    integer error_count = 0;
    integer test_case_num = 0;

    // DUT Instantiation

    UART_TX_TOP DUT (
        .CLK(CLK_tb),
        .RST(RST_tb),
        .PAR_EN(PAR_EN_tb),
        .PAR_TYP(PAR_TYP_tb),
        .DATA_VALID(DATA_VALID_tb),
        .P_DATA(P_DATA_tb),
        .TX_OUT(TX_OUT_tb),
        .busy(busy_tb)
    );

    // Clock Generation (200 MHz)

    initial begin
        CLK_tb = 1'b0;
        forever #(CLK_PERIOD / 2.0) CLK_tb = ~CLK_tb;
    end

    // Task: Reset Initialization

    task do_reset;
        begin
            RST_tb        = 1'b0; // Active-low reset
            DATA_VALID_tb = 1'b0;
            P_DATA_tb     = 8'h00;
            PAR_EN_tb     = 1'b0;
            PAR_TYP_tb    = 1'b0;
            #(CLK_PERIOD * 3);
            RST_tb        = 1'b1;
            #(CLK_PERIOD);
        end
    endtask

    // Task: Transmit & Verify Frame
   task send_and_check_frame;
        input [7:0] data;
        input       par_en;
        input       par_typ;
        input [256:1] tc_name;
        
        reg [10:0] expected_frame;
        reg [10:0] actual_frame;
        reg [10:0] mask;            // Mask bit vector to ignore unsampled bits
        reg        expected_parity;
        integer    i, frame_len;
        begin
            test_case_num = test_case_num + 1;
            
            // Calculate Golden Parity
            if (par_typ == 1'b0) 
                expected_parity = ^data;      // Even Parity
            else 
                expected_parity = ~(^data);   // Odd Parity

            // Reset vectors
            actual_frame   = 11'b0;
            expected_frame = 11'b0;

            // Drive inputs on NEGEDGE to satisfy setup timing
            PAR_EN_tb     = par_en;
            PAR_TYP_tb    = par_typ;
            P_DATA_tb     = data;
            DATA_VALID_tb = 1'b1;
            @(negedge CLK_tb)
            @(negedge CLK_tb);
            DATA_VALID_tb = 1'b0; // Pulse duration = 1 clock cycle

            frame_len = PAR_EN_tb == 1? 11 : 10;

            $display("\n[TC %0d] %s", test_case_num, tc_name);
            $display("       Data = 0x%0h | PAR_EN = %0b | PAR_TYP = %0b", data, par_en, par_typ);

            // Sample the serial frame line bit-by-bit
            for (i = 0; i < frame_len; i = i + 1) begin
                @(posedge CLK_tb);
                actual_frame[i] = TX_OUT_tb;
                
                if (busy_tb !== 1'b1) begin
                    $display("       ERROR: Busy signal dropped low at bit index %0d!", i);
                    error_count = error_count + 1;
                end
            end

            // Assemble Golden Expected Frame: [STOP] [PARITY (opt)] [DATA] [START]
            if (par_en) begin
                expected_frame = {1'b1, expected_parity, data, 1'b0};
                mask           = 11'b111_1111_1111; // 11 valid bits
            end else begin
                expected_frame = {1'b1, data, 1'b0}; // 10 valid bits (MSB unused)
                mask           = 11'b011_1111_1111; // 11 valid bits
            end

            // Fixed Comparison using bitwise Masking (Avoids variable slicing)
            if ((actual_frame & mask) === (expected_frame & mask)) begin
                $display("       PASS: Serial Frame Match -> 0b%b", actual_frame );
            end else begin
                $display("       FAIL: Mismatch!");
                $display("             Expected: 0b%b", expected_frame & mask );
                $display("             Actual:   0b%b", actual_frame & mask);
                error_count = error_count + 1;
            end
        end
    endtask

    // Task: Back-to-Back Transmission with Required 1-Cycle Busy Deassertion
    task send_back_to_back_frames;
        input [7:0] data1;
        input [7:0] data2;
        input       par_en;
        input       par_typ;
        
        reg [10:0] expected_frame1, actual_frame1;
        reg [10:0] expected_frame2, actual_frame2;
        reg        parity1, parity2;
        reg [10:0] mask;
        integer    i, frame_len;
        begin
            test_case_num = test_case_num + 1;
            $display("\n[TC %0d] Back-to-Back Transmission Check (1-Cycle Busy Drop Required)", test_case_num);
            $display("       Frame 1: Data = 0x%0h | PAR_TYP = %0b | PAR_EN = %0b", data1, par_typ, par_en);
            $display("       Frame 2: Data = 0x%0h | PAR_TYP = %0b | PAR_EN = %0b", data2, par_typ, par_en);

            // Calculate Parities
            parity1   = (par_typ == 1'b0) ? ^data1 : ~(^data1);
            parity2   = (par_typ == 1'b0) ? ^data2 : ~(^data2);
            frame_len = par_en ? 11 : 10;
            mask      = par_en ? 11'b111_1111_1111 : 11'b011_1111_1111;

            // Golden Frames (Stop Bit = 1'b1)
            expected_frame1 = par_en ? {1'b0, parity1, data1, 1'b0} : {1'b1, 1'b0, data1, 1'b0};
            expected_frame2 = par_en ? {1'b0, parity2, data2, 1'b0} : {1'b1, 1'b0, data2, 1'b0};

            // 1. Kick off Frame 1
            @(negedge CLK_tb);
            PAR_EN_tb     = par_en;
            PAR_TYP_tb    = par_typ;
            P_DATA_tb     = data1;
            DATA_VALID_tb = 1'b1;

            @(negedge CLK_tb);
            DATA_VALID_tb = 1'b0;

            // Sample Frame 1 up to (frame_len - 1)
            for (i = 0; i < frame_len - 1; i = i + 1) begin
                @(posedge CLK_tb);
                actual_frame1[i] = TX_OUT_tb;
                if (busy_tb !== 1'b1) begin
                    $display("       ERROR: Busy dropped prematurely during Frame 1 at bit %0d!", i);
                    error_count = error_count + 1;
                end
            end

            // 2. STOP Bit of Frame 1: Queue Frame 2 via DATA_VALID
            @(posedge CLK_tb);
            actual_frame1[frame_len - 1] = TX_OUT_tb;
            P_DATA_tb     = data2;
            DATA_VALID_tb = 1'b1; // Pulse DATA_VALID during Stop state
            @(negedge CLK_tb)
            DATA_VALID_tb = 1'b0;

            // Verify Frame 1 payload
            if ((actual_frame1 & mask) === (expected_frame1 & mask)) begin
                $display("       PASS: Frame 1 Match -> 0b%b", actual_frame1 & mask);
            end else begin
                $display("       FAIL: Frame 1 Mismatch! Expected: 0b%b, Actual: 0b%b", 
                         expected_frame1 & mask, actual_frame1 & mask);
                error_count = error_count + 1;
            end

            // 3. Verify Inter-Frame 1-Cycle Busy Drop
            @(posedge CLK_tb);
            if (busy_tb === 1'b0) begin
                $display("       PASS: Busy correctly dropped to 0 for inter-frame gap.");
            end else begin
                $display("       FAIL: Busy did NOT drop between back-to-back frames! (Busy=%0b)", busy_tb);
                error_count = error_count + 1;
            end

            // 4. Sample Frame 2 (Busy should go high again)
            for (i = 0; i < frame_len; i = i + 1) begin
                @(posedge CLK_tb);
                actual_frame2[i] = TX_OUT_tb;
                
                if (busy_tb !== 1'b1) begin
                    $display("       ERROR: Busy dropped prematurely during Frame 2 at bit %0d!", i);
                    error_count = error_count + 1;
                end
            end

            // Verify Frame 2 payload
            if ((actual_frame2 & mask) === (expected_frame2 & mask)) begin
                $display("       PASS: Frame 2 Match -> 0b%b", actual_frame2 & mask);
            end else begin
                $display("       FAIL: Frame 2 Mismatch! Expected: 0b%b, Actual: 0b%b", 
                         expected_frame2 & mask, actual_frame2 & mask);
                error_count = error_count + 1;
            end

            while (busy_tb == 1'b1) @(posedge CLK_tb);
            #(CLK_PERIOD * 2);
        end
    endtask

    // Task: Test Case 8 - DATA_VALID Pulsed Mid-Transmission (Rejection Check)
    task test_data_valid_rejection;
        input [7:0] initial_data;
        input [7:0] rogue_data;
        
        reg [10:0] expected_frame;
        reg [10:0] actual_frame;
        reg [10:0] mask;
        integer    i;
        begin
            test_case_num = test_case_num + 1;
            $display("\n[TC %0d] Rejection Check: Pulsing DATA_VALID mid-transmission", test_case_num);
            $display("       Initial Data = 0x%0h | Rogue Data Pulsed = 0x%0h", initial_data, rogue_data);

            actual_frame   = 11'b0;
            expected_frame = 11'b0;

            // 1. Start Primary Transmission (No Parity -> 10 bits total)
            @(negedge CLK_tb);
            PAR_EN_tb     = 1'b0;
            PAR_TYP_tb    = 1'b0;
            P_DATA_tb     = initial_data;
            DATA_VALID_tb = 1'b1;

            @(negedge CLK_tb);
            DATA_VALID_tb = 1'b0;

            // 2. Sample first 3 bits (Start Bit + Data[0] + Data[1])
            for (i = 0; i < 3; i = i + 1) begin
                @(posedge CLK_tb);
                actual_frame[i] = TX_OUT_tb;
            end

            // 3. Inject Rogue DATA_VALID pulse mid-frame (Must be ignored!)
            @(negedge CLK_tb);
            P_DATA_tb     = rogue_data; 
            DATA_VALID_tb = 1'b1;
            actual_frame[3] = TX_OUT_tb; // sample bit 3 before missing a clk cycle
            @(negedge CLK_tb);
            DATA_VALID_tb = 1'b0;

            // 4. Sample remaining 7 bits of the active frame
            for (i = 4; i < 10; i = i + 1) begin
                @(posedge CLK_tb);
                actual_frame[i] = TX_OUT_tb;
            end

            // 5. Construct Expected Golden Bitstream: {Unused(0), Stop(1), Data(8-bit), Start(0)}
            expected_frame = {1'b0, 1'b1, initial_data, 1'b0};
            mask           = 11'b011_1111_1111; // 10 valid bits

            // 6. Assertion Check
            if ((actual_frame & mask) === (expected_frame & mask)) begin
                $display("       PASS: Rogue data 0x%0h ignored! Output frame matched initial data 0x%0h.", 
                         rogue_data, initial_data);
            end else begin
                $display("       FAIL: Transmission corrupted by mid-frame DATA_VALID pulse!");
                $display("             Expected: 0b%b", expected_frame & mask);
                $display("             Actual:   0b%b", actual_frame & mask);
                error_count = error_count + 1;
            end
        end
    endtask

    // Task: Test Case 9 - Control Signals Changed Mid-Transmission (Immunity Check)
    task test_mid_frame_config_change;
        input [7:0] data;
        input       initial_par_en;
        input       initial_par_typ;
        
        reg [10:0] expected_frame;
        reg [10:0] actual_frame;
        reg [10:0] mask;
        reg        expected_parity;
        integer    i, frame_len;
        begin
            test_case_num = test_case_num + 1;
            $display("\n[TC %0d] Immunity Check: Dynamic Config change during busy state", test_case_num);
            $display("       Data = 0x%0h | Start PAR_EN = %0b | Start PAR_TYP = %0b", 
                     data, initial_par_en, initial_par_typ);

            actual_frame   = 11'b0;
            expected_frame = 11'b0;

            // Calculate Initial Expected Parity
            expected_parity = (initial_par_typ == 1'b0) ? ^data : ~(^data);
            frame_len       = initial_par_en ? 11 : 10;
            mask            = initial_par_en ? 11'b111_1111_1111 : 11'b011_1111_1111;

            // 1. Kick off frame with initial configuration
            @(negedge CLK_tb);
            PAR_EN_tb     = initial_par_en;
            PAR_TYP_tb    = initial_par_typ;
            P_DATA_tb     = data;
            DATA_VALID_tb = 1'b1;

            @(negedge CLK_tb);
            DATA_VALID_tb = 1'b0;

            // 2. Sample first 4 bits
            for (i = 0; i < 4; i = i + 1) begin
                @(posedge CLK_tb);
                actual_frame[i] = TX_OUT_tb;
            end

            // 3. Dynamically flip configuration signals mid-frame
            @(negedge CLK_tb);
            PAR_EN_tb  = ~initial_par_en;  // Toggle Parity Enable
            PAR_TYP_tb = ~initial_par_typ; // Toggle Parity Type

            // 4. Sample remaining bits of the frame
            for (i = 4; i < frame_len; i = i + 1) begin
                @(posedge CLK_tb);
                actual_frame[i] = TX_OUT_tb;
            end

            // 5. Construct Expected Frame based on original latched settings
            if (initial_par_en) begin
                expected_frame = {1'b1, expected_parity, data, 1'b0};
            end else begin
                expected_frame = {1'b0, 1'b1, data, 1'b0};
            end

            // 6. Assertion Check
            if ((actual_frame & mask) === (expected_frame & mask)) begin
                $display("       PASS: FSM maintained original latched configuration and finished full frame.");
            end else begin
                $display("       FAIL: Frame was corrupted/truncated by dynamic control line changes!");
                $display("             Expected: 0b%b", expected_frame & mask);
                $display("             Actual:   0b%b", actual_frame & mask);
                error_count = error_count + 1;
            end
        end
    endtask

    // Task: Test Case 10 - Asynchronous Reset Abort Mid-Transmission
    task test_async_reset_abort;
        input [7:0] data;
        input       par_en;
        input       par_typ;
        begin
            test_case_num = test_case_num + 1;
            $display("\n[TC %0d] Abort Check: Asserting Reset Mid-Transmission", test_case_num);
            $display("       Data = 0x%0h | PAR_EN = %0b | PAR_TYP = %0b", data, par_en, par_typ);

            // 1. Kick off transmission frame
            @(negedge CLK_tb);
            PAR_EN_tb     = par_en;
            PAR_TYP_tb    = par_typ;
            P_DATA_tb     = data;
            DATA_VALID_tb = 1'b1;

            @(negedge CLK_tb);
            DATA_VALID_tb = 1'b0;

            // 2. Allow transmission to progress into active frame
            #(CLK_PERIOD * 3);

            // 3. Assert active-low asynchronous reset mid-transmission
            RST_tb = 1'b0;
            #(CLK_PERIOD * 2);

            // 4. Verify FSM immediately drops busy and forces line to IDLE high
            if (busy_tb === 1'b0 && TX_OUT_tb === 1'b1) begin
                $display("       PASS: Asynchronous reset immediately forced FSM to IDLE state.");
            end else begin
                $display("       FAIL: FSM did not return to IDLE on Reset! Busy=%b, TX_OUT=%b", busy_tb, TX_OUT_tb);
                error_count = error_count + 1;
            end

            // 5. Deassert reset and restore stable state
            RST_tb = 1'b1;
            #(CLK_PERIOD);
        end
    endtask

    // Main Test Sequence (10 Test Cases)

    initial begin
        $display("==========================================================");
        $display("     UART TX COMPREHENSIVE TESTBENCH (10 TEST CASES)      ");
        $display("==========================================================");

        // TEST CASE 1: Reset Assertion & Idle Check

        do_reset();
        test_case_num = 1;
        $display("\n[TC 1] Reset State Verification");
        if (TX_OUT_tb === 1'b1 && busy_tb === 1'b0) begin
            $display("       PASS: TX_OUT is IDLE (1) and Busy is (0)");
        end else begin
            $display("       FAIL: TX_OUT = %b, Busy = %b (Expected 1 and 0)", TX_OUT_tb, busy_tb);
            error_count = error_count + 1;
        end


        // TEST CASE 2: Standard Transmission - Even Parity (Spec Example Data 0xA5)

        send_and_check_frame(8'hA5, 1'b1, 1'b0, "Even Parity Standard Transmission (0xA5)");

        // TEST CASE 3: Standard Transmission - Odd Parity (Spec Example Data 0xF3)

        send_and_check_frame(8'hF3, 1'b1, 1'b1, "Odd Parity Standard Transmission (0xF3)");

        // TEST CASE 4: Standard Transmission - Disabled Parity (8-bit Payload)

        send_and_check_frame(8'h3C, 1'b0, 1'b0, "No Parity Transmission (0x3C)");

        // TEST CASE 5: Corner Case - All Zeros Payload (0x00) with Even Parity

        send_and_check_frame(8'h00, 1'b1, 1'b0, "Corner Case: All Zeros (0x00) Even Parity");

        // TEST CASE 6: Corner Case - All Ones Payload (0xFF) with Odd Parity

        send_and_check_frame(8'hFF, 1'b1, 1'b1, "Corner Case: All Ones (0xFF) Odd Parity");

        // TEST CASE 7: Back-to-Back Immediate Transmissions

        $display("\n[TC 7] Back-to-Back Transmission (0x12 immediately followed by 0x34)");
        send_back_to_back_frames(8'h12, 8'h34, 1'b1, 1'b0);

        // TEST CASE 8: Rejection Check (Pulse 0x55 mid-frame while sending 0xAA)
        test_data_valid_rejection(8'hAA, 8'h55);

        // TEST CASE 9: Immunity Check (Flip PAR_EN & PAR_TYP mid-frame)
        test_mid_frame_config_change(8'hC3, 1'b1, 1'b0);

        // TEST CASE 10: Asynchronous Reset Abort Mid-Transmission
        test_async_reset_abort(8'h7E, 1'b1, 1'b0);

        // Final Test Report Summary

        $display("\n==========================================================");
        if (error_count == 0) begin
            $display("   SUCCESS: ALL 10 TEST CASES PASSED WITH 0 ERRORS!");
        end else begin
            $display("   FAIL: TEST SUITE FINISHED WITH %0d ERROR(S)", error_count);
        end
        $display("==========================================================");

        $stop;
    end
endmodule