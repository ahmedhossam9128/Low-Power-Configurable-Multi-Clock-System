module UART_TX_FSM (
    input DATA_VALID,
    input[7:0] P_DATA,
    input PAR_EN,PAR_TYP,
    input ser_done,
    input CLK,RST,
    output reg [7:0] P_DATA_Registered,
    output reg busy,
    output reg ser_en,
    output reg PAR_TYP_Registered,
    output reg [1:0] mux_sel
);

localparam IDLE = 3'b000,
           Start = 3'b001,
           Transmition = 3'b011,
           PARITY = 3'b010,
           Stop = 3'b110;

reg[2:0] Cur_S , Nx_S;
reg PAR_EN_Registered;

    always @ (posedge CLK or negedge RST)
    begin
        if(!RST)
        begin
            Cur_S <= IDLE;
        end
        else
        begin
            Cur_S <= Nx_S;
        end
    end
    
    always @(*)
    begin
        case (Cur_S)
            IDLE:
            begin
                if (DATA_VALID) 
                begin
                    Nx_S = Start;
                end
                else
                    Nx_S = IDLE;
            end
            Start:
            begin
                Nx_S = Transmition;
            end
            Transmition:
            begin
                if(ser_done)
                    if (PAR_EN_Registered) 
                        Nx_S = PARITY;
                    else
                        Nx_S = Stop;
                else
                    Nx_S = Transmition;    
            end
            PARITY:
            begin
                Nx_S = Stop;
            end
            Stop:
            begin
                    Nx_S = IDLE;
            end
            default:
                Nx_S = IDLE;
        endcase    
    end

    always @ (*)
    begin
        case(Cur_S)
            IDLE:
            begin
                mux_sel = 2'b01;
                busy = 1'b0;
                ser_en = 1'b0;
            end 
            Start:
            begin
                mux_sel = 2'b00;
                busy = 1'b1;
                ser_en = 1'b0;
            end
            Transmition:
            begin
                mux_sel = 2'b10;
                busy = 1'b1;
                ser_en = 1'b1;
            end 
            PARITY:
            begin
                mux_sel = 2'b11;
                busy = 1'b1;
                ser_en = 1'b0;
            end
            Stop:
            begin
                mux_sel = 2'b01;
                busy = 1'b1;
                ser_en = 1'b0;
            end
            default: 
            begin
                mux_sel = 2'b01;
                busy = 1'b0;
                ser_en = 1'b0;
            end 
        endcase
    end

    always @(posedge CLK or negedge RST)
    begin
        if(!RST)
        begin
            P_DATA_Registered <= 8'b0;
            PAR_EN_Registered <= 1'b0;
            PAR_TYP_Registered <= 1'b0;
        end
        else if(!busy && DATA_VALID)
        begin
            P_DATA_Registered <= P_DATA;
            PAR_EN_Registered <= PAR_EN;
            PAR_TYP_Registered <= PAR_TYP;
        end
    end 

endmodule
