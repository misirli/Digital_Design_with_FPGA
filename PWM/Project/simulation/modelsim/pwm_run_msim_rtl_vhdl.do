transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mmisirli/Desktop/Project/Digital_Design/pwm_vhdl/Project/pwm.vhd}

