module MUX_2x1 (
    input IN0,IN1,
    input SEL,
    output wire OUT
);

    assign OUT = SEL ? IN1 : IN0;

endmodule