###################################################################

# Created by write_sdc on Sun Sep 27 02:16:33 2026

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c            \
-max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c\
                         -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c            \
-min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library                                     \
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports RX_IN]
set_load -pin_load 0.5 [get_ports TX_OUT]
create_clock [get_ports REF_CLK]  -name REF_Clock  -period 10  -waveform {0 5}
set_clock_uncertainty 0.5  [get_clocks REF_Clock]
set_clock_transition -max -rise 0.01 [get_clocks REF_Clock]
set_clock_transition -max -fall 0.01 [get_clocks REF_Clock]
set_clock_transition -min -rise 0.01 [get_clocks REF_Clock]
set_clock_transition -min -fall 0.01 [get_clocks REF_Clock]
create_clock [get_ports UART_CLK]  -name UART_Clock  -period 271.267  -waveform {0 135.634}
set_clock_uncertainty 13.5634  [get_clocks UART_Clock]
set_clock_transition -max -rise 0.1 [get_clocks UART_Clock]
set_clock_transition -max -fall 0.1 [get_clocks UART_Clock]
set_clock_transition -min -rise 0.1 [get_clocks UART_Clock]
set_clock_transition -min -fall 0.1 [get_clocks UART_Clock]
create_generated_clock [get_pins u_CLK_GATE/GATED_CLK]  -name ALU_Clock  -source [get_ports REF_CLK]  -master_clock REF_Clock  -divide_by 1  -add
create_generated_clock [get_pins u_RX_CLK_DIV/o_div_clk]  -name RX_Clock  -source [get_ports UART_CLK]  -master_clock UART_Clock  -divide_by 1  -add
create_generated_clock [get_pins u_TX_CLK_DIV/o_div_clk]  -name TX_Clock  -source [get_ports UART_CLK]  -master_clock UART_Clock  -divide_by 32  -add
group_path -name INOUT  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST]          \
[get_ports RX_IN]]  -to [list [get_ports TX_OUT] [get_ports RX_D_VALID]]
group_path -name INREG  -from [list [get_ports REF_CLK] [get_ports UART_CLK] [get_ports RST]          \
[get_ports RX_IN]]
group_path -name REGOUT  -to [list [get_ports TX_OUT] [get_ports RX_D_VALID]]
set_input_delay -clock UART_Clock  40.6901  [get_ports RX_IN]
set_output_delay -clock UART_Clock  40.6901  [get_ports TX_OUT]
set_clock_groups  -asynchronous -name REF_Clock_1  -group [list         \
[get_clocks REF_Clock] [get_clocks ALU_Clock]] -group [list [get_clocks        \
UART_Clock] [get_clocks RX_Clock] [get_clocks TX_Clock]]
