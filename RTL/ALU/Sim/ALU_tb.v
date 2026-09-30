`timescale 1ns/1ns

module ALU_tb();

    parameter WIDTH = 16;

    reg [WIDTH - 1 : 0] A_tb, B_tb;
    reg [3:0]           ALU_FUN_tb;
    reg                 Enable_tb;
    reg                 CLK_tb;
    reg                 RST_tb;

    wire [WIDTH - 1 : 0] ALU_OUT_tb;
    wire                 OUT_VALID_tb;

    // DUT Instantiation
    ALU #(
        .WIDTH(WIDTH)
    ) DUT (
        .A(A_tb),
        .B(B_tb),
        .ALU_FUN(ALU_FUN_tb),
        .Enable(Enable_tb),
        .CLK(CLK_tb),
        .RST(RST_tb),
        .ALU_OUT(ALU_OUT_tb),
        .OUT_VALID(OUT_VALID_tb)
    );

    // Clock Generator (50 MHz -> 10ns period)
    always #5 CLK_tb = ~CLK_tb;

    integer Succesful_Tests;

    initial begin
        // Initialize Signals
        Succesful_Tests = 0;
        A_tb            = 16'b0;
        B_tb            = 16'b0;
        ALU_FUN_tb      = 4'b0;
        Enable_tb       = 1'b0;
        CLK_tb          = 1'b0;
        RST_tb          = 1'b0;

        // Apply Reset
        #10;
        RST_tb    = 1'b1;
        Enable_tb = 1'b1;

        // -------------------------------------------------------------
        // ADDITION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b0000;
        A_tb       = 16'hF25A;
        B_tb       = 16'h1372;
        #10;
        if ((ALU_OUT_tb == 16'h05CC) && (OUT_VALID_tb == 1'b1)) begin
            $display("ADDITION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("ADDITION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // SUBTRACTION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b0001;
        A_tb       = 16'h1372;
        B_tb       = 16'hF25A;
        #10;
        if ((ALU_OUT_tb == 16'h2118) && (OUT_VALID_tb == 1'b1)) begin
            $display("SUBTRACTION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("SUBTRACTION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // MULTIPLICATION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b0010;
        A_tb       = 16'h0037;
        B_tb       = 16'h0059;
        #10;
        if ((ALU_OUT_tb == 16'h131F) && (OUT_VALID_tb == 1'b1)) begin
            $display("MULTIPLICATION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("MULTIPLICATION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // DIVISION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b0011;
        A_tb       = 16'h063F;
        B_tb       = 16'h0035;
        #10;
        if ((ALU_OUT_tb == 16'h001E) && (OUT_VALID_tb == 1'b1)) begin
            $display("DIVISION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("DIVISION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // DIVISION BY ZERO TEST
        // -------------------------------------------------------------
        B_tb = 16'h0000;
        #10;
        if ((ALU_OUT_tb == 16'h0000) && (OUT_VALID_tb == 1'b1)) begin
            $display("DIVISION BY 0 TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("DIVISION BY 0 TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // AND OPERATION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b0100;
        A_tb       = 16'hF01E;
        B_tb       = 16'h7A38;
        #10;
        if ((ALU_OUT_tb == 16'h7018) && (OUT_VALID_tb == 1'b1)) begin
            $display("AND OPERATION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("AND OPERATION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // OR OPERATION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b0101;
        #10;
        if ((ALU_OUT_tb == 16'hFA3E) && (OUT_VALID_tb == 1'b1)) begin
            $display("OR OPERATION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("OR OPERATION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // NAND OPERATION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b0110;
        #10;
        if ((ALU_OUT_tb == 16'h8FE7) && (OUT_VALID_tb == 1'b1)) begin
            $display("NAND OPERATION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("NAND OPERATION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // NOR OPERATION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b0111;
        #10;
        if ((ALU_OUT_tb == 16'h05C1) && (OUT_VALID_tb == 1'b1)) begin
            $display("NOR OPERATION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("NOR OPERATION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // XOR OPERATION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b1000;
        #10;
        if ((ALU_OUT_tb == 16'h8A26) && (OUT_VALID_tb == 1'b1)) begin
            $display("XOR OPERATION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("XOR OPERATION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // XNOR OPERATION TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b1001;
        #10;
        if ((ALU_OUT_tb == 16'h75D9) && (OUT_VALID_tb == 1'b1)) begin
            $display("XNOR OPERATION TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("XNOR OPERATION TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // EQUALITY TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b1010;
        A_tb       = 16'h1032;
        B_tb       = 16'h1032;
        #10;
        if ((ALU_OUT_tb == 16'h0001) && (OUT_VALID_tb == 1'b1)) begin
            $display("EQUALITY TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("EQUALITY TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // INEQUALITY TEST
        // -------------------------------------------------------------
        B_tb = 16'h1033;
        #10;
        if ((ALU_OUT_tb == 16'h0000) && (OUT_VALID_tb == 1'b1)) begin
            $display("INEQUALITY TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("INEQUALITY TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // GREATER THAN TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b1011;
        A_tb       = 16'h1034;
        B_tb       = 16'h1033;
        #10;
        if ((ALU_OUT_tb == 16'h0002) && (OUT_VALID_tb == 1'b1)) begin
            $display("GREATER THAN TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("GREATER THAN TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // LESS THAN TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b1100;
        A_tb       = 16'h1029;
        B_tb       = 16'h1033;
        #10;
        if ((ALU_OUT_tb == 16'h0003) && (OUT_VALID_tb == 1'b1)) begin
            $display("LESS THAN TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("LESS THAN TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // SHIFT RIGHT TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b1101;
        A_tb       = 16'h00EA;
        #10;
        if ((ALU_OUT_tb == 16'h0075) && (OUT_VALID_tb == 1'b1)) begin
            $display("SHIFT RIGHT TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("SHIFT RIGHT TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // SHIFT LEFT TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b1110;
        #10;
        if ((ALU_OUT_tb == 16'h01D4) && (OUT_VALID_tb == 1'b1)) begin
            $display("SHIFT LEFT TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("SHIFT LEFT TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // DEFAULT CASE TEST
        // -------------------------------------------------------------
        ALU_FUN_tb = 4'b1111;
        #10;
        if ((ALU_OUT_tb == 16'h0000) && (OUT_VALID_tb == 1 me1)) begin
            $display("DEFAULT TEST SUCCESSFUL | ALU_OUT = %h", ALU_OUT_tb);
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("DEFAULT TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        // -------------------------------------------------------------
        // ENABLE LOW TEST (Verify OUT_VALID drops and output is 0)
        // -------------------------------------------------------------
        Enable_tb  = 1'b0;
        ALU_FUN_tb = 4'b0000;
        A_tb       = 16'hFFFF;
        B_tb       = 16'hFFFF;
        #10;
        if ((ALU_OUT_tb == 16'h0000) && (OUT_VALID_tb == 1'b0)) begin
            $display("ENABLE LOW TEST SUCCESSFUL | OUT_VALID = 0, ALU_OUT = 0");
            Succesful_Tests = Succesful_Tests + 1;
        end else begin
            $display("ENABLE LOW TEST FAILED! | ALU_OUT = %h , OUT_VALID = %b", ALU_OUT_tb, OUT_VALID_tb);
        end

        #40;
        $display("\n=============================================");
        $display(" 19 Tests ran with %0d/19 SUCCESSFUL TESTS", Succesful_Tests);
        $display(" Logging off...");
        $display("=============================================\n");
        $stop;
    end

endmodule