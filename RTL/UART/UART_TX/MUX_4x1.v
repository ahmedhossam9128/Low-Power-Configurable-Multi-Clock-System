module MUX_4x1 (
    input[1:0] mux_sel,
    input IN0,IN1,IN2,IN3,
    output reg mux_out
);

    always@(*)
    begin
        case(mux_sel)
            2'b00: mux_out = IN0;
            2'b01: mux_out = IN1;
            2'b10: mux_out = IN2;
            2'b11: mux_out = IN3;
            default: mux_out = 1'b1;
        endcase
    end
endmodule
