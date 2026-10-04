onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Testbench /System_Top_tb/RST
add wave -noupdate -expand -group Testbench /System_Top_tb/RX_IN
add wave -noupdate -expand -group Testbench /System_Top_tb/TX_OUT
add wave -noupdate -expand -group Testbench /System_Top_tb/RX_D_VALID
add wave -noupdate -expand -group Testbench -radix decimal /System_Top_tb/TGT_PAR_EN
add wave -noupdate -expand -group Testbench -radix decimal /System_Top_tb/TGT_PAR_TYP
add wave -noupdate -expand -group Testbench /System_Top_tb/cfg_par_en
add wave -noupdate -expand -group Testbench /System_Top_tb/cfg_par_typ
add wave -noupdate -expand -group Testbench -radix decimal /System_Top_tb/pass_cnt
add wave -noupdate -expand -group Testbench -radix decimal /System_Top_tb/fail_cnt
add wave -noupdate -group System_Top /System_Top_tb/DUT/DATA_WIDTH
add wave -noupdate -group System_Top /System_Top_tb/DUT/RF_DEPTH
add wave -noupdate -group System_Top /System_Top_tb/DUT/FIFO_DEPTH
add wave -noupdate -group System_Top /System_Top_tb/DUT/RF_ADDR_WIDTH
add wave -noupdate -group System_Top /System_Top_tb/DUT/REF_CLK
add wave -noupdate -group System_Top /System_Top_tb/DUT/UART_CLK
add wave -noupdate -group System_Top /System_Top_tb/DUT/RST
add wave -noupdate -group System_Top /System_Top_tb/DUT/RX_IN
add wave -noupdate -group System_Top /System_Top_tb/DUT/TX_OUT
add wave -noupdate -group System_Top /System_Top_tb/DUT/RX_D_VALID
add wave -noupdate -group System_Top /System_Top_tb/DUT/SYNC_REF_RST
add wave -noupdate -group System_Top /System_Top_tb/DUT/SYNC_UART_RST
add wave -noupdate -group System_Top /System_Top_tb/DUT/RX_CLK
add wave -noupdate -group System_Top /System_Top_tb/DUT/TX_CLK
add wave -noupdate -group System_Top /System_Top_tb/DUT/ALU_CLK
add wave -noupdate -group System_Top /System_Top_tb/DUT/CLK_Gate_EN
add wave -noupdate -group System_Top /System_Top_tb/DUT/CLK_DIV_EN
add wave -noupdate -group System_Top /System_Top_tb/DUT/CONFIG
add wave -noupdate -group System_Top /System_Top_tb/DUT/TX_CLK_DIV_RATIO
add wave -noupdate -group System_Top /System_Top_tb/DUT/RX_CLK_DIV_RATIO
add wave -noupdate -group System_Top /System_Top_tb/DUT/RF_WrEn
add wave -noupdate -group System_Top /System_Top_tb/DUT/RF_RdEn
add wave -noupdate -group System_Top /System_Top_tb/DUT/RF_ADDR
add wave -noupdate -group System_Top /System_Top_tb/DUT/RF_Wr_Data
add wave -noupdate -group System_Top /System_Top_tb/DUT/RF_Rd_Data
add wave -noupdate -group System_Top /System_Top_tb/DUT/RF_Rd_Data_Valid
add wave -noupdate -group System_Top /System_Top_tb/DUT/ALU_FUN
add wave -noupdate -group System_Top /System_Top_tb/DUT/ALU_EN
add wave -noupdate -group System_Top /System_Top_tb/DUT/ALU_OUT_VALID
add wave -noupdate -group System_Top /System_Top_tb/DUT/ALU_OUT
add wave -noupdate -group System_Top /System_Top_tb/DUT/ALU_OP_A
add wave -noupdate -group System_Top /System_Top_tb/DUT/ALU_OP_B
add wave -noupdate -group System_Top /System_Top_tb/DUT/Sync_RX_P_DATA
add wave -noupdate -group System_Top /System_Top_tb/DUT/RX_P_DATA
add wave -noupdate -group System_Top /System_Top_tb/DUT/Sync_RX_D_VALID
add wave -noupdate -group System_Top /System_Top_tb/DUT/TX_BUSY
add wave -noupdate -group System_Top /System_Top_tb/DUT/FIFO_FULL
add wave -noupdate -group System_Top /System_Top_tb/DUT/FIFO_WR_INC
add wave -noupdate -group System_Top /System_Top_tb/DUT/FIFO_EMPTY
add wave -noupdate -group System_Top /System_Top_tb/DUT/FIFO_RD_INC
add wave -noupdate -group System_Top /System_Top_tb/DUT/FIFO_RD_DATA
add wave -noupdate -group System_Top /System_Top_tb/DUT/FIFO_WR_DATA
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/WIDTH
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/A
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/B
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/ALU_FUN
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/Enable
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/CLK
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/RST
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/ALU_OUT
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/OUT_VALID
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/Comb_OUT
add wave -noupdate -expand -group ALU /System_Top_tb/DUT/u_ALU/OUT_VALID_Comb
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/DATA_WIDTH
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/DEPTH
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/W_CLK
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/R_CLK
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/W_RST
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/R_RST
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/W_INC
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/R_INC
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/WR_DATA
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/RD_DATA
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/EMPTY
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/FULL
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/w_ptr
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/r_ptr
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/sync_w_ptr
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/sync_r_ptr
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/grey_w_ptr
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/grey_r_ptr
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/r_addr
add wave -noupdate -expand -group FIFO /System_Top_tb/DUT/u_FIFO/w_addr
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/DATA_WIDTH
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/Sync_Legnth
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/Unsync_bus
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/bus_enable
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/clk
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/rst
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/Sync_bus
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/enable_pulse
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/Bit_Syncronizer
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/Synced_enable
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/enable_Reg
add wave -noupdate -group BUS_SYNC /System_Top_tb/DUT/u_BUS_SYNC/Gen_Pulse
add wave -noupdate -group RX_CLK_DIV_MUX /System_Top_tb/DUT/u_RX_CLK_DIV_MUX/PRESCALE
add wave -noupdate -group RX_CLK_DIV_MUX /System_Top_tb/DUT/u_RX_CLK_DIV_MUX/RX_CLK_DIV_RATIO
add wave -noupdate -group TX_CLK_DIVIDER -radix decimal /System_Top_tb/DUT/u_TX_CLK_DIV/DIV_RATIO_WIDTH
add wave -noupdate -group TX_CLK_DIVIDER /System_Top_tb/DUT/u_TX_CLK_DIV/i_ref_clk
add wave -noupdate -group TX_CLK_DIVIDER /System_Top_tb/DUT/u_TX_CLK_DIV/i_rst_n
add wave -noupdate -group TX_CLK_DIVIDER /System_Top_tb/DUT/u_TX_CLK_DIV/i_clk_en
add wave -noupdate -group TX_CLK_DIVIDER /System_Top_tb/DUT/u_TX_CLK_DIV/i_div_ratio
add wave -noupdate -group TX_CLK_DIVIDER /System_Top_tb/DUT/u_TX_CLK_DIV/o_div_clk
add wave -noupdate -group TX_CLK_DIVIDER /System_Top_tb/DUT/u_TX_CLK_DIV/I_CLK_EN
add wave -noupdate -group TX_CLK_DIVIDER -radix decimal /System_Top_tb/DUT/u_TX_CLK_DIV/COUNTER
add wave -noupdate -group TX_CLK_DIVIDER /System_Top_tb/DUT/u_TX_CLK_DIV/DIVIDED_CLK
add wave -noupdate -group RX_CLK_DIVIDER -radix unsigned /System_Top_tb/DUT/u_RX_CLK_DIV/DIV_RATIO_WIDTH
add wave -noupdate -group RX_CLK_DIVIDER /System_Top_tb/DUT/u_RX_CLK_DIV/i_ref_clk
add wave -noupdate -group RX_CLK_DIVIDER /System_Top_tb/DUT/u_RX_CLK_DIV/i_rst_n
add wave -noupdate -group RX_CLK_DIVIDER /System_Top_tb/DUT/u_RX_CLK_DIV/i_clk_en
add wave -noupdate -group RX_CLK_DIVIDER /System_Top_tb/DUT/u_RX_CLK_DIV/i_div_ratio
add wave -noupdate -group RX_CLK_DIVIDER /System_Top_tb/DUT/u_RX_CLK_DIV/o_div_clk
add wave -noupdate -group RX_CLK_DIVIDER /System_Top_tb/DUT/u_RX_CLK_DIV/I_CLK_EN
add wave -noupdate -group RX_CLK_DIVIDER -radix unsigned /System_Top_tb/DUT/u_RX_CLK_DIV/COUNTER
add wave -noupdate -group RX_CLK_DIVIDER /System_Top_tb/DUT/u_RX_CLK_DIV/DIVIDED_CLK
add wave -noupdate -group PULSE_GEN /System_Top_tb/DUT/u_pulse_gen/CLK
add wave -noupdate -group PULSE_GEN /System_Top_tb/DUT/u_pulse_gen/RST
add wave -noupdate -group PULSE_GEN /System_Top_tb/DUT/u_pulse_gen/Signal
add wave -noupdate -group PULSE_GEN /System_Top_tb/DUT/u_pulse_gen/enable_pulse
add wave -noupdate -group PULSE_GEN /System_Top_tb/DUT/u_pulse_gen/Signal_reg
add wave -noupdate -group PULSE_GEN /System_Top_tb/DUT/u_pulse_gen/Gen_Pulse
add wave -noupdate -expand -group REG_FILE -radix unsigned /System_Top_tb/DUT/u_RegFile/WIDTH
add wave -noupdate -expand -group REG_FILE -radix unsigned /System_Top_tb/DUT/u_RegFile/ADD_WIDTH
add wave -noupdate -expand -group REG_FILE -radix unsigned /System_Top_tb/DUT/u_RegFile/DEPTH
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/WrData
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/Address
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/WrEn
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/RdEn
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/clk
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/rst
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/RdData
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/Rd_D_Valid
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/REG0
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/REG1
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/REG2
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/REG3
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/RegFile
add wave -noupdate -expand -group REG_FILE /System_Top_tb/DUT/u_RegFile/i
add wave -noupdate -group REF_RST_Synchronizer -radix unsigned /System_Top_tb/DUT/u_REF_RST_Sync/NUM_STAGES
add wave -noupdate -group REF_RST_Synchronizer /System_Top_tb/DUT/u_REF_RST_Sync/CLK
add wave -noupdate -group REF_RST_Synchronizer /System_Top_tb/DUT/u_REF_RST_Sync/RST
add wave -noupdate -group REF_RST_Synchronizer /System_Top_tb/DUT/u_REF_RST_Sync/sync_RST
add wave -noupdate -group REF_RST_Synchronizer /System_Top_tb/DUT/u_REF_RST_Sync/sync_reg
add wave -noupdate -group UART_RST_Synchronizer -radix unsigned /System_Top_tb/DUT/u_UART_RST_Sync/NUM_STAGES
add wave -noupdate -group UART_RST_Synchronizer /System_Top_tb/DUT/u_UART_RST_Sync/CLK
add wave -noupdate -group UART_RST_Synchronizer /System_Top_tb/DUT/u_UART_RST_Sync/RST
add wave -noupdate -group UART_RST_Synchronizer /System_Top_tb/DUT/u_UART_RST_Sync/sync_RST
add wave -noupdate -group UART_RST_Synchronizer /System_Top_tb/DUT/u_UART_RST_Sync/sync_reg
add wave -noupdate -group CLK_GATE /System_Top_tb/DUT/u_CLK_GATE/CLK_EN
add wave -noupdate -group CLK_GATE /System_Top_tb/DUT/u_CLK_GATE/CLK
add wave -noupdate -group CLK_GATE /System_Top_tb/DUT/u_CLK_GATE/GATED_CLK
add wave -noupdate -group CLK_GATE /System_Top_tb/DUT/u_CLK_GATE/Latch_Out
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/CLK
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/RST
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/ALU_OUT
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/OUT_VALID
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/RF_RdData
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/Rd_D_Valid
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/RX_P_DATA
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/RX_D_VALID
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/FIFO_FULL
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/ALU_FUN
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/ALU_EN
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/CLK_EN
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/RF_WrData
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/RF_ADDR
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/WrEn
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/RdEn
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/FIFO_W_INC
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/FIFO_WR_DATA
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/CLK_DIV_EN
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/Cur_S
add wave -noupdate -expand -group Sys_Ctrl /System_Top_tb/DUT/u_SysCtrl/Nx_S
add wave -noupdate -expand -group UART /System_Top_tb/DUT/u_UART/TX_CLK
add wave -noupdate -expand -group UART /System_Top_tb/DUT/u_UART/RST
add wave -noupdate -expand -group UART /System_Top_tb/DUT/u_UART/PAR_EN
add wave -noupdate -expand -group UART /System_Top_tb/DUT/u_UART/PAR_TYP
add wave -noupdate -expand -group UART -expand -group TX /System_Top_tb/DUT/u_UART/TX_P_DATA
add wave -noupdate -expand -group UART -expand -group TX /System_Top_tb/DUT/u_UART/TX_DATA_VALID
add wave -noupdate -expand -group UART -expand -group TX /System_Top_tb/DUT/u_UART/TX_OUT
add wave -noupdate -expand -group UART -expand -group TX /System_Top_tb/DUT/u_UART/TX_BUSY
add wave -noupdate -expand -group UART -expand -group RX -radix unsigned /System_Top_tb/DUT/u_UART/Prescale
add wave -noupdate -expand -group UART -expand -group RX /System_Top_tb/DUT/u_UART/RX_CLK
add wave -noupdate -expand -group UART -expand -group RX /System_Top_tb/DUT/u_UART/RX_IN
add wave -noupdate -expand -group UART -expand -group RX /System_Top_tb/DUT/u_UART/RX_P_DATA
add wave -noupdate -expand -group UART /System_Top_tb/DUT/u_UART/RX_DATA_VALID
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3950385380 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {3441943739 ps} {4525335739 ps}
