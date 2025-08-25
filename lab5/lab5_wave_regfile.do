onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /regfile_tb/clk_tb
add wave -noupdate /regfile_tb/write_tb
add wave -noupdate /regfile_tb/writenum_tb
add wave -noupdate /regfile_tb/data_in_tb
add wave -noupdate /regfile_tb/readnum_tb
add wave -noupdate /regfile_tb/data_out_tb
add wave -noupdate /regfile_tb/err
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 39
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {274 ps}
