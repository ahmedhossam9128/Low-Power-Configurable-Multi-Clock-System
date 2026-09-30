module UART_RX_FSM (
    input RX_IN,
    input PAR_EN,
    input [4:0] Edge_Count,
    input Prescale,
    input [3:0] Bit_Count,
    input par_err,
    input stp_err,
    input start_glitch,
    input CLK, RST,
    output reg PAR_Chk_En,
    output reg Str_Chk_En,
    output reg Stp_Chk_En,
    output reg Count_En,
    output reg Data_Sample_En,
    output reg deser_En,
    output reg DATA_VALID
);

    localparam IDLE = 3'b000,
            START = 3'b001,
            DATA = 3'b011,
            PARITY = 3'b010,
            STOP = 3'b110;

    reg [2:0] Cur_S, Nx_S;
    reg par_err_registered;

    always @(posedge CLK or negedge RST)
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


    always @ (*)
    begin
        case(Cur_S)
            IDLE:
            begin
                if(RX_IN == 1'b0)
                    Nx_S = START;
                else
                    Nx_S = IDLE;
            end
            START:
            begin
                if(Bit_Count < 1)
                    Nx_S = START;
                else if(start_glitch)
                    Nx_S = IDLE;
                else
                    Nx_S = DATA;
            end
            DATA:
            begin
                if(Bit_Count < 9)
                    Nx_S = DATA;
                else if(PAR_EN)
                    Nx_S = PARITY;
                else 
                    Nx_S = STOP;
            end
            PARITY:
            begin
                if(Bit_Count < 10)
                    Nx_S = STOP;
            end
            STOP:
            begin
                if(RX_IN == 1'b0 && Bit_Count < 11)
                    Nx_S = START;
                else 
                    Nx_S = IDLE;
            end
            default:
                Nx_S = IDLE;
        endcase
    end

    always @ (*)
    begin 
        PAR_Chk_En = 1'b0;
        Str_Chk_En = 1'b0;
        Stp_Chk_En = 1'b0;
        Count_En = 1'b0;
        Data_Sample_En = 1'b0;
        deser_En = 1'b0;
        DATA_VALID = 1'b0;
        case(Cur_S)
            IDLE:
            begin
                PAR_Chk_En = 1'b0;
                Str_Chk_En = 1'b0;
                Stp_Chk_En = 1'b0;
                Count_En = 1'b0;
                Data_Sample_En = 1'b0;
                deser_En = 1'b0;
                DATA_VALID = 1'b0;
            end
            START:
            begin
                Str_Chk_En = 1'b1; 
                Data_Sample_En = 1'b1;  
                Count_En = 1'b1;    
            end
            DATA:
            begin
                Data_Sample_En = 1'b1;
                PAR_Chk_En = 1'b1;
                Count_En = 1'b1;
                deser_En = 1'b1; 
            end
            PARITY:
            begin
                PAR_Chk_En = 1'b1;
                Count_En = 1'b1;
            end
            STOP:
            begin
                PAR_Chk_En = 1'b0;
                Stp_Chk_En = 1'b1;
                Count_En = 1'b0;
                if(par_err_registered || stp_err)
                    DATA_VALID = 1'b0;
                else 
                    DATA_VALID = 1'b1;
            end
            default:
            begin
                PAR_Chk_En = 1'b0;
                Str_Chk_En = 1'b0;
                Stp_Chk_En = 1'b0;
                Count_En = 1'b0;
                Data_Sample_En = 1'b0;
                deser_En = 1'b0;
                DATA_VALID = 1'b0;
            end
        endcase
    end

    always @(posedge CLK or negedge RST)
    begin
        if(!RST)
            par_err_registered <= 1'b0;
        else
        begin
            case (Cur_S)
                PARITY : par_err_registered <= par_err;
            endcase
        end
    end

endmodule