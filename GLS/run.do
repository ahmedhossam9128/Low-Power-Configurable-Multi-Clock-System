vdel -all -lib work
vlib work
vmap work

# Compile Standard Cell Library
vlog -sv ../std_cells/verilog/tsmc13_m.v

# Compile Gate-Level Netlist
vlog -sv ../PnR/export/System_Top.v

# Compile Testbench
vlog -sv +define+GLS ../SIM/System_Top_tb.sv

# Start Simulation
vsim -sdfmax /System_Top_tb/DUT=../PnR/export/System_Top.sdf -sdfnoerror +transport_int_delays +neg_tchk -negdelay +no_notifier +DUMP +QUICK work.System_Top_tb
# Load waveform 
do wave.do

# Run
run -all
