module FIFO_WR #(parameter DEPTH = 8)(
    input w_clk,w_rst,
    input [$clog2(DEPTH) : 0] grey_r_ptr,
    input w_inc,
    output wire [$clog2(DEPTH) - 1 : 0] w_addr,
    output reg [$clog2(DEPTH) : 0] grey_w_ptr,
    output wire w_full
);

localparam addr_width = $clog2(DEPTH);

    reg [addr_width : 0] w_ptr;

    always @(posedge w_clk or negedge w_rst) begin
        if(!w_rst)
        begin
            w_ptr <= 'b0;
            grey_w_ptr <= 'b0;
        end
        else
        begin
            if(w_inc && !w_full)
                w_ptr <= w_ptr + 1;  
            grey_w_ptr <= w_ptr ^ (w_ptr >> 1);
        end
    end 

    assign w_full = grey_r_ptr[addr_width] != grey_w_ptr[addr_width] &&
                    grey_r_ptr[addr_width - 1] != grey_w_ptr[addr_width - 1] &&
                    grey_r_ptr[addr_width - 2 : 0] == grey_w_ptr[addr_width - 2 : 0];

    assign w_addr = w_ptr[addr_width - 1 : 0];

endmodule