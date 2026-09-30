module Reg_File_tb;

    localparam WIDTH     = 16;
    localparam ADD_WIDTH = 3;
    
    reg [WIDTH-1:0]     WrData_tb;
    reg [ADD_WIDTH-1:0] Address_tb;
    reg                 WrEn_tb;
    reg                 RdEn_tb;
    reg                 clk_tb;
    reg                 rst_tb;
    wire [WIDTH-1:0]    RdData_tb;

    Reg_File #(.WIDTH(WIDTH),.ADD_WIDTH(ADD_WIDTH))
    DUT (
        .WrData(WrData_tb),
        .Address(Address_tb),
        .WrEn(WrEn_tb),
        .RdEn(RdEn_tb),
        .clk(clk_tb),
        .rst(rst_tb),
        .RdData(RdData_tb)
    );

    always #10 clk_tb = ~ clk_tb;

    initial begin
        clk_tb = 1'b0;
        WrData_tb  = 'h0;
        Address_tb = 'b0;
        WrEn_tb    = 1'b0;
        RdEn_tb    = 1'b0;
        
        // TEST 1: Asynchronous Reset
        rst_tb = 1'b0; 
        #15;           
        rst_tb = 1'b1; 
        #5;
        $display("=================== STARTING RUN ===================");

        // TEST 1b: Verify Reset State of RdData
        $display("[RESET CHECK] Initial RdData value: %h", RdData_tb);
        if (RdData_tb === 'h0000) begin
            $display("[PASS] Reset verification successful: RdData cleared to 0.");
        end else begin
            $display("[FAIL] Reset verification failed: Expected 'h0000, got %h", RdData_tb);
        end

        // TEST 2: Write Standard Data
        @(negedge clk_tb);
        Address_tb = 'd2; WrData_tb = 'hAAAA; WrEn_tb = 1'b1; RdEn_tb = 1'b0;
        @(negedge clk_tb); WrEn_tb = 1'b0;
        $display("[CONFIRM WRITE] Writing %h to Address %d", WrData_tb, Address_tb);

        // TEST 3: Write Data (All Ones)
        @(negedge clk_tb);
        Address_tb = 'd7; WrData_tb = 'hFFFF; WrEn_tb = 1'b1; RdEn_tb = 1'b0;
        @(negedge clk_tb); WrEn_tb = 1'b0;
        $display("[CONFIRM WRITE] Writing %h to Address %d", WrData_tb, Address_tb);

        // TEST 4: Write Data (All Zeros)
        @(negedge clk_tb);
        Address_tb = 'd0; WrData_tb = 'h0000; WrEn_tb = 1'b1; RdEn_tb = 1'b0;
        @(negedge clk_tb); WrEn_tb = 1'b0;
        $display("[CONFIRM WRITE] Writing %h to Address %d", WrData_tb, Address_tb);

        #20; 

        // TEST 5: Read and Verify Address 2
        @(negedge clk_tb);
        Address_tb = 'd2; WrEn_tb = 1'b0; RdEn_tb = 1'b1;
        @(negedge clk_tb);
        $display("[READ OUT] Reading Address %d -> Received Data: %h", Address_tb, RdData_tb);
        if (RdData_tb === 'hAAAA) $display("[PASS] Test 5: Match.");
        else                        $display("[FAIL] Test 5: Expected AAAA");

        // TEST 6: Read and Verify Address 7
        @(negedge clk_tb);
        Address_tb = 'd7; WrEn_tb = 1'b0; RdEn_tb = 1'b1;
        @(negedge clk_tb);
        $display("[READ OUT] Reading Address %d -> Received Data: %h", Address_tb, RdData_tb);
        if (RdData_tb === 'hFFFF) $display("[PASS] Test 6: Match.");
        else                        $display("[FAIL] Test 6: Expected FFFF");

        // TEST 7: Read and Verify Address 0
        @(negedge clk_tb);
        Address_tb = 'd0; WrEn_tb = 1'b0; RdEn_tb = 1'b1;
        @(negedge clk_tb);
        $display("[READ OUT] Reading Address %d -> Received Data: %h", Address_tb, RdData_tb);
        if (RdData_tb === 'h0000) $display("[PASS] Test 7: Match.");
        else                        $display("[FAIL] Test 7: Expected 0000");

        // TEST 8: Read and Verify unwritted Address 4
        @(negedge clk_tb);
        Address_tb = 'd4; WrEn_tb = 1'b0; RdEn_tb = 1'b1;
        @(negedge clk_tb);
        $display("[READ OUT] Reading unwritten Address %d to check reset -> Received Data: %h", Address_tb, RdData_tb);
        if (RdData_tb === 'h0000) $display("[PASS] Test 8: Match.");
        else                        $display("[FAIL] Test 8: Expected 0000");

        // TEST 8: Invalid Op Handling (Simultaneous WrEn/RdEn)
        @(negedge clk_tb);
        Address_tb = 'd2; WrData_tb = 'h5555; WrEn_tb = 1'b1; RdEn_tb = 1'b1;
        @(negedge clk_tb); 
        WrEn_tb = 1'b0; RdEn_tb = 1'b1;
        @(negedge clk_tb);
        $display("[READ OUT] Reading Address %d -> Received Data: %h", Address_tb, RdData_tb);
        if (RdData_tb === 'hAAAA) $display("[PASS] Test 9: Simultaneous signals ignored correctly.");
        else                        $display("[FAIL] Test 9: Data corrupted by illegal instruction.");

        $display("=================== RUN COMPLETE ===================");
        $stop;
    end

endmodule