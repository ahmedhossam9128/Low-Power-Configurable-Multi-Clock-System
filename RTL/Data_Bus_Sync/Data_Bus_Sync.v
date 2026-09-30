module Data_Bus_Sync #(parameter DATA_WIDTH = 8, Sync_Legnth = 2)(
    input [DATA_WIDTH - 1 : 0] Unsync_bus,
    input bus_enable,
    input clk, rst,
    output reg [DATA_WIDTH - 1 : 0] Sync_bus,
    output reg enable_pulse
);

reg [Sync_Legnth - 1 : 0] Bit_Syncronizer;
wire Synced_enable;
reg enable_Reg;
wire Gen_Pulse;

    assign Synced_enable = Bit_Syncronizer[0];
    assign Gen_Pulse = Synced_enable & ~enable_Reg;

    always @ (posedge clk or negedge rst)
    begin
        if(!rst)
        begin
            Bit_Syncronizer <= 'b0;  
        end
        else
        begin
            Bit_Syncronizer <= {bus_enable, Bit_Syncronizer[Sync_Legnth - 1 : 1]};
        end
    end


    always @(posedge clk or negedge rst) begin
        if(!rst)
        begin
            enable_Reg <= 1'b0;  
            enable_pulse <= 1'b0;
        end
        else
        begin
            enable_Reg <= Synced_enable;
            enable_pulse <= Gen_Pulse;
        end
    end

    always @(posedge clk or negedge rst) begin
        if(!rst)
        begin
            Sync_bus <= 'b0;
        end
        else
        begin
            if(Gen_Pulse)
                Sync_bus <= Unsync_bus;
            else
                Sync_bus <= Sync_bus;
        end
    end

endmodule
