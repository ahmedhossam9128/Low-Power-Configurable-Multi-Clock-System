module Parity_Checker (
    input PAR_TYP,
    input PAR_Chk_En,
    input sampled_bit,
    input [3:0] Bit_Count,
    input CLK,RST,
    input Sampled_flag,
    output reg par_err
);

reg par_bit;
    always @(posedge CLK or negedge RST)
    begin
        if(!RST)
        begin
            par_bit <= 1'b0;
            par_err <= 1'b0;
        end
        else if(!PAR_Chk_En)
            par_bit <= 1'b0;   
        else 
            if(Sampled_flag)
                if (Bit_Count == 'd1)   // Captures first data bit
                    par_bit <= sampled_bit;
                else if(Bit_Count == 'd9) // Compare Parity Bits
                    par_err <= par_bit != sampled_bit;
                else if(PAR_TYP == 1'b0)
                    par_bit <= par_bit ^ sampled_bit;  // even parity
                else
                    par_bit <= ~(par_bit ^ sampled_bit);    // odd parity
    end

endmodule