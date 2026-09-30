vlib work
vlog ALU_16_bit.v ALU_16_bit_tb.v
vsim -voptargs=+acc work.ALU_16_bit_tb
add wave *
run -all
#quit -sim