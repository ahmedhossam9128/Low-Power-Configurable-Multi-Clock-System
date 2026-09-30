module UART_TX_TOP (
    input PAR_EN, PAR_TYP,
    input DATA_VALID,
    input[7:0] P_DATA,
    input CLK,RST,
    output wire TX_OUT,
    output wire busy
);

wire[1:0] mux_sel;
wire ser_done, ser_en;
wire ser_data;
wire par_bit;
wire[7:0] P_DATA_Registered;
wire PAR_TYP_Registered;
wire PAR_EN_Registered;

    UART_Serializer U0_serializer
    (
        .P_DATA_Registered(P_DATA_Registered),
        .CLK(CLK),
        .ser_en(ser_en),
        .ser_done(ser_done),
        .ser_data(ser_data)
    );

    UART_Parity U1_parity
    (
        .PAR_TYP(PAR_TYP_Registered),
        .P_DATA(P_DATA_Registered),
        .par_bit(par_bit)
    );

    UART_TX_FSM U2_FSM (
        .DATA_VALID(DATA_VALID),
        .P_DATA(P_DATA),
        .PAR_EN(PAR_EN),
        .PAR_TYP(PAR_TYP),
        .ser_done(ser_done),
        .CLK(CLK),
        .RST(RST),
        .busy(busy),
        .ser_en(ser_en),
        .mux_sel(mux_sel),
        .P_DATA_Registered(P_DATA_Registered),
        .PAR_TYP_Registered(PAR_TYP_Registered)
    );

    MUX_4x1 U3_MUX_4x1
    (
        .IN0(1'b0),
        .IN1(1'b1),
        .IN2(ser_data),
        .IN3(par_bit),
        .mux_sel(mux_sel),
        .mux_out(TX_OUT)
    );

endmodule
