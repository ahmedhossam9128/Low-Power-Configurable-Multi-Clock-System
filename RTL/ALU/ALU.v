module ALU #(parameter WIDTH = 8)(
    input[WIDTH - 1 : 0] A,B,
    input[3:0] ALU_FUN,
    input Enable,
    input CLK,RST,
    output reg[2*WIDTH - 1 : 0] ALU_OUT,
    output reg OUT_VALID
);
reg[15:0] Comb_OUT;
reg OUT_VALID_Comb;
    always@(*)
    begin
      if(Enable)
      begin
          OUT_VALID_Comb = 1'b1;
          case(ALU_FUN)
              4'b0000:          // Addition
              begin
                Comb_OUT = A + B;
              end
              4'b0001:        // Subtraction
              begin
                Comb_OUT = A - B;                
              end
              4'b0010:      // Multiplication
              begin
                Comb_OUT = A * B;                
              end
              4'b0011:      // Division
              begin
                if(B == 0)
                begin
                  Comb_OUT = 16'b0;
                end
                else
                begin
                  Comb_OUT = A / B;                
                end
              end
              4'b0100:      // AND Operation
              begin
                Comb_OUT = A & B;  
              end
              4'b0101:      // OR Operation
              begin
                Comb_OUT = A | B;  
              end
              4'b0110:      // NAND Operation
              begin
                Comb_OUT = ~(A & B);  
              end
              4'b0111:      // NOR Operation
              begin
                Comb_OUT = ~(A | B);  
              end
              4'b1000:      // XOR Operation
              begin
                Comb_OUT = A ^ B;  
              end
              4'b1001:      // XNOR Operation
              begin
                Comb_OUT = ~(A ^ B);  
              end
              4'b1010:      // Equality Comparison
              begin
                Comb_OUT = A == B;  
              end
              4'b1011:      // Greater than Comparison
              begin
                Comb_OUT = A > B ? 2'd2 : 2'd0;  
              end
              4'b1100:      // Less than Comparison
              begin
                Comb_OUT = A < B ? 2'd3 : 2'd0 ;  
              end
              4'b1101:      // Shift right Operation
              begin
                Comb_OUT = A >> 1;  
              end
              4'b1110:       // Shift left Operation
              begin
                Comb_OUT = A << 1;  
              end
              default:      // 
              begin
                Comb_OUT = 16'b0;
              end
          endcase
        end
        else
        begin
          OUT_VALID_Comb = 1'b0;
          Comb_OUT = 16'b0;
        end
    end


    always@(posedge CLK or negedge RST)
    if(!RST)
    begin
      ALU_OUT <= 'b0;
      OUT_VALID <= 'b0;
    end
    else
    begin
      ALU_OUT <= Comb_OUT;
      OUT_VALID <= OUT_VALID_Comb;
    end
endmodule