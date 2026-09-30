module Edge_Bit_Counter (
    input[5:0] Prescale,
    input Count_En,
    input CLK, RST,
    output reg [4:0] Edge_Count,
    output reg [3:0] Bit_Count
);

    always @ (posedge CLK or negedge RST)
    begin
        if(!RST)
        begin
            Edge_Count <= 'b0;
            Bit_Count <= 'b0;
        end
        else
        begin
            if(Count_En)
            begin
                if(Edge_Count < Prescale - 'b1)
                    Edge_Count <= Edge_Count + 'b1;
                else
                begin
                    Edge_Count <= 'b0;
                    if (Bit_Count < 'd10)
                        Bit_Count <= Bit_Count + 'b1;
                    else
                        Bit_Count <= 'b0;
                end
            end
            else
            begin
                Bit_Count <= 'b0;
                Edge_Count <= 'b0;
            end
        end
    end

endmodule