vlib work
vlog *.*v
vsim -voptargs=+acc work.Data_Bus_Sync_tb
do wave.do
run -all
#quit -sim