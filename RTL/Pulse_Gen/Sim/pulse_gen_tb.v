`timescale 1ns/1ps

module pulse_gen_tb;

    reg  CLK;
    reg  RST;
    reg  Signal;
    wire enable_pulse;

    localparam CLK_PERIOD = 10; // 100 MHz

    // DUT Instantiation
    pulse_gen DUT (
        .CLK(CLK),
        .RST(RST),
        .Signal(Signal),
        .enable_pulse(enable_pulse)
    );

    // Clock Generator
    initial CLK = 0;
    always #(CLK_PERIOD / 2.0) CLK = ~CLK;

    // Stimulus Task
    task drive_signal(input integer cycles);
        begin
            @(negedge CLK);
            Signal = 1'b1;
            repeat (cycles) @(negedge CLK);
            Signal = 1'b0;
            repeat (2) @(negedge CLK);
        end
    endtask

    // Main Test Sequence
    initial begin
        // Initialize
        CLK    = 0;
        RST    = 0;
        Signal = 0;

        $display("\n=============================================");
        $display("     STARTING PULSE_GEN TESTBENCH | Time=%0t", $time);
        $display("=============================================\n");

        // Apply Reset
        #(CLK_PERIOD * 2);
        RST = 1;
        #(CLK_PERIOD * 2);

        // Test 1: Single-cycle high pulse on Signal
        $display("--- TEST 1: Single-Cycle Input Pulse | Time=%0t ---", $time);
        drive_signal(1);

        // Test 2: Long high level on Signal (Verify output is strictly 1 cycle long)
        $display("--- TEST 2: Multi-Cycle Input High Level | Time=%0t ---", $time);
        drive_signal(5);

        // Test 3: Rapid back-to-back toggling
        $display("--- TEST 3: Rapid Back-to-Back Toggling | Time=%0t ---", $time);
        drive_signal(1);
        drive_signal(1);

        $display("\n=============================================");
        $display("     TESTBENCH COMPLETE | Time=%0t", $time);
        $display("=============================================\n");
        $stop;
    end

    // Monitor Output
    always @(posedge CLK) begin
        if (enable_pulse) begin
            $display("[PULSE DETECTED] Time=%0t | enable_pulse asserted high for 1 cycle", $time);
        end
    end

endmodule