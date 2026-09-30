onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Testbench /I_CLK_DIV_tb/i_rst_n_tb
add wave -noupdate -expand -group Testbench /I_CLK_DIV_tb/i_clk_en_tb
add wave -noupdate -expand -group Testbench -radix unsigned /I_CLK_DIV_tb/i_div_ratio_tb
add wave -noupdate -expand -group Testbench -color Cyan /I_CLK_DIV_tb/i_ref_clk_tb
add wave -noupdate -expand -group Testbench -color Cyan /I_CLK_DIV_tb/o_div_clk_tb
add wave -noupdate -expand -group Testbench -radix unsigned /I_CLK_DIV_tb/test_num
add wave -noupdate -expand -group Testbench -radix unsigned /I_CLK_DIV_tb/pass_count
add wave -noupdate -expand -group Testbench -radix unsigned /I_CLK_DIV_tb/fail_count
add wave -noupdate -expand -group DUT /I_CLK_DIV_tb/DUT/i_rst_n
add wave -noupdate -expand -group DUT /I_CLK_DIV_tb/DUT/i_clk_en
add wave -noupdate -expand -group DUT /I_CLK_DIV_tb/DUT/I_CLK_EN
add wave -noupdate -expand -group DUT -color Cyan /I_CLK_DIV_tb/DUT/i_ref_clk
add wave -noupdate -expand -group DUT -color Cyan /I_CLK_DIV_tb/DUT/o_div_clk
add wave -noupdate -expand -group DUT -radix unsigned /I_CLK_DIV_tb/DUT/i_div_ratio
add wave -noupdate -expand -group DUT -radix unsigned /I_CLK_DIV_tb/DUT/COUNTER
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4475917 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 116
configure wave -valuecolwidth 38
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
WaveRestoreZoom {0 ps} {7761152 ps}
