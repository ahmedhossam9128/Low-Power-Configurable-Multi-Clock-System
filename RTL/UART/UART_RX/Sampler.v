module Sampler (
    input [5:0] Prescale,
    input [4:0] Edge_Count,
    input RX_IN,
    input Data_Sample_En,
    input CLK, RST,
    output reg sampled_bit,
    output wire Sampled_flag
);

    reg first_sample,second_sample,third_sample;
    wire [4:0] first_Edge,second_Edge,third_Edge;

    assign first_Edge = (Prescale >> 1) - 1;
    assign second_Edge = (Prescale >> 1);
    assign third_Edge = (Prescale >> 1) + 1;

    always @ (posedge CLK or negedge RST)
    begin
        if(!RST)
        begin
            first_sample <= 1'b1;
            second_sample <= 1'b1;
            third_sample <= 1'b1;
        end
        else if(Data_Sample_En)
        begin
            case (Edge_Count)
                first_Edge : first_sample <= RX_IN;
                second_Edge : second_sample <= RX_IN;
                third_Edge : third_sample <= RX_IN;
            endcase  
        end  
    end

    always@(*)
    begin
        if(first_sample == third_sample)
            sampled_bit = first_sample;
        else 
            sampled_bit = second_sample;
    end
        assign Sampled_flag = Edge_Count == (Prescale >> 1) + 'd1;

endmodule
