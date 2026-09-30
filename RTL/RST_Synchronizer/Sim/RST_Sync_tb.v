`timescale 1ns/1ps

module RST_Sync_tb;

    parameter NUM_STAGES = 2; // Test with 2, 3, 4, etc.
    localparam CLK_PERIOD = 10;

    reg  CLK;
    reg  RST;
    wire sync_RST;

    integer pass_count = 0;
    integer fail_count = 0;
    integer i;

    // Instantiate DUT
    RST_Sync #(.NUM_STAGES(NUM_STAGES)) DUT (
        .CLK      (CLK),
        .RST      (RST),
        .sync_RST (sync_RST)
    );

    // Clock Generation
    always #(CLK_PERIOD / 2.0) CLK = ~CLK;

    initial begin
        CLK = 1'b0;
        RST = 1'b1; // Inactive
        #(CLK_PERIOD);

        // TEST 1: Asynchronous Assertion
        $display("[INFO] TEST 1: Testing Asynchronous Assertion...");
        #(CLK_PERIOD / 4.0);
        RST = 1'b0; // Assert Active-Low Reset asynchronously
        #1;

        if (sync_RST === 1'b0) begin
            $display("[PASS] sync_RST asserted immediately on falling edge of RST.");
            pass_count = pass_count + 1;
        end else begin
            $display("[FAIL] sync_RST failed to assert asynchronously!");
            fail_count = fail_count + 1;
        end

        #(CLK_PERIOD * 2);

        // TEST 2: Synchronous De-assertion across NUM_STAGES cycles
        $display("[INFO] TEST 2: Testing Synchronous De-assertion (%0d stages)...", NUM_STAGES);
        @(negedge CLK);
        RST = 1'b1; // Release Reset

        // Check stages prior to final cycle
        for (i = 1; i <= NUM_STAGES; i = i + 1) begin
            @(posedge CLK);
            #1; // Delay for FF propagation
            
            if (i < NUM_STAGES) begin
                if (sync_RST === 1'b0) begin
                    $display("[PASS] Cycle %0d/%0d: sync_RST remains 0", i, NUM_STAGES);
                end else begin
                    $display("[FAIL] Cycle %0d/%0d: sync_RST went high too early!", i, NUM_STAGES);
                    fail_count = fail_count + 1;
                end
            end else begin
                if (sync_RST === 1'b1) begin
                    $display("[PASS] Cycle %0d/%0d: sync_RST safely de-asserted to 1!", i, NUM_STAGES);
                    pass_count = pass_count + 1;
                end else begin
                    $display("[FAIL] Cycle %0d/%0d: sync_RST failed to de-assert!", i, NUM_STAGES);
                    fail_count = fail_count + 1;
                end
            end
        end

        #(CLK_PERIOD * 2);

        $display("\n=======================================================");
        $display(" SIMULATION SUMMARY: %0d PASSED, %0d FAILED", pass_count, fail_count);
        $display("=======================================================\n");
        $stop;
    end

endmodule