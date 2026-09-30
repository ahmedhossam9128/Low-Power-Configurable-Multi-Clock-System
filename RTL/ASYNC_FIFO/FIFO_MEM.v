module FIFO_MEM #(parameter DATA_WIDTH = 8, DEPTH = 8)(
    input w_clk, w_rst,
    input [$clog2(DEPTH) - 1 : 0] w_addr,
    input [$clog2(DEPTH) - 1 : 0] r_addr,
    input w_inc,
    input w_full,
    input [DATA_WIDTH - 1 : 0] w_data,
    output wire [DATA_WIDTH - 1 : 0] r_data
);

    wire w_clk_en;
    reg[DATA_WIDTH - 1 : 0] mem_Buffer [0 : DEPTH - 1];

    assign w_clk_en = w_inc & (~w_full);

    integer i;

    always @(posedge w_clk or negedge w_rst)
    if(!w_rst)
    begin
        for(i = 0; i < DEPTH; i = i + 1)
            mem_Buffer[i] <= 'b0;    
    end
    else
    begin
        if(w_clk_en)
        begin
            mem_Buffer[w_addr] <= w_data;
        end    
    end

    assign r_data = mem_Buffer[r_addr];  

endmodule