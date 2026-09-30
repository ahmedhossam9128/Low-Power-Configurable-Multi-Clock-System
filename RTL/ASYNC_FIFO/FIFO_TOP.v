module FIFO_TOP #(parameter DATA_WIDTH = 8, DEPTH = 8)(
    input W_CLK,R_CLK,
    input W_RST, R_RST,
    input W_INC, R_INC,
    input [DATA_WIDTH - 1 : 0] WR_DATA,
    output wire [DATA_WIDTH - 1 : 0] RD_DATA,
    output wire EMPTY,
    output wire FULL
);


    wire [$clog2(DEPTH) : 0] w_ptr,r_ptr,sync_w_ptr,sync_r_ptr,grey_w_ptr,grey_r_ptr;
    wire [$clog2(DEPTH) - 1 : 0] r_addr,w_addr;

    FIFO_MEM #(.DATA_WIDTH(DATA_WIDTH), .DEPTH(DEPTH)) 
    u_fifo_mem (
        .w_clk(W_CLK),
        .w_rst(W_RST),
        .w_addr(w_addr),
        .r_addr(r_addr),
        .w_inc(W_INC),
        .w_full(FULL),
        .w_data(WR_DATA),
        .r_data(RD_DATA)
    );

    FIFO_WR #(.DEPTH(DEPTH))
    u_fifo_wr (
        .w_clk(W_CLK),
        .w_rst(W_RST),
        .grey_r_ptr(sync_r_ptr),
        .w_inc(W_INC),
        .w_addr(w_addr),
        .grey_w_ptr(grey_w_ptr),
        .w_full(FULL)
    );

    FIFO_RD #(.DEPTH(DEPTH))
    u_fifo_rd (
        .r_clk(R_CLK),
        .r_rst(R_RST),
        .grey_w_ptr(sync_w_ptr),
        .r_inc(R_INC),
        .r_addr(r_addr),
        .grey_r_ptr(grey_r_ptr),
        .r_empty(EMPTY)
    );

    DF_SYNC #(.DEPTH(DEPTH))
    u_sync_w2r (
        .clk(R_CLK),
        .rst(R_RST),
        .ptr(grey_w_ptr),
        .sync_ptr(sync_w_ptr)
    );

    DF_SYNC #(.DEPTH(DEPTH))
    u_sync_r2w (
        .clk(W_CLK),
        .rst(W_RST),
        .ptr(grey_r_ptr),
        .sync_ptr(sync_r_ptr)
    );

endmodule