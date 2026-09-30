###################################################################

# Created by write_sdc on Sun Sep 27 02:16:33 2026

###################################################################
set sdc_version 2.0

sg_set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
sg_set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c            \
 -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c\
                          -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c            \
 -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
sg_set_driving_cell -lib_cell BUFX2M -library                                     \
 scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [sg_get_ports RX_IN]
sg_set_load -pin_load 0.5 [sg_get_ports TX_OUT]
sg_create_clock [sg_get_ports REF_CLK]  -name REF_Clock  -period 10  -waveform {0 5}
sg_set_clock_uncertainty 0.5  [sg_get_clocks REF_Clock]
sg_set_clock_transition -max -rise 0.01 [sg_get_clocks REF_Clock]
sg_set_clock_transition -max -fall 0.01 [sg_get_clocks REF_Clock]
sg_set_clock_transition -min -rise 0.01 [sg_get_clocks REF_Clock]
sg_set_clock_transition -min -fall 0.01 [sg_get_clocks REF_Clock]
sg_create_clock [sg_get_ports UART_CLK]  -name UART_Clock  -period 271.267  -waveform {0 135.634}
sg_set_clock_uncertainty 13.5634  [sg_get_clocks UART_Clock]
sg_set_clock_transition -max -rise 0.1 [sg_get_clocks UART_Clock]
sg_set_clock_transition -max -fall 0.1 [sg_get_clocks UART_Clock]
sg_set_clock_transition -min -rise 0.1 [sg_get_clocks UART_Clock]
sg_set_clock_transition -min -fall 0.1 [sg_get_clocks UART_Clock]
sg_create_generated_clock [sg_get_pins u_CLK_GATE/GATED_CLK]  -name ALU_Clock  -source [sg_get_ports REF_CLK]  -master_clock REF_Clock  -divide_by 1  -add
sg_create_generated_clock [sg_get_pins u_RX_CLK_DIV/o_div_clk]  -name RX_Clock  -source [sg_get_ports UART_CLK]  -master_clock UART_Clock  -divide_by 1  -add
sg_create_generated_clock [sg_get_pins u_TX_CLK_DIV/o_div_clk]  -name TX_Clock  -source [sg_get_ports UART_CLK]  -master_clock UART_Clock  -divide_by 32  -add
sg_group_path -name INOUT  -from [list [sg_get_ports REF_CLK] [sg_get_ports UART_CLK] [sg_get_ports RST]          \
 [sg_get_ports RX_IN]]  -to [list [sg_get_ports TX_OUT] [sg_get_ports RX_D_VALID]]
sg_group_path -name INREG  -from [list [sg_get_ports REF_CLK] [sg_get_ports UART_CLK] [sg_get_ports RST]          \
 [sg_get_ports RX_IN]]
sg_group_path -name REGOUT  -to [list [sg_get_ports TX_OUT] [sg_get_ports RX_D_VALID]]
sg_set_input_delay -clock UART_Clock  40.6901  [sg_get_ports RX_IN]
sg_set_output_delay -clock UART_Clock  40.6901  [sg_get_ports TX_OUT]
sg_set_clock_groups  -logically_exclusive -name REF_Clock_1  -group [list         \
 [sg_get_clocks REF_Clock] [sg_get_clocks ALU_Clock]] -group [list [sg_get_clocks        \
 UART_Clock] [sg_get_clocks RX_Clock] [sg_get_clocks TX_Clock]]
