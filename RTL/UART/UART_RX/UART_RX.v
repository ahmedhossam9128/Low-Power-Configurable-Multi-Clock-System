module UART_RX (
    input  wire       CLK,
    input  wire       RST,
    input  wire       RX_IN,
    input  wire [5:0] Prescale,
    input  wire       PAR_EN,
    input  wire       PAR_TYP,
    output wire [7:0] P_DATA,
    output wire       data_valid
);

    // Internal Interconnect Wires
    wire       sampled_bit;
    wire       Sampled_flag;
    wire [4:0] Edge_Count;
    wire [3:0] Bit_Count;
    // Control Signals from FSM
    wire       par_chk_en;
    wire       strt_chk_en;
    wire       stp_chk_en;
    wire       count_en;
    wire       dat_samp_en;
    wire       deser_en;
    
    // Error / Status Flags to FSM
    wire       par_err;
    wire       stp_err;
    wire       start_glitch;

    // 1. Oversampling Data Sampler Module
    Sampler u_Sampler (
        .CLK            (CLK),
        .RST            (RST),
        .RX_IN          (RX_IN),
        .Prescale       (Prescale),
        .Edge_Count     (Edge_Count),
        .Data_Sample_En (dat_samp_en),
        .sampled_bit    (sampled_bit),
        .Sampled_flag   (Sampled_flag)
    );

    // 2. Edge & Bit Counter Module
    Edge_Bit_Counter u_Edge_Bit_Counter (
        .CLK        (CLK),
        .RST        (RST),
        .Prescale   (Prescale),
        .Count_En   (count_en),
        .Edge_Count (Edge_Count),
        .Bit_Count  (Bit_Count)
    );

    // 3. Deserializer Module
    Deserializer u_Deserializer (
        .CLK         (CLK),
        .RST         (RST),
        .deser_En    (deser_en),
        .sampled_bit (sampled_bit),
        .Bit_Count   (Bit_Count),
        .Sampled_flag(Sampled_flag),
        .P_DATA      (P_DATA)
    );

    // 4. Start Bit Glitch Checker
    Start_Checker u_Start_Checker (
        .CLK          (CLK),
        .RST          (RST),
        .Sampled_flag (Sampled_flag),
        .sampled_bit  (sampled_bit),
        .Str_Chk_En   (strt_chk_en),
        .start_glitch (start_glitch)
    );

    // 5. Stop Bit Checker
    Stop_Checker u_Stop_Checker (
        .CLK         (CLK),
        .RST         (RST),
        .Sampled_flag(Sampled_flag),
        .sampled_bit (sampled_bit),
        .Stp_Chk_En  (stp_chk_en),
        .stp_err     (stp_err)
    );

    // 6. Parity Checker Module
    Parity_Checker u_Parity_Checker (
        .CLK         (CLK),
        .RST         (RST),
        .PAR_TYP     (PAR_TYP),
        .PAR_Chk_En  (par_chk_en),
        .Sampled_flag(Sampled_flag),
        .sampled_bit (sampled_bit),
        .Bit_Count   (Bit_Count),
        .par_err     (par_err)
    );

    // 7. Main Control Finite State Machine
    UART_RX_FSM u_UART_RX_FSM (
        .CLK            (CLK),
        .RST            (RST),
        .RX_IN          (RX_IN),
        .PAR_EN         (PAR_EN),
        .Bit_Count      (Bit_Count),
        .par_err        (par_err),
        .stp_err        (stp_err),
        .start_glitch   (start_glitch),
        .PAR_Chk_En     (par_chk_en),
        .Str_Chk_En     (strt_chk_en),
        .Stp_Chk_En     (stp_chk_en),
        .Count_En       (count_en),
        .Data_Sample_En (dat_samp_en),
        .deser_En       (deser_en),
        .DATA_VALID     (data_valid)
    );

endmodule