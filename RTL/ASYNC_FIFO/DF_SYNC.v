module DF_SYNC #(parameter DEPTH = 8)(
    input clk, rst,
    input  [$clog2(DEPTH) : 0] ptr,
    output [$clog2(DEPTH) : 0] sync_ptr
);

    // 2-stage synchronizer array holding full pointer vectors
    reg [$clog2(DEPTH) : 0] sync_reg [1:0];

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            sync_reg[0] <= 'b0;
            sync_reg[1] <= 'b0;
        end else begin
            sync_reg[0] <= ptr;         // Stage 1: Capture input vector
            sync_reg[1] <= sync_reg[0]; // Stage 2: Pass to second flop
        end
    end

    // Output synchronized vector from stage 2
    assign sync_ptr = sync_reg[1];

endmodule