module I_CLK_DIV #(parameter DIV_RATIO_WIDTH = 8)(
    input i_ref_clk,
    input i_rst_n,
    input i_clk_en,
    input [DIV_RATIO_WIDTH - 1 : 0] i_div_ratio, 
    output wire o_div_clk
);

wire I_CLK_EN;
assign I_CLK_EN = i_clk_en && i_div_ratio[DIV_RATIO_WIDTH - 1 : 1] != 'b0;
reg[DIV_RATIO_WIDTH - 1 : 0] COUNTER;
reg DIVIDED_CLK;

    always @ (posedge i_ref_clk or negedge i_rst_n)
    begin
        if(!i_rst_n)
        begin
            COUNTER <= 'b0;
            DIVIDED_CLK <= 'b0;
        end
        else if(I_CLK_EN)
        begin
            if (COUNTER == (i_div_ratio >> 1) - 1) begin
                COUNTER <= COUNTER + 'b1;
                DIVIDED_CLK <= 1'b0;
            end
            else if(COUNTER == i_div_ratio - 'b1)
            begin
            DIVIDED_CLK <= 1'b1;
            COUNTER <= 'b0;
            end
            else
                COUNTER <= COUNTER + 1'b1;
        end
        else
        begin
            DIVIDED_CLK <= 'b0;
            COUNTER <= 'b0;
        end         
    end

    assign o_div_clk = I_CLK_EN ? DIVIDED_CLK : i_ref_clk;

endmodule