vlib work
vlog *.*v
vsim -wlf logs/vsim.wlf -voptargs=+acc work.RST_Sync_tb
do wave.do
run -all
#quit -simvsim -wlf logs/vsim.wlf