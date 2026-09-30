module UART_Parity
(
    input PAR_TYP,
    input[7:0] P_DATA,
    output reg par_bit
);

    always @(*)
    begin
            if(PAR_TYP == 0)
                par_bit = (^P_DATA);    // even parity
            else 
                par_bit = ~(^P_DATA);   // odd parity
    end
endmodule