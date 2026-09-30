vlib work
#vlog /home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/verilog/tsmc13_m.v
vlog -f system.lst
vlog System_Top_tb.sv
vsim -wlf logs/vsim.wlf -voptargs=+acc work.System_Top_tb
# add wave *
do wave.do
run -all
#quit -simvsim -wlf logs/vsim.wlf
