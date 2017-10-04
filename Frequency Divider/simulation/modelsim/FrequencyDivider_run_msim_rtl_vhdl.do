transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mmisirli/Desktop/Mustafa MISIRLI 1/Projects/Quartus II 13.1/Frequency Divider/FrequencyDivider.vhd}

