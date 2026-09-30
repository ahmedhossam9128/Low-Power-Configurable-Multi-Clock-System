module Start_Checker (
    input CLK,RST,
    input sampled_bit,
    input Sampled_flag,
    input Str_Chk_En,
    output reg start_glitch
);
always@(posedge CLK or negedge RST)
begin
    if(!RST)
        start_glitch <= 1'b0;
    else if(Str_Chk_En && Sampled_flag)
        start_glitch <= sampled_bit != 1'b0; 
end

endmodule