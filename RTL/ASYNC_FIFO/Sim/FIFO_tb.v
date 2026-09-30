`timescale 1ns/1ps

module FIFO_tb;

    parameter DATA_WIDTH = 8;
    parameter DEPTH      = 8; 

    // 100 MHz Write Clock (10ns), 40 MHz Read Clock (25ns)
    localparam W_CLK_PERIOD = 10;
    localparam R_CLK_PERIOD = 25;

    reg                   W_CLK;
    reg                   R_CLK;
    reg                   W_RST;
    reg                   R_RST;
    reg                   W_INC;
    reg                   R_INC;
    reg  [DATA_WIDTH-1:0] WR_DATA;
    wire [DATA_WIDTH-1:0] RD_DATA;
    wire                  EMPTY;
    wire                  FULL;

    // Test Tracking Signal for Waveform Viewer
    integer test_num = 0;

    integer pass_count = 0;
    integer fail_count = 0;
    integer i;

    // Golden Model Queue for Data Verification
    reg [DATA_WIDTH-1:0] expected_queue [0:500];
    integer wr_idx = 0;
    integer rd_idx = 0;

    // Instantiate Top Module
    FIFO_TOP #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(DEPTH)
    ) DUT (
        .W_CLK(W_CLK),
        .R_CLK(R_CLK),
        .W_RST(W_RST),
        .R_RST(R_RST),
        .W_INC(W_INC),
        .R_INC(R_INC),
        .WR_DATA(WR_DATA),
        .RD_DATA(RD_DATA),
        .EMPTY(EMPTY),
        .FULL(FULL)
    );

    // Clock Generators
    initial W_CLK = 0;
    always #(W_CLK_PERIOD / 2.0) W_CLK = ~W_CLK;

    initial R_CLK = 0;
    always #(R_CLK_PERIOD / 2.0) R_CLK = ~R_CLK;

    // Write Task (Takes 1 W_CLK cycle)
    task write_byte(input [DATA_WIDTH-1:0] data);
        begin
            @(negedge W_CLK);
            if (!FULL) begin
                W_INC   = 1'b1;
                WR_DATA = data;
                expected_queue[wr_idx] = data;
                wr_idx  = wr_idx + 1;
                $display("[WRITE SUCCESS] Time=%0t | Test=%0d | Wrote Data: 0x%0h", $time, test_num, data);
            end else begin
                $display("[WRITE BLOCKED] Time=%0t | Test=%0d | FIFO FULL! Dropped Data: 0x%0h", $time, test_num, data);
            end
            @(posedge W_CLK);
            #1;
            W_INC = 1'b0;
        end
    endtask

    // Read Task (Takes 1 R_CLK cycle)
    task read_byte();
        reg [DATA_WIDTH-1:0] exp_data;
        begin
            @(negedge R_CLK);
            if (!EMPTY) begin
                exp_data = expected_queue[rd_idx];
                
                if (RD_DATA === exp_data) begin
                    $display("[READ PASS]    Time=%0t | Test=%0d | Read Data: 0x%0h (Matched Expected)", $time, test_num, RD_DATA);
                    pass_count = pass_count + 1;
                end else begin
                    $display("[READ FAIL]    Time=%0t | Test=%0d | Read Data: 0x%0h (Expected: 0x%0h)", $time, test_num, RD_DATA, exp_data);
                    fail_count = fail_count + 1;
                end

                rd_idx = rd_idx + 1;
                R_INC  = 1'b1;
            end else begin
                $display("[READ BLOCKED] Time=%0t | Test=%0d | FIFO EMPTY!", $time, test_num);
                R_INC  = 1'b0;
            end
            @(posedge R_CLK);
            #1;
            R_INC = 1'b0;
        end
    endtask

    // Reset Task
    task apply_reset();
        begin
            W_RST = 1'b0;
            R_RST = 1'b0;
            #(W_CLK_PERIOD * 3);
            W_RST = 1'b1;
            R_RST = 1'b1;
            #(W_CLK_PERIOD * 2);
        end
    endtask

    // Main Test Sequence
    initial begin
        W_CLK    = 0;
        R_CLK    = 0;
        W_RST    = 1;
        R_RST    = 1;
        W_INC    = 0;
        R_INC    = 0;
        WR_DATA  = 0;
        test_num = 0;

        $display("\n=======================================================");
        $display("   STARTING ASYNC FIFO COMPREHENSIVE TESTBENCH | Time=%0t", $time);
        $display("=======================================================\n");

        apply_reset();

        // -------------------------------------------------------------
        // TEST 1: Concurrent Write (100MHz) & Read (40MHz) - 9 Bytes
        // -------------------------------------------------------------
        test_num = 1;
        $display("--- TEST 1: Concurrent Write & Read (9 Bytes Burst) | Time=%0t ---", $time);
        fork
            begin
                for (i = 1; i <= 9; i = i + 1) begin
                    write_byte(i * 8'h10);
                end
            end
            begin
                for (i = 1; i <= 9; i = i + 1) begin
                    read_byte();
                end
            end
        join

        // Drain any leftover buffered bytes
        while (!EMPTY) begin
            read_byte();
        end

        #(R_CLK_PERIOD * 5);

        // -------------------------------------------------------------
        // TEST 2: EMPTY Flag Check
        // -------------------------------------------------------------
        test_num = 2;
        $display("\n--- TEST 2: Testing EMPTY Flag Assertion | Time=%0t ---", $time);
        if (EMPTY === 1'b1) begin
            $display("[PASS] Time=%0t | Test 2: FIFO correctly returned to EMPTY state.", $time);
            pass_count = pass_count + 1;
        end else begin
            $display("[FAIL] Time=%0t | Test 2: FIFO failed to set EMPTY flag!", $time);
            fail_count = fail_count + 1;
        end

        // Underflow check
        read_byte();

        // -------------------------------------------------------------
        // TEST 3: Isolated 8-Byte Burst Fill & FULL Flag Verification
        // -------------------------------------------------------------
        test_num = 3;
        $display("\n--- TEST 3: Isolated 8 Consecutive Writes (Check FULL Flag) | Time=%0t ---", $time);
        
        wr_idx = 0;
        rd_idx = 0;
        apply_reset();

        // Write 8 bytes continuously with NO reading
        for (i = 1; i <= 8; i = i + 1) begin
            write_byte(i * 8'h05);
        end

        // Hold for 3 write clock cycles to let CDC status settle
        #(W_CLK_PERIOD * 3);

        // Check FULL flag
        if (FULL === 1'b1) begin
            $display("[PASS] Time=%0t | Test 3: FULL flag correctly asserted on 8th write!", $time);
            pass_count = pass_count + 1;
        end else begin
            $display("[FAIL] Time=%0t | Test 3: FULL flag failed to assert! (FULL=%b)", $time, FULL);
            fail_count = fail_count + 1;
        end

        // Drain the entire FIFO completely
        while (!EMPTY) begin
            read_byte();
        end

        // -------------------------------------------------------------
        // TEST 4: Final EMPTY Check
        // -------------------------------------------------------------
        test_num = 4;
        $display("\n--- TEST 4: Final EMPTY Flag Check after full drain | Time=%0t ---", $time);
        #(R_CLK_PERIOD * 5);

        if (EMPTY === 1'b1) begin
            $display("[PASS] Time=%0t | Test 4: FIFO successfully processed all burst bytes and returned to EMPTY!", $time);
            pass_count = pass_count + 1;
        end else begin
            $display("[FAIL] Time=%0t | Test 4: FIFO has unread residual bytes! EMPTY=%b", $time, EMPTY);
            fail_count = fail_count + 1;
        end

        // Final Summary
        $display("\n=======================================================");
        $display(" FINAL RESULTS: %0d PASSED, %0d FAILED | Time=%0t", pass_count, fail_count, $time);
        $display("=======================================================\n");
        $stop;
    end

endmodule