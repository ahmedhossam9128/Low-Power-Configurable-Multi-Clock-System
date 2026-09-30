module System_Top #(parameter DATA_WIDTH = 8 , RF_DEPTH = 16 ,FIFO_DEPTH = 8)
(
    input REF_CLK, UART_CLK, RST,
    input RX_IN,
    input SI[3:0], SE, test_mode, scan_clk, scan_rst,
    output wire SO[3:0],
    output wire TX_OUT,
    output wire RX_D_VALID
);

    localparam RF_ADDR_WIDTH = $clog2(RF_DEPTH);

    // CLKs and RSTs
    wire SYNC_REF_RST, SYNC_UART_RST;
    wire RX_CLK, TX_CLK, ALU_CLK;
    wire RX_CLK_M, TX_CLK_M, ALU_CLK_M;
    wire REF_CLK_M, UART_CLK_M;
    wire RST_M, SYNC_REF_RST_M, SYNC_UART_RST_M;

    wire CLK_Gate_EN;
    wire CLK_DIV_EN;

    // CONFIG
    wire [DATA_WIDTH - 1 : 0] CONFIG;      // Configuration Register Containing {PRESCALE[7:2], PAR_TYP, PAR_EN}
    wire [DATA_WIDTH - 1 : 0] TX_CLK_DIV_RATIO;    // default 32

    wire [2:0] RX_CLK_DIV_RATIO;    //default 1

    // REG FILE
    wire RF_WrEn, RF_RdEn;
    wire [RF_ADDR_WIDTH - 1 : 0] RF_ADDR;
    wire [DATA_WIDTH - 1 : 0] RF_Wr_Data, RF_Rd_Data;
    wire RF_Rd_Data_Valid;


    // ALU
    wire [3:0] ALU_FUN;
    wire ALU_EN;
    wire ALU_OUT_VALID;
    wire [2*DATA_WIDTH - 1 : 0] ALU_OUT;
    wire [DATA_WIDTH - 1 : 0] ALU_OP_A, ALU_OP_B;

    // UART
    wire [DATA_WIDTH - 1 : 0] Sync_RX_P_DATA , RX_P_DATA;
    wire Sync_RX_D_VALID;
    wire TX_BUSY;

    // ASYNC_FIFO
    wire FIFO_FULL,FIFO_WR_INC;
    wire FIFO_EMPTY, FIFO_RD_INC;
    wire [DATA_WIDTH - 1 : 0] FIFO_RD_DATA;
    wire [DATA_WIDTH - 1 : 0] FIFO_WR_DATA;


    MUX_2x1 u_ref_clk_mux 
    (
        .IN0(REF_CLK),
        .IN1(scan_clk),
        .SEL(test_mode),
        .OUT(REF_CLK_M)
    );

    MUX_2x1 u_alu_clk_mux 
    (
        .IN0(ALU_CLK),
        .IN1(scan_clk),
        .SEL(test_mode),
        .OUT(ALU_CLK_M)
    );

    MUX_2x1 u_uart_clk_mux 
    (
        .IN0(UART_CLK),
        .IN1(scan_clk),
        .SEL(test_mode),
        .OUT(UART_CLK_M)
    );

    MUX_2x1 u_tx_clk_mux 
    (
        .IN0(TX_CLK),
        .IN1(scan_clk),
        .SEL(test_mode),
        .OUT(TX_CLK_M)
    );

    MUX_2x1 u_rx_clk_mux 
    (
        .IN0(RX_CLK),
        .IN1(scan_clk),
        .SEL(test_mode),
        .OUT(RX_CLK_M)
    );

    MUX_2x1 u_rst_mux 
    (
        .IN0(RST),
        .IN1(scan_rst),
        .SEL(test_mode),
        .OUT(RST_M)
    );

    MUX_2x1 u_ref_rst_mux 
    (
        .IN0(SYNC_REF_RST),
        .IN1(scan_rst),
        .SEL(test_mode),
        .OUT(SYNC_REF_RST_M)
    );


    MUX_2x1 u_uart_rst_mux 
    (
        .IN0(SYNC_UART_RST),
        .IN1(scan_rst),
        .SEL(test_mode),
        .OUT(SYNC_UART_RST_M)
    );

    // 1. ALU
    ALU #(
        .WIDTH(DATA_WIDTH)
    ) u_ALU (
        .A(ALU_OP_A),
        .B(ALU_OP_B),
        .ALU_FUN(ALU_FUN),
        .Enable(ALU_EN),
        .CLK(ALU_CLK_M),
        .RST(SYNC_REF_RST_M),
        .ALU_OUT(ALU_OUT),
        .OUT_VALID(ALU_OUT_VALID)
    );

    // 2. FIFO_TOP
    FIFO_TOP #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(FIFO_DEPTH)
    ) u_FIFO (
        .W_CLK(REF_CLK_M),
        .R_CLK(TX_CLK_M),
        .W_RST(SYNC_REF_RST_M),
        .R_RST(SYNC_UART_RST_M),
        .W_INC(FIFO_WR_INC),
        .R_INC(FIFO_RD_INC),
        .WR_DATA(FIFO_WR_DATA),
        .RD_DATA(FIFO_RD_DATA),
        .EMPTY(FIFO_EMPTY),
        .FULL(FIFO_FULL)
    );

    // 3. Data_Bus_Sync
    Data_Bus_Sync #(
        .DATA_WIDTH(DATA_WIDTH),
        .Sync_Legnth(2)
    ) u_BUS_SYNC (
        .Unsync_bus(RX_P_DATA),
        .bus_enable(RX_D_VALID),
        .clk(REF_CLK_M),
        .rst(SYNC_REF_RST_M),
        .Sync_bus(Sync_RX_P_DATA),
        .enable_pulse(Sync_RX_D_VALID)
    );

    //4. RX_CLK_DIV_MUX
    RX_CLK_DIV_MUX u_RX_CLK_DIV_MUX 
    (
        .PRESCALE(CONFIG[7:2]),
        .RX_CLK_DIV_RATIO(RX_CLK_DIV_RATIO)
    );

    // 5. TX_I_CLK_DIV
    I_CLK_DIV #(
        .DIV_RATIO_WIDTH(8)
    ) u_TX_CLK_DIV (
        .i_ref_clk(UART_CLK_M),
        .i_rst_n(SYNC_UART_RST_M),
        .i_clk_en(CLK_DIV_EN),
        .i_div_ratio(TX_CLK_DIV_RATIO),
        .o_div_clk(TX_CLK)
    );

    // 6. I_CLK_DIV
    I_CLK_DIV #(
        .DIV_RATIO_WIDTH(3)
    ) u_RX_CLK_DIV (
        .i_ref_clk(UART_CLK_M),
        .i_rst_n(SYNC_UART_RST_M),
        .i_clk_en(CLK_DIV_EN),
        .i_div_ratio(RX_CLK_DIV_RATIO),
        .o_div_clk(RX_CLK)
    );

    // 7. pulse_gen
    pulse_gen u_pulse_gen (
        .CLK(TX_CLK_M),
        .RST(SYNC_UART_RST_M),
        .Signal(TX_BUSY),
        .enable_pulse(FIFO_RD_INC)
    );

    // 8. Reg_File
    Reg_File #(
        .WIDTH(DATA_WIDTH),
        .ADD_WIDTH(RF_ADDR_WIDTH),
        .DEPTH(RF_DEPTH)
    ) u_RegFile (
        .WrData(RF_Wr_Data),
        .Address(RF_ADDR),
        .WrEn(RF_WrEn),
        .RdEn(RF_RdEn),
        .clk(REF_CLK_M),
        .rst(SYNC_REF_RST_M),
        .RdData(RF_Rd_Data),
        .Rd_D_Valid(RF_Rd_Data_Valid),
        .REG0(ALU_OP_A),
        .REG1(ALU_OP_B),
        .REG2(CONFIG),
        .REG3(TX_CLK_DIV_RATIO)
    );

    // 9. REF_RST_Sync
    RST_Sync #(
        .NUM_STAGES(2)
    ) u_REF_RST_Sync (
        .CLK(REF_CLK_M),
        .RST(RST_M),
        .sync_RST(SYNC_REF_RST)
    );

    // 10. UART_RST_Sync
    RST_Sync #(
        .NUM_STAGES(2)
    ) u_UART_RST_Sync (
        .CLK(UART_CLK_M),
        .RST(RST_M),
        .sync_RST(SYNC_UART_RST)
    );

    // 11. CLK_GATE
    CLK_GATE u_CLK_GATE
    (
        .CLK(REF_CLK_M),
        .CLK_EN(CLK_Gate_EN|test_mode),
        .GATED_CLK(ALU_CLK)
    );

    // 12. Sys_Ctrl
    Sys_Ctrl #(
        .DATA_WIDTH(DATA_WIDTH)
    ) u_SysCtrl (
        .CLK(REF_CLK_M),
        .RST(SYNC_REF_RST_M),
        .ALU_OUT(ALU_OUT),
        .OUT_VALID(ALU_OUT_VALID),
        .RF_RdData(RF_Rd_Data),
        .Rd_D_Valid(RF_Rd_Data_Valid),
        .RX_P_DATA(Sync_RX_P_DATA),
        .RX_D_VALID(Sync_RX_D_VALID),
        .FIFO_FULL(FIFO_FULL),
        .ALU_FUN(ALU_FUN),
        .ALU_EN(ALU_EN),
        .CLK_EN(CLK_Gate_EN),
        .RF_WrData(RF_Wr_Data),
        .RF_ADDR(RF_ADDR),
        .WrEn(RF_WrEn),
        .RdEn(RF_RdEn),
        .FIFO_W_INC(FIFO_WR_INC),
        .FIFO_WR_DATA(FIFO_WR_DATA),
        .CLK_DIV_EN(CLK_DIV_EN)
    );

   // 13. UART
 UART u_UART (
        .TX_CLK       (TX_CLK_M),
        .RX_CLK       (RX_CLK_M),
        .RST          (SYNC_UART_RST_M),
        .Prescale     (CONFIG[7:2]),
        .PAR_EN       (CONFIG[0]),
        .PAR_TYP      (CONFIG[1]),
        .TX_P_DATA    (FIFO_RD_DATA),
        .TX_DATA_VALID(~FIFO_EMPTY),
        .TX_OUT       (TX_OUT),
        .TX_BUSY      (TX_BUSY),
        .RX_IN        (RX_IN),
        .RX_P_DATA    (RX_P_DATA),
        .RX_DATA_VALID(RX_D_VALID)
    );

endmodule
