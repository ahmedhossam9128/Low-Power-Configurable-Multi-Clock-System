onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group Testbench /FIFO_tb/W_CLK
add wave -noupdate -group Testbench /FIFO_tb/R_CLK
add wave -noupdate -group Testbench /FIFO_tb/W_RST
add wave -noupdate -group Testbench /FIFO_tb/R_RST
add wave -noupdate -group Testbench /FIFO_tb/W_INC
add wave -noupdate -group Testbench /FIFO_tb/R_INC
add wave -noupdate -group Testbench /FIFO_tb/WR_DATA
add wave -noupdate -group Testbench /FIFO_tb/RD_DATA
add wave -noupdate -group Testbench /FIFO_tb/EMPTY
add wave -noupdate -group Testbench /FIFO_tb/FULL
add wave -noupdate -group Testbench -group debugging -radix unsigned /FIFO_tb/pass_count
add wave -noupdate -group Testbench -group debugging -radix unsigned /FIFO_tb/fail_count
add wave -noupdate -group Testbench -group debugging -radix unsigned /FIFO_tb/i
add wave -noupdate -group Testbench -group debugging -radix unsigned /FIFO_tb/wr_idx
add wave -noupdate -group Testbench -group debugging -radix unsigned /FIFO_tb/rd_idx
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/w_inc
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/w_full
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/w_data
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/w_clk_en
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/w_clk
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/w_addr
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/r_data
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/r_addr
add wave -noupdate -group FIFO_MEM /FIFO_tb/DUT/u_fifo_mem/mem_Buffer
add wave -noupdate -group FIFO_WR /FIFO_tb/DUT/u_fifo_wr/w_rst
add wave -noupdate -group FIFO_WR /FIFO_tb/DUT/u_fifo_wr/w_ptr
add wave -noupdate -group FIFO_WR /FIFO_tb/DUT/u_fifo_wr/w_inc
add wave -noupdate -group FIFO_WR /FIFO_tb/DUT/u_fifo_wr/w_full
add wave -noupdate -group FIFO_WR /FIFO_tb/DUT/u_fifo_wr/w_clk
add wave -noupdate -group FIFO_WR /FIFO_tb/DUT/u_fifo_wr/w_addr
add wave -noupdate -group FIFO_WR /FIFO_tb/DUT/u_fifo_wr/grey_w_ptr
add wave -noupdate -group FIFO_WR -expand /FIFO_tb/DUT/u_fifo_wr/grey_r_ptr
add wave -noupdate -group FIFO_RD /FIFO_tb/DUT/u_fifo_rd/r_rst
add wave -noupdate -group FIFO_RD /FIFO_tb/DUT/u_fifo_rd/r_ptr
add wave -noupdate -group FIFO_RD /FIFO_tb/DUT/u_fifo_rd/r_inc
add wave -noupdate -group FIFO_RD /FIFO_tb/DUT/u_fifo_rd/r_empty
add wave -noupdate -group FIFO_RD /FIFO_tb/DUT/u_fifo_rd/r_clk
add wave -noupdate -group FIFO_RD /FIFO_tb/DUT/u_fifo_rd/r_addr
add wave -noupdate -group FIFO_RD /FIFO_tb/DUT/u_fifo_rd/grey_w_ptr
add wave -noupdate -group FIFO_RD /FIFO_tb/DUT/u_fifo_rd/grey_r_ptr
add wave -noupdate -expand -group Synchronizer_w2r /FIFO_tb/DUT/u_sync_w2r/rst
add wave -noupdate -expand -group Synchronizer_w2r /FIFO_tb/DUT/u_sync_w2r/clk
add wave -noupdate -expand -group Synchronizer_w2r /FIFO_tb/DUT/u_sync_w2r/ptr
add wave -noupdate -expand -group Synchronizer_w2r /FIFO_tb/DUT/u_sync_w2r/sync_ptr
add wave -noupdate -expand -group Synchronizer_r2w /FIFO_tb/DUT/u_sync_r2w/rst
add wave -noupdate -expand -group Synchronizer_r2w /FIFO_tb/DUT/u_sync_r2w/clk
add wave -noupdate -expand -group Synchronizer_r2w /FIFO_tb/DUT/u_sync_r2w/ptr
add wave -noupdate -expand -group Synchronizer_r2w /FIFO_tb/DUT/u_sync_r2w/sync_ptr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {74029 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {512 ns}
