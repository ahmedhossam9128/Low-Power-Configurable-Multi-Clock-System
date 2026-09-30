module FIFO_RD #(parameter DEPTH = 8)(
    input r_clk,r_rst,
    input [$clog2(DEPTH) : 0] grey_w_ptr,
    input r_inc,
    output wire [$clog2(DEPTH) - 1 : 0] r_addr,
    output reg [$clog2(DEPTH) : 0] grey_r_ptr,
    output wire r_empty
);

    localparam addr_width = $clog2(DEPTH);

    reg [addr_width : 0] r_ptr;

    always @(posedge r_clk or negedge r_rst) begin
        if(!r_rst)
        begin
            r_ptr <= 'b0;
            grey_r_ptr <= 'b0;
        end
        else
        begin
            if(r_inc && !r_empty)
                r_ptr <= r_ptr + 1;
            grey_r_ptr <= r_ptr ^ (r_ptr >> 1);  
        end
    end 

    assign r_empty = grey_r_ptr == grey_w_ptr;
    assign r_addr = r_ptr[addr_width - 1 : 0];
       
endmodule