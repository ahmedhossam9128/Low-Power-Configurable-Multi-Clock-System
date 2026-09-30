module UART (
    input  wire       TX_CLK,   // Baud rate clock for transmitter (1x baud)
    input  wire       RX_CLK,   // System/sampling clock for receiver (Prescale * baud)
    input  wire       RST,

    // Configuration
    input  wire [5:0] Prescale,
    input  wire       PAR_EN,
    input  wire       PAR_TYP,

    // TX Interface (Parallel Data In -> Serial Out)
    input  wire [7:0] TX_P_DATA,
    input  wire       TX_DATA_VALID,
    output wire       TX_OUT,
    output wire       TX_BUSY,

    // RX Interface (Serial In -> Parallel Data Out)
    input  wire       RX_IN,
    output wire [7:0] RX_P_DATA,
    output wire       RX_DATA_VALID
);

    // Transmitter Instantiation (Driven by TX_CLK)
    UART_TX_TOP u_UART_TX_TOP (
        .CLK        (TX_CLK),
        .RST        (RST),
        .PAR_EN     (PAR_EN),
        .PAR_TYP    (PAR_TYP),
        .P_DATA     (TX_P_DATA),
        .DATA_VALID (TX_DATA_VALID),
        .TX_OUT     (TX_OUT),
        .busy       (TX_BUSY)
    );

    // Receiver Instantiation (Driven by RX_CLK)
    UART_RX u_UART_RX (
        .CLK        (RX_CLK),
        .RST        (RST),
        .RX_IN      (RX_IN),
        .Prescale   (Prescale),
        .PAR_EN     (PAR_EN),
        .PAR_TYP    (PAR_TYP),
        .P_DATA     (RX_P_DATA),
        .data_valid (RX_DATA_VALID)
    );

endmodule