onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Testbench /Data_Bus_Sync_tb/clk
add wave -noupdate -expand -group Testbench /Data_Bus_Sync_tb/rst
add wave -noupdate -expand -group Testbench -color {Yellow Green} /Data_Bus_Sync_tb/bus_enable
add wave -noupdate -expand -group Testbench -color Coral /Data_Bus_Sync_tb/enable_pulse
add wave -noupdate -expand -group Testbench -color Blue /Data_Bus_Sync_tb/Unsync_bus
add wave -noupdate -expand -group Testbench -color Cyan /Data_Bus_Sync_tb/Sync_bus
add wave -noupdate -expand -group Testbench -radix unsigned /Data_Bus_Sync_tb/run_test/pulse_count
add wave -noupdate -radix unsigned /Data_Bus_Sync_tb/error_count
add wave -noupdate -expand -group {DUT internal signals} -color {Medium Orchid} /Data_Bus_Sync_tb/DUT/Gen_Pulse
add wave -noupdate -expand -group {DUT internal signals} /Data_Bus_Sync_tb/DUT/Synced_enable
add wave -noupdate -expand -group {DUT internal signals} /Data_Bus_Sync_tb/DUT/enable_Reg
add wave -noupdate -expand -group {DUT internal signals} /Data_Bus_Sync_tb/DUT/Bit_Syncronizer
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {174237 ps} 0}
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
WaveRestoreZoom {106587 ps} {321883 ps}
