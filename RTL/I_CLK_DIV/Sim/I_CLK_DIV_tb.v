`timescale 1ns/1ps

module I_CLK_DIV_tb;

    // Testbench Inputs
    reg        i_ref_clk_tb;
    reg        i_rst_n_tb;
    reg        i_clk_en_tb;
    reg  [7:0] i_div_ratio_tb;

    // Testbench Outputs
    wire       o_div_clk_tb;

    // Tracking Counters
    integer test_num;
    integer pass_count;
    integer fail_count;
    integer period_idx;

    // Time measurement variables
    time start_time;
    time measured_period;
    time expected_period;

    localparam CLK_PERIOD = 10; // 100 MHz Reference Clock (10ns Period)

    // Instantiate Design Under Test (DUT)
    I_CLK_DIV DUT (
        .i_ref_clk   (i_ref_clk_tb),
        .i_rst_n     (i_rst_n_tb),
        .i_clk_en    (i_clk_en_tb),
        .i_div_ratio (i_div_ratio_tb),
        .o_div_clk   (o_div_clk_tb)
    );

    // Reference Clock Generator
    always #(CLK_PERIOD / 2) i_ref_clk_tb = ~i_ref_clk_tb;

    // Task: Apply Active-Low Reset
    task reset_dut;
        begin
            i_rst_n_tb = 1'b0;
            #(CLK_PERIOD * 2);
            i_rst_n_tb = 1'b1;
            #(CLK_PERIOD * 2);
        end
    endtask

    // Task: Measure and Verify Output Clock Periods using $time
    task check_division_ratio;
        input [7:0] exp_ratio;
        input [31:0] num_periods;
        reg [1:0] test_failed;
        begin
            test_failed = 1'b0;
            expected_period = CLK_PERIOD * exp_ratio;

            // Align to first rising edge
            @(posedge o_div_clk_tb);

            // Measure requested number of periods
            for (period_idx = 1; period_idx <= num_periods; period_idx = period_idx + 1) begin
                start_time = $time;
                @(posedge o_div_clk_tb);
                measured_period = $time - start_time;

                if (measured_period != expected_period) begin
                    $display("[FAIL] TEST %0d | Period %0d/%0d | Expected Period: %0t ns | Got: %0t ns", 
                             test_num, period_idx, num_periods, expected_period, measured_period);
                    test_failed = 1'b1;
                end
            end

            if (!test_failed) begin
                $display("[PASS] TEST %0d | Division Ratio: %0d | Verified %0d period(s) successfully (%0t ns each)", 
                         test_num, exp_ratio, num_periods, expected_period);
                pass_count = pass_count + 1;
            end else begin
                fail_count = fail_count + 1;
            end
        end
    endtask

    // Task: Verify Bypass Mode across 3 Reference Clock Cycles
    task check_bypass;
        reg [1:0] bypass_failed;
        begin
            bypass_failed = 1'b0;
            
            // Check output matches reference clock over 3 cycles
            repeat (3) begin
                #(CLK_PERIOD);
                if (o_div_clk_tb !== i_ref_clk_tb) begin
                    bypass_failed = 1'b1;
                end
            end

            if (!bypass_failed) begin
                $display("[PASS] TEST %0d | Output correctly bypassing i_ref_clk_tb over 3 cycles", test_num);
                pass_count = pass_count + 1;
            end else begin
                $display("[FAIL] TEST %0d | Output failed to bypass i_ref_clk_tb", test_num);
                fail_count = fail_count + 1;
            end
        end
    endtask

    // Main Test Stimulus
    initial begin
        // Initialize Signals
        i_ref_clk_tb   = 1'b0;
        i_rst_n_tb     = 1'b1;
        i_clk_en_tb    = 1'b0;
        i_div_ratio_tb = 8'd0;
        test_num    = 0;
        pass_count  = 0;
        fail_count  = 0;

        // Apply initial hardware reset
        reset_dut();

        // TEST 1: Bypass Check (i_clk_en_tb = 0)
        test_num    = 1;
        i_clk_en_tb    = 1'b0;
        i_div_ratio_tb = 8'd4;
        check_bypass();

        // TEST 2: Corner Case - Ratio = 0 (Bypass)
        test_num    = 2;
        i_clk_en_tb    = 1'b1;
        i_div_ratio_tb = 8'd0;
        check_bypass();

        // TEST 3: Corner Case - Ratio = 1 (Bypass)
        test_num    = 3;
        i_div_ratio_tb = 8'd1;
        check_bypass();

        // TEST 4: Even Division Ratio F/2 (3 periods)
        test_num    = 4;
        i_div_ratio_tb = 8'd2;
        check_division_ratio(8'd2, 3);

        // TEST 5: Odd Division Ratio F/3 (3 periods)
        test_num    = 5;
        i_div_ratio_tb = 8'd3;
        check_division_ratio(8'd3, 3);

        // TEST 6: Even Division Ratio F/4 (3 periods)
        test_num    = 6;
        i_div_ratio_tb = 8'd4;
        check_division_ratio(8'd4, 3);

        // TEST 7: Odd Division Ratio F/5 (3 periods)
        test_num    = 7;
        i_div_ratio_tb = 8'd5;
        check_division_ratio(8'd5, 3);

        // TEST 8: Even Division Ratio F/8 (3 periods)
        test_num    = 8;
        i_div_ratio_tb = 8'd8;
        check_division_ratio(8'd8, 3);

        // Simulation Results Summary
        $display("\n=======================================================");
        $display(" SIMULATION SUMMARY: %0d PASSED, %0d FAILED", pass_count, fail_count);
        $display("=======================================================\n");
        $stop;
    end

endmodule