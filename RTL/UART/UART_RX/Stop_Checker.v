module Stop_Checker (
    input CLK,RST,
    input sampled_bit,
    input Sampled_flag,
    input Stp_Chk_En,
    output reg stp_err
);
always@(posedge CLK or negedge RST)
begin
    if(!RST)
        stp_err <= 1'b0;
    else if(Stp_Chk_En && Sampled_flag)
        stp_err <= sampled_bit != 1'b1; 
end
endmodule