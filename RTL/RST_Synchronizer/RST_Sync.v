module RST_Sync #(parameter NUM_STAGES = 2)(
    input CLK,
    input RST,
    output wire sync_RST
);

    reg [NUM_STAGES - 1 : 0] sync_reg;
    always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            sync_reg <= 'b0;
        else
            sync_reg[NUM_STAGES - 1 : 0] <= {1'b1,sync_reg[NUM_STAGES - 1 : 1]};  
    end

    assign sync_RST = sync_reg[0];

endmodule