module UART_Serializer #(parameter Direction = 1)
( 
    input[7:0] P_DATA_Registered,
    input CLK,
    input ser_en,
    output wire  ser_done,
    output reg ser_data
);
    reg[2:0] Counter;
    // generate
    //     if(Direction)
    //     begin
            always @(*)
            begin
                if(ser_en)
                    ser_data = P_DATA_Registered[Counter];  
                else
                    ser_data = 1'b1;
            end

            always @ (posedge CLK)
            begin
                if(!ser_en)
                    Counter <= 'b0;
                else if(Counter != 'd7)
                    Counter <= Counter + 1'b1;
            end

            assign ser_done = Counter == 'd7;
    // end
        
    //     else
    //     begin
    //         always @(*)
    //         begin
    //             if (ser_en)
    //                 ser_data = P_DATA_Registered[Counter];
    //             else
    //                 ser_data = 1'b1;
    //         end

    //         always @ (posedge CLK)
    //         begin
    //             if(!ser_en)
    //                 Counter <= 'd7;
    //             else if(!ser_done)
    //                 Counter <= Counter - 1'b1;
    //         end

    //         assign ser_done = Counter == 'b0;              
    //     end
    // endgenerate
endmodule 
