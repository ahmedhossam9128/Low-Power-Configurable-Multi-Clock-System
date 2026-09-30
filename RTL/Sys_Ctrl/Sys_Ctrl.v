module Sys_Ctrl #(parameter DATA_WIDTH = 8)(
    input                            CLK, RST,
    input      [2*DATA_WIDTH - 1 : 0] ALU_OUT,
    input                            OUT_VALID,
    input      [DATA_WIDTH - 1 : 0]  RF_RdData,
    input                            Rd_D_Valid, 
    input      [DATA_WIDTH - 1 : 0]  RX_P_DATA,
    input                            RX_D_VALID,
    input                            FIFO_FULL,
    
    output reg [3:0]                 ALU_FUN,
    output reg                       ALU_EN,
    output reg                       CLK_EN,
    output reg [DATA_WIDTH - 1 : 0]  RF_WrData,
    output reg [3:0]                 RF_ADDR,
    output reg                       WrEn, RdEn,
    output reg                       FIFO_W_INC,
    output reg [DATA_WIDTH - 1 : 0]  FIFO_WR_DATA,
    output reg                       CLK_DIV_EN
);

    // Command Decoding
    localparam RF_Wr_CMD     = 8'hAA,
               RF_Rd_CMD     = 8'hBB,
               ALU_OP_CMD    = 8'hCC,
               ALU_NO_OP_CMD = 8'hDD;

    // FSM State Encoding
    localparam fetch             = 4'b0000,
               RF_Read           = 4'b0001,
               RF_Wr_ADDR        = 4'b0011,
               RF_Wr_Data        = 4'b0010,
               ALU_OP_A          = 4'b0100,
               ALU_OP_B          = 4'b0101,
               ALU_FUNC          = 4'b0111,
               ALU_Output_frame1 = 4'b0110,
               ALU_Output_frame2 = 4'b1110,
               RF_Output_Data    = 4'b1111;

    reg [3:0] Cur_S, Nx_S;

    // State Register
    always @(posedge CLK or negedge RST) begin
        if (!RST)
            Cur_S <= fetch;
        else
            Cur_S <= Nx_S;
    end

    // Next State Logic
    always @(*) begin
        case (Cur_S)
            fetch: begin
                if (RX_D_VALID) begin
                    case (RX_P_DATA)
                        RF_Rd_CMD:     Nx_S = RF_Read;
                        RF_Wr_CMD:     Nx_S = RF_Wr_ADDR;
                        ALU_OP_CMD:    Nx_S = ALU_OP_A;
                        ALU_NO_OP_CMD: Nx_S = ALU_FUNC;
                        default:       Nx_S = fetch;
                    endcase
                end else begin
                    Nx_S = fetch;
                end
            end

            RF_Read: begin
                if (Rd_D_Valid)
                    Nx_S = RF_Output_Data;
                else
                    Nx_S = RF_Read;
            end

            RF_Wr_ADDR: begin
                if (RX_D_VALID)
                    Nx_S = RF_Wr_Data;
                else
                    Nx_S = RF_Wr_ADDR;
            end

            RF_Wr_Data: begin
                if (RX_D_VALID)
                    Nx_S = fetch;
                else
                    Nx_S = RF_Wr_Data;
            end

            ALU_OP_A: begin
                if (RX_D_VALID)
                    Nx_S = ALU_OP_B;
                else
                    Nx_S = ALU_OP_A;
            end

            ALU_OP_B: begin
                if (RX_D_VALID)
                    Nx_S = ALU_FUNC;
                else
                    Nx_S = ALU_OP_B;
            end

            ALU_FUNC: begin
                if (OUT_VALID)
                    Nx_S = ALU_Output_frame1;
                else
                    Nx_S = ALU_FUNC;
            end

            ALU_Output_frame1: begin
                if (!FIFO_FULL)
                    Nx_S = ALU_Output_frame2;
                else
                    Nx_S = ALU_Output_frame1;
            end

            ALU_Output_frame2: begin
                if (!FIFO_FULL)
                    Nx_S = fetch;
                else
                    Nx_S = ALU_Output_frame2;
            end

            RF_Output_Data: begin
                if (!FIFO_FULL)
                    Nx_S = fetch;
                else
                    Nx_S = RF_Output_Data;
            end

            default: Nx_S = fetch;
        endcase
    end

    // Registered Output Logic
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            ALU_FUN      <= 4'b0;
            ALU_EN       <= 1'b0;
            CLK_EN       <= 1'b0;
            RF_WrData    <= {DATA_WIDTH{1'b0}};
            RF_ADDR      <= 4'b0;
            WrEn         <= 1'b0;
            RdEn         <= 1'b0;
            FIFO_W_INC   <= 1'b0;
            FIFO_WR_DATA <= {DATA_WIDTH{1'b0}};
            CLK_DIV_EN   <= 1'b1;
        end else begin
                    ALU_EN       <= 1'b0;
                    CLK_EN       <= 1'b0;
                    RF_WrData    <= {DATA_WIDTH{1'b0}};
                    WrEn         <= 1'b0;
                    RdEn         <= 1'b0;
                    FIFO_W_INC   <= 1'b0;
                    CLK_DIV_EN   <= 1'b1;

            case (Cur_S)
                fetch: begin
                    ALU_FUN      <= 4'b0;
                    ALU_EN       <= 1'b0;
                    CLK_EN       <= 1'b0;
                    RF_WrData    <= {DATA_WIDTH{1'b0}};
                    RF_ADDR      <= 4'b0;
                    WrEn         <= 1'b0;
                    RdEn         <= 1'b0;
                    FIFO_W_INC   <= 1'b0;
                    FIFO_WR_DATA <= {DATA_WIDTH{1'b0}};
                    CLK_DIV_EN   <= 1'b1;
                end

                RF_Read: begin
                    if (RX_D_VALID) begin
                        RF_ADDR <= RX_P_DATA[3:0]; 
                        RdEn    <= 1'b1;
                    end
                end

                RF_Output_Data: begin
                    if (!FIFO_FULL) begin
                        FIFO_WR_DATA <= RF_RdData;
                        FIFO_W_INC   <= 1'b1;
                    end
                end

                RF_Wr_ADDR: begin
                    if (RX_D_VALID)
                        RF_ADDR <= RX_P_DATA[3:0]; 
                end

                RF_Wr_Data: begin
                    if (RX_D_VALID) 
                    begin
                        RF_WrData <= RX_P_DATA;
                        WrEn      <= 1'b1;
                    end
                end

                ALU_OP_A:
                begin
                    RF_ADDR   <= 4'd0; // REG0 = Operand A
                    if (RX_D_VALID) 
                    begin
                        RF_WrData <= RX_P_DATA;
                        WrEn      <= 1'b1;
                    end
                end

                ALU_OP_B: 
                begin
                    RF_ADDR   <= 4'd1; // REG1 = Operand B
                    if (RX_D_VALID) 
                    begin
                        RF_WrData <= RX_P_DATA;
                        WrEn      <= 1'b1;
                    end
                end

                ALU_FUNC: 
                begin
                    if (RX_D_VALID)
                    begin
                        CLK_EN <= 1'b1;
                        ALU_FUN <= RX_P_DATA[3:0];
                        ALU_EN <= 1'b1;
                    end
                end

                ALU_Output_frame1: begin
                    CLK_EN <= 1'b1;
                    if (!FIFO_FULL) begin
                        FIFO_WR_DATA <= ALU_OUT[7:0];
                        FIFO_W_INC   <= 1'b1;
                    end
                end

                ALU_Output_frame2: begin
                    CLK_EN <= 1'b1;
                    if (!FIFO_FULL) begin
                        FIFO_WR_DATA <= ALU_OUT[15:8];
                        FIFO_W_INC   <= 1'b1;
                    end
                end

                default: ;
            endcase
        end
    end

endmodule