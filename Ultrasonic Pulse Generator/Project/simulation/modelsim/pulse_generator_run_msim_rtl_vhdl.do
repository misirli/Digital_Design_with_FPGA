transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mmisirli/Desktop/Mustafa MISIRLI/Project1/Digital_Design/ultrasonic_pulse_generator/Project/pulse_generator.vhd}

