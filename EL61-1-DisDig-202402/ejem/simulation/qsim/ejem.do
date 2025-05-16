onerror {quit -f}
vlib work
vlog -work work ejem.vo
vlog -work work ejem.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ejem_vlg_vec_tst
vcd file -direction ejem.msim.vcd
vcd add -internal ejem_vlg_vec_tst/*
vcd add -internal ejem_vlg_vec_tst/i1/*
add wave /*
run -all
