vlib work
vlog -f uart.lst
vlog UART_tb.sv
vsim -wlf logs/vsim.wlf -voptargs=+acc work.UART_tb
add wave *
run -all
#quit -simvsim -wlf logs/vsim.wlf