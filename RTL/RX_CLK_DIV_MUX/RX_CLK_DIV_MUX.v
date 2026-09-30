module RX_CLK_DIV_MUX (
    input [5:0] PRESCALE,
    output reg [2:0] RX_CLK_DIV_RATIO
);

    always @(*)
    begin
        case (PRESCALE)
            6'd32 :  RX_CLK_DIV_RATIO = 1;
            6'd16 :  RX_CLK_DIV_RATIO = 2;
            6'd8 :   RX_CLK_DIV_RATIO = 4;
            default: RX_CLK_DIV_RATIO = 1;
        endcase
    end

endmodule