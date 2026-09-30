module Deserializer(
    input deser_En,
    input sampled_bit,
    input Sampled_flag,
    input [3:0] Bit_Count,
    input CLK,RST,
    output reg [7:0] P_DATA
);

wire [2:0] bit_position;
assign bit_position = Bit_Count - 1'b1;

    always@(posedge CLK or negedge RST)
    begin
        if(!RST)
            P_DATA <= 8'b0;
        else if(deser_En && Sampled_flag)
        begin
            P_DATA[bit_position] <= sampled_bit;       // 1x8 DEMUX
        end 
    end

endmodule

