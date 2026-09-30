# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load


####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs


####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

## REF Clock Constraints
set REF_CLK_PER 10;	# 100MHz CLK Frequency
set REF_CLK_SETUP_SKEW 0.2
set REF_CLK_HOLD_SKEW 0.1
set REF_CLK_LAT 0
set REF_CLK_TRANSITION 0.05

## UART Clock Constraints
set UART_CLK_PER 271.2674;	# 3.6864 MHz CLK Frequency
set UART_CLK_SETUP_SKEW 0.2
set UART_CLK_HOLD_SKEW 0.1
set UART_CLK_LAT 0
set UART_CLK_TRANSITION 0.05

####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################

############################# Reference Clock #####################################

create_clock -period $REF_CLK_PER -name REF_Clock [get_ports {REF_CLK}]

set_clock_uncertainty -setup $REF_CLK_SETUP_SKEW [get_clocks {REF_Clock}]

set_clock_uncertainty -hold $REF_CLK_HOLD_SKEW [get_clocks {REF_Clock}]

set_clock_transition $REF_CLK_TRANSITION [get_clocks {REF_Clock}]

############################## UART Clock #########################################

create_clock -period $UART_CLK_PER -name UART_Clock [get_ports {UART_CLK}]

set_clock_uncertainty -setup $UART_CLK_SETUP_SKEW [get_clocks {UART_Clock}]

set_clock_uncertainty -hold $UART_CLK_HOLD_SKEW [get_clocks {UART_Clock}]

set_clock_transition $UART_CLK_TRANSITION [get_clocks {UART_Clock}]

############################## Generated Clocks ###################################

create_generated_clock -master_clock REF_Clock -source [get_ports REF_CLK] -name ALU_Clock [get_pins u_CLK_GATE/GATED_CLK] -divide_by 1

create_generated_clock -master_clock UART_Clock -source [get_ports UART_CLK] -name RX_Clock [get_pins u_RX_CLK_DIV/o_div_clk] -divide_by 1

create_generated_clock -master_clock UART_Clock -source [get_ports UART_CLK] -name TX_Clock [get_pins u_TX_CLK_DIV/o_div_clk] -divide_by 32

############################## Scan Clock ########################################

set_clock_groups -asynchronous -group [get_clocks {REF_Clock ALU_Clock}]     \
                                      -group [get_clocks {UART_Clock RX_Clock TX_Clock}]

set_dont_touch_network [get_clocks {REF_Clock UART_Clock ALU_Clock RX_Clock TX_Clock}] ;   
set_dont_touch_network [add_to_collection [get_ports RST] [get_pins {u_REF_RST_Sync/sync_RST u_UART_RST_Sync/sync_RST}]];                   

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.2*$UART_CLK_PER]
set out_delay [expr 0.2*$UART_CLK_PER]

#Constrain Input Paths
set IN_Ports [list RX_IN]
set_input_delay $in_delay -clock UART_Clock [get_ports $IN_Ports]

#Constrain Output Paths
set OUT_Ports [list TX_OUT]
set_output_delay $out_delay -clock UART_Clock [get_ports $OUT_Ports]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set SSLIB_Name "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

set_driving_cell -library $SSLIB_Name -lib_cell BUFX2M [get_ports $IN_Ports]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports $OUT_Ports]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################
set FFLIB_Name "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"

# Define the Worst Library for Max(#setup) analysis
set Worst_Condition "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

# Define the Best Library for Min(hold) analysis
set Best_Condition "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c"

set_operating_conditions -max_library $SSLIB_Name -max $Worst_Condition -min_library $FFLIB_Name -min $Best_Condition

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

#set_wire_load_model -name "tsmc13_wl10" -library $SSLIB_Name


####################################################################################
           #########################################################
                  #### Section 8 : Case Analysis ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 9 : multicycle path ####
           #########################################################
####################################################################################


