module Reg_File #(parameter WIDTH = 8 , ADD_WIDTH = 4, DEPTH = 1 << ADD_WIDTH)
(
    input[WIDTH - 1 : 0]  WrData,
    input[ADD_WIDTH - 1 : 0] Address,
    input WrEn, RdEn,
    input clk, rst,
    output reg [WIDTH - 1 : 0] RdData,
    output reg Rd_D_Valid,
    output wire [WIDTH - 1 : 0] REG0,
    output wire [WIDTH - 1 : 0] REG1,
    output wire [WIDTH - 1 : 0] REG2,
    output wire [WIDTH - 1 : 0] REG3
);

  reg[WIDTH - 1 : 0] RegFile [0 : DEPTH - 1];
    integer i;
    always @(posedge clk or negedge rst)
    begin
        if(!rst)
        begin
            for(i = 0; i < DEPTH; i = i + 1)
            begin
                if (i == 2)
                    RegFile[i] <= 'b100000_01;
                else if (i == 3)
                    RegFile[i] <= 'b00100000; 
                else
                    RegFile[i] <= 'b0;
            end
            Rd_D_Valid <= 1'b0;
            RdData <= 'b0;
        end
        else
        begin
            if(WrEn &! RdEn)
            begin
                RegFile[Address] <= WrData;
                Rd_D_Valid <= 1'b0;
            end
            else if(RdEn &! WrEn)
            begin
                RdData <=  RegFile[Address];
                Rd_D_Valid <= 1'b1;
            end 
            else
                Rd_D_Valid <= 1'b0;
        end
    end

    assign REG0 = RegFile[0];
    assign REG1 = RegFile[1];
    assign REG2 = RegFile[2];
    assign REG3 = RegFile[3];
    
endmodule