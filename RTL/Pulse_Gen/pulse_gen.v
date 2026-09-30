module pulse_gen (
    input CLK, RST,
    input Signal,
    output reg enable_pulse
);
reg Signal_reg;
wire Gen_Pulse;
assign Gen_Pulse = Signal & (~Signal_reg);

    always @(posedge CLK or negedge RST)
    if(!RST)
    begin
        Signal_reg <= 'b0;
        enable_pulse <= 'b0;
    end
    else
    begin
        Signal_reg <= Signal;
        enable_pulse <= Gen_Pulse;
    end

endmodule
