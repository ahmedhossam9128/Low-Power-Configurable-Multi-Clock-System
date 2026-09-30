onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /UART_TX_tb/CLK_tb
add wave -noupdate -expand -group TB /UART_TX_tb/RST_tb
add wave -noupdate -expand -group TB /UART_TX_tb/PAR_EN_tb
add wave -noupdate -expand -group TB /UART_TX_tb/PAR_TYP_tb
add wave -noupdate -expand -group TB -color Yellow /UART_TX_tb/DATA_VALID_tb
add wave -noupdate -expand -group TB -color {Blue Violet} -radix binary /UART_TX_tb/P_DATA_tb
add wave -noupdate -expand -group TB -color Cyan /UART_TX_tb/TX_OUT_tb
add wave -noupdate -expand -group TB -color Magenta /UART_TX_tb/busy_tb
add wave -noupdate -expand -group TB -radix decimal /UART_TX_tb/test_case_num
add wave -noupdate -expand -group Serializer -color {Blue Violet} -radix binary /UART_TX_tb/DUT/U1/P_DATA
add wave -noupdate -expand -group Serializer -color Salmon -radix binary /UART_TX_tb/DUT/P_DATA_Registered
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/U1/CLK
add wave -noupdate -expand -group Serializer -color Maroon /UART_TX_tb/DUT/U1/ser_en
add wave -noupdate -expand -group Serializer -color Magenta /UART_TX_tb/DUT/U1/ser_done
add wave -noupdate -expand -group Serializer -color Cyan /UART_TX_tb/DUT/U1/ser_data
add wave -noupdate -expand -group Serializer /UART_TX_tb/DUT/U1/Counter
add wave -noupdate -expand -group Parity /UART_TX_tb/DUT/U2/PAR_TYP
add wave -noupdate -expand -group Parity -color {Blue Violet} -radix binary /UART_TX_tb/DUT/U2/P_DATA
add wave -noupdate -expand -group Parity -color Khaki /UART_TX_tb/DUT/U2/par_bit
add wave -noupdate -expand -group Parity -color {Medium Aquamarine} /UART_TX_tb/DUT/par_bit_Registered
add wave -noupdate -expand -group Parity /UART_TX_tb/DUT/U3/PAR_EN
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U3/ser_done
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U3/CLK
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U3/RST
add wave -noupdate -expand -group FSM -color Magenta /UART_TX_tb/DUT/U3/busy
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U3/ser_en
add wave -noupdate -expand -group FSM -color Green -radix binary /UART_TX_tb/DUT/U3/mux_sel
add wave -noupdate -expand -group FSM -color {Violet Red} /UART_TX_tb/DUT/U3/Cur_S
add wave -noupdate -expand -group FSM -color Gray70 /UART_TX_tb/DUT/U3/Nx_S
add wave -noupdate -color Green -radix binary /UART_TX_tb/DUT/U4/mux_sel
add wave -noupdate /UART_TX_tb/DUT/U4/IN0
add wave -noupdate /UART_TX_tb/DUT/U4/IN1
add wave -noupdate /UART_TX_tb/DUT/U4/IN2
add wave -noupdate /UART_TX_tb/DUT/U4/IN3
add wave -noupdate -color Cyan /UART_TX_tb/DUT/U4/mux_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {438352 ps} 0}
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
WaveRestoreZoom {393817 ps} {537081 ps}
