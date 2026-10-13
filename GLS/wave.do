onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group testbench /System_Top_tb/TX_OUT
add wave -noupdate -expand -group testbench /System_Top_tb/parity_error
add wave -noupdate -expand -group testbench /System_Top_tb/framing_error
add wave -noupdate -expand -group testbench /System_Top_tb/TGT_PAR_EN
add wave -noupdate -expand -group testbench /System_Top_tb/TGT_PAR_TYP
add wave -noupdate -expand -group UART /System_Top_tb/DUT/REF_CLK
add wave -noupdate -expand -group UART /System_Top_tb/DUT/UART_CLK
add wave -noupdate -expand -group UART /System_Top_tb/DUT/RST_N
add wave -noupdate -expand -group UART /System_Top_tb/DUT/UART_RX_IN
add wave -noupdate -expand -group UART /System_Top_tb/DUT/UART_TX_O
add wave -noupdate -expand -group UART /System_Top_tb/DUT/framing_error
add wave -noupdate -expand -group UART /System_Top_tb/DUT/parity_error
add wave -noupdate -expand -group UART -group TX /System_Top_tb/DUT/u_SysCtrl/Cur_S
add wave -noupdate -expand -group UART -group TX /System_Top_tb/DUT/u_UART/u_UART_TX_TOP/ser_en
add wave -noupdate -expand -group UART -group TX /System_Top_tb/DUT/u_UART/u_UART_TX_TOP/ser_done
add wave -noupdate -expand -group UART -group TX /System_Top_tb/DUT/u_UART/u_UART_TX_TOP/ser_data
add wave -noupdate -expand -group UART -group TX /System_Top_tb/DUT/u_UART/u_UART_TX_TOP/PAR_TYP_Registered
add wave -noupdate -expand -group UART -group TX /System_Top_tb/DUT/u_UART/u_UART_TX_TOP/par_bit
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_TX_TOP/P_DATA_Registered
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/par_err
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/dat_samp_en
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/sampled_bit
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/Sampled_flag
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/count_en
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/deser_en
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/strt_chk_en
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/start_glitch
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/stp_chk_en
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/par_chk_en
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/u_Parity_Checker/par_err
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/u_Parity_Checker/par_bit
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/u_UART_RX_FSM/DATA_VALID_Comb
add wave -noupdate -expand -group UART -group RX /System_Top_tb/DUT/u_UART/u_UART_RX/u_UART_RX_FSM/Cur_S
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/SYNC_REF_RST
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/SYNC_REF_RST_M
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/SYNC_UART_RST
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/SYNC_UART_RST_M
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/REF_CLK_M
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/ALU_CLK
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/ALU_CLK_M
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/UART_CLK_M
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/TX_CLK
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/TX_CLK_M
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/RX_CLK
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/RX_CLK_M
add wave -noupdate -group Clocks/RSTs /System_Top_tb/DUT/RST_M
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/ALU_EN
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/ALU_OUT_VALID
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/FIFO_WR_INC
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/FIFO_RD_INC
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/FIFO_EMPTY
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/FIFO_FULL
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/RX_D_VALID
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/Sync_RX_D_VALID
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/TX_BUSY
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/RF_WrEn
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/RF_RdEn
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/RF_Rd_Data_Valid
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/ALU_OP_A
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/ALU_OP_B
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/ALU_FUN
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/ALU_OUT
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/FIFO_WR_DATA
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/FIFO_RD_DATA
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/RX_P_DATA
add wave -noupdate -group Sys_Ctrl /System_Top_tb/DUT/Sync_RX_P_DATA
add wave -noupdate -group RF /System_Top_tb/DUT/CONFIG
add wave -noupdate -group RF /System_Top_tb/DUT/RX_CLK_DIV_RATIO
add wave -noupdate -group RF /System_Top_tb/DUT/TX_CLK_DIV_RATIO
add wave -noupdate -group RF /System_Top_tb/DUT/RF_Wr_Data
add wave -noupdate -group RF /System_Top_tb/DUT/RF_ADDR
add wave -noupdate -group RF /System_Top_tb/DUT/RF_Rd_Data
add wave -noupdate -group FIFO /System_Top_tb/DUT/u_FIFO/w_addr
add wave -noupdate -group FIFO /System_Top_tb/DUT/u_FIFO/r_addr
add wave -noupdate -group FIFO /System_Top_tb/DUT/u_FIFO/sync_r_ptr
add wave -noupdate -group FIFO /System_Top_tb/DUT/u_FIFO/grey_w_ptr
add wave -noupdate -group FIFO /System_Top_tb/DUT/u_FIFO/sync_w_ptr
add wave -noupdate -group FIFO /System_Top_tb/DUT/u_FIFO/grey_r_ptr
add wave -noupdate -group FIFO {/System_Top_tb/DUT/u_FIFO/u_sync_w2r/\sync_reg[0][3] }
add wave -noupdate -group FIFO {/System_Top_tb/DUT/u_FIFO/u_sync_w2r/\sync_reg[0][2] }
add wave -noupdate -group FIFO {/System_Top_tb/DUT/u_FIFO/u_sync_w2r/\sync_reg[0][1] }
add wave -noupdate -group FIFO {/System_Top_tb/DUT/u_FIFO/u_sync_w2r/\sync_reg[0][0] }
add wave -noupdate -group FIFO {/System_Top_tb/DUT/u_FIFO/u_sync_r2w/\sync_reg[0][3] }
add wave -noupdate -group FIFO {/System_Top_tb/DUT/u_FIFO/u_sync_r2w/\sync_reg[0][2] }
add wave -noupdate -group FIFO {/System_Top_tb/DUT/u_FIFO/u_sync_r2w/\sync_reg[0][1] }
add wave -noupdate -group FIFO {/System_Top_tb/DUT/u_FIFO/u_sync_r2w/\sync_reg[0][0] }
add wave -noupdate -group Data_Sync /System_Top_tb/DUT/u_BUS_SYNC/enable_Reg
add wave -noupdate -group Data_Sync /System_Top_tb/DUT/u_BUS_SYNC/Gen_Pulse
add wave -noupdate -group Data_Sync /System_Top_tb/DUT/u_BUS_SYNC/Bit_Syncronizer
add wave -noupdate /System_Top_tb/DUT/u_pulse_gen/Gen_Pulse
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {52688963485 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 167
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {51949192745 ps} {56331153895 ps}
