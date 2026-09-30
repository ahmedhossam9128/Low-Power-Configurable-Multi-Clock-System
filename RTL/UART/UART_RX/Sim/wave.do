onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TestBench -color Cyan /UART_RX_tb/CLK
add wave -noupdate -group TestBench -color Orange /UART_RX_tb/RST
add wave -noupdate -group TestBench /UART_RX_tb/CLK_PER
add wave -noupdate -group TestBench -color Khaki /UART_RX_tb/RX_IN
add wave -noupdate -group TestBench /UART_RX_tb/Prescale
add wave -noupdate -group TestBench /UART_RX_tb/data_valid
add wave -noupdate -group TestBench /UART_RX_tb/Parity_Error
add wave -noupdate -group TestBench /UART_RX_tb/Stop_Error
add wave -noupdate -group TestBench -radix unsigned /UART_RX_tb/test_num
add wave -noupdate -group TestBench -radix unsigned /UART_RX_tb/pass_count
add wave -noupdate -group TestBench -radix unsigned /UART_RX_tb/fail_count
add wave -noupdate -expand -group {Edge Bit Counter} -color Cyan /UART_RX_tb/CLK
add wave -noupdate -expand -group {Edge Bit Counter} -color Orange /UART_RX_tb/RST
add wave -noupdate -expand -group {Edge Bit Counter} /UART_RX_tb/DUT/u_Edge_Bit_Counter/Count_En
add wave -noupdate -expand -group {Edge Bit Counter} -color {Medium Orchid} -radix unsigned /UART_RX_tb/DUT/u_Edge_Bit_Counter/Edge_Count
add wave -noupdate -expand -group {Edge Bit Counter} -color {Blue Violet} -radix unsigned /UART_RX_tb/DUT/u_Edge_Bit_Counter/Bit_Count
add wave -noupdate -expand -group Sampler -color Cyan /UART_RX_tb/CLK
add wave -noupdate -expand -group Sampler -color Orange /UART_RX_tb/RST
add wave -noupdate -expand -group Sampler /UART_RX_tb/DUT/u_Sampler/Data_Sample_En
add wave -noupdate -expand -group Sampler -color Khaki /UART_RX_tb/RX_IN
add wave -noupdate -expand -group Sampler -color Blue /UART_RX_tb/DUT/u_Sampler/sampled_bit
add wave -noupdate -expand -group Sampler -radix unsigned /UART_RX_tb/DUT/u_Sampler/Edge_Count
add wave -noupdate -expand -group Sampler -color {Blue Violet} -radix unsigned /UART_RX_tb/DUT/u_Edge_Bit_Counter/Bit_Count
add wave -noupdate -expand -group Sampler -color {Slate Blue} /UART_RX_tb/DUT/u_UART_RX_FSM/Cur_S
add wave -noupdate -group Deserializer -color Cyan /UART_RX_tb/CLK
add wave -noupdate -group Deserializer -color Orange /UART_RX_tb/RST
add wave -noupdate -group Deserializer /UART_RX_tb/DUT/u_Deserializer/P_DATA
add wave -noupdate -group Deserializer -color Blue /UART_RX_tb/DUT/u_Stop_Checker/sampled_bit
add wave -noupdate -expand -group {Start Glitch} -color Cyan /UART_RX_tb/CLK
add wave -noupdate -expand -group {Start Glitch} /UART_RX_tb/DUT/u_Start_Checker/Str_Chk_En
add wave -noupdate -expand -group {Start Glitch} /UART_RX_tb/DUT/u_Start_Checker/start_glitch
add wave -noupdate -expand -group {Start Glitch} -color Blue /UART_RX_tb/DUT/u_Stop_Checker/sampled_bit
add wave -noupdate -group {Stop Checker} -color Cyan /UART_RX_tb/CLK
add wave -noupdate -group {Stop Checker} -color Orange /UART_RX_tb/RST
add wave -noupdate -group {Stop Checker} /UART_RX_tb/DUT/u_Stop_Checker/stp_err
add wave -noupdate -group {Stop Checker} /UART_RX_tb/DUT/u_Stop_Checker/Stp_Chk_En
add wave -noupdate -group {Stop Checker} -color Blue /UART_RX_tb/DUT/u_Stop_Checker/sampled_bit
add wave -noupdate -expand -group {Parity Checker} -color Cyan /UART_RX_tb/CLK
add wave -noupdate -expand -group {Parity Checker} -color Orange /UART_RX_tb/RST
add wave -noupdate -expand -group {Parity Checker} /UART_RX_tb/DUT/u_Parity_Checker/PAR_Chk_En
add wave -noupdate -expand -group {Parity Checker} /UART_RX_tb/PAR_EN
add wave -noupdate -expand -group {Parity Checker} /UART_RX_tb/PAR_TYP
add wave -noupdate -expand -group {Parity Checker} /UART_RX_tb/P_DATA
add wave -noupdate -expand -group {Parity Checker} -color Blue /UART_RX_tb/DUT/u_Stop_Checker/sampled_bit
add wave -noupdate -expand -group {Parity Checker} /UART_RX_tb/DUT/u_Parity_Checker/par_err
add wave -noupdate -expand -group {Parity Checker} /UART_RX_tb/DUT/u_Parity_Checker/par_bit
add wave -noupdate -expand -group FSM -color Cyan /UART_RX_tb/CLK
add wave -noupdate -expand -group FSM -color Orange /UART_RX_tb/RST
add wave -noupdate -expand -group FSM -expand -group State -color Gray90 /UART_RX_tb/DUT/u_UART_RX_FSM/Nx_S
add wave -noupdate -expand -group FSM -expand -group State -color {Slate Blue} /UART_RX_tb/DUT/u_UART_RX_FSM/Cur_S
add wave -noupdate -expand -group FSM -color Khaki /UART_RX_tb/RX_IN
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/u_UART_RX_FSM/DATA_VALID
add wave -noupdate -expand -group FSM -color {Blue Violet} -radix unsigned /UART_RX_tb/DUT/u_UART_RX_FSM/Bit_Count
add wave -noupdate -expand -group FSM -expand -group {Control Signals} /UART_RX_tb/DUT/u_UART_RX_FSM/Str_Chk_En
add wave -noupdate -expand -group FSM -expand -group {Control Signals} /UART_RX_tb/DUT/u_UART_RX_FSM/Stp_Chk_En
add wave -noupdate -expand -group FSM -expand -group {Control Signals} /UART_RX_tb/DUT/u_UART_RX_FSM/PAR_EN
add wave -noupdate -expand -group FSM -expand -group {Control Signals} /UART_RX_tb/DUT/u_UART_RX_FSM/PAR_Chk_En
add wave -noupdate -expand -group FSM -expand -group {Control Signals} /UART_RX_tb/DUT/u_UART_RX_FSM/deser_En
add wave -noupdate -expand -group FSM -expand -group {Control Signals} /UART_RX_tb/DUT/u_UART_RX_FSM/Data_Sample_En
add wave -noupdate -expand -group FSM -expand -group {Control Signals} /UART_RX_tb/DUT/u_UART_RX_FSM/Count_En
add wave -noupdate -expand -group FSM -expand -group {Check Errors} /UART_RX_tb/DUT/u_UART_RX_FSM/stp_err
add wave -noupdate -expand -group FSM -expand -group {Check Errors} /UART_RX_tb/DUT/u_UART_RX_FSM/start_glitch
add wave -noupdate -expand -group FSM -expand -group {Check Errors} /UART_RX_tb/DUT/u_Parity_Checker/par_err
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {818152906 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 72
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
WaveRestoreZoom {799220974 ps} {857679086 ps}
