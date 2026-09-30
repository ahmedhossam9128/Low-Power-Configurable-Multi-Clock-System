vlib work
vlog *.*v
vsim -voptargs=+acc work.I_CLK_DIV_tb
do wave.do
run -all
#quit -sim