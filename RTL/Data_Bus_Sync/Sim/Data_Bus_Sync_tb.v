`timescale 1ns / 1ps

module Data_Bus_Sync_tb;

    parameter DATA_WIDTH  = 8;
    parameter SYNC_LENGTH = 2;
    parameter CLK_PERIOD  = 10;

    reg                    clk;
    reg                    rst;
    reg  [DATA_WIDTH-1:0]  Unsync_bus;
    reg                    bus_enable;

    wire [DATA_WIDTH-1:0]  Sync_bus;
    wire                   enable_pulse;

    integer error_count = 0;

    // Instantiate UUT
    Data_Bus_Sync #(
        .DATA_WIDTH(DATA_WIDTH),
        .Sync_Legnth(SYNC_LENGTH)
    ) DUT (
        .clk(clk),
        .rst(rst),
        .Unsync_bus(Unsync_bus),
        .bus_enable(bus_enable),
        .Sync_bus(Sync_bus),
        .enable_pulse(enable_pulse)
    );

    // Clock Generation
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Task to pulse enable asynchronously and run automated checks
    task run_test;
        input [DATA_WIDTH-1:0] test_data;
        reg [DATA_WIDTH-1:0] expected_data;
        integer pulse_count;
        begin
            $display("[%0t ns] --- Starting Test: Driving Data 0x%h ---", $time, test_data);
            
            // Set bus data and assert enable asynchronously
            Unsync_bus = test_data;
            #3;
            bus_enable = 1'b1;

            // Wait for 2-stage sync pipeline + 1-stage pulse gen delay
            #(CLK_PERIOD * (SYNC_LENGTH + 1));

            // Check 1: Data latching on Sync_bus
            expected_data = test_data;
            if (Sync_bus !== expected_data) begin
                $display("ERROR [%0t ns]: Data mismatch! Expected 0x%h, got 0x%h", 
                         $time, expected_data, Sync_bus);
                error_count = error_count + 1;
            end else begin
                $display("PASS [%0t ns]: Sync_bus successfully updated to 0x%h", $time, Sync_bus);
            end

            // Check 2: Verify enable_pulse goes High for exactly 1 cycle
            if (enable_pulse !== 1'b1) begin
                $display("ERROR [%0t ns]: enable_pulse failed to assert!", $time);
                error_count = error_count + 1;
            end else begin
                $display("PASS [%0t ns]: enable_pulse asserted high as expected.", $time);
            end

            // Monitor for extra spurious pulses while bus_enable remains held HIGH
            pulse_count = 0;
            repeat (4) begin
                @(posedge clk);
                if (enable_pulse === 1'b1) pulse_count = pulse_count + 1;
            end

            // Check 3: Ensure pulse gen only fires ONCE per rising edge
            if (pulse_count > 1) begin
                $display("ERROR [%0t ns]: Pulse Gen re-triggered! Extra pulses detected = %0d", 
                         $time, pulse_count);
                error_count = error_count + 1;
            end else begin
                $display("PASS [%0t ns]: Pulse Gen held LOW while enable remained high.", $time);
            end

            // Deassert enable asynchronously
            #2;
            bus_enable = 1'b0;
            #(CLK_PERIOD * (SYNC_LENGTH + 2));
        end
    endtask

    // Main Test Sequence
    initial begin
        clk        = 0;
        rst        = 0;
        bus_enable = 0;
        Unsync_bus = 8'h00;

        // Apply Reset
        #(CLK_PERIOD * 2);
        rst = 1;
        #(CLK_PERIOD * 2);

        // Run Test Patterns
        run_test(8'hA5);
        run_test(8'h3C);
        run_test(8'hFF);

        // Summary Report
        $display("--------------------------------------------------");
        if (error_count == 0) begin
            $display(">>> ALL TESTS PASSED SUCCESSFULLY! <<<");
        end else begin
            $display(">>> TEST FAILED WITH %0d ERROR(S) <<<", error_count);
        end
        $display("--------------------------------------------------");

        $stop;
    end

endmodule