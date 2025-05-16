transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/UPC/DISEÑO DIGITAL/EL61-1-DisDig-202402/ejem/ejem.vhd}

