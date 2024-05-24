transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {/home/nidu/GitHub/learning_VHDL/flpr.vhd}
vcom -2008 -work work {/home/nidu/GitHub/learning_VHDL/flpenr.vhd}
vcom -2008 -work work {/home/nidu/GitHub/learning_VHDL/dl.vhd}
vcom -2008 -work work {/home/nidu/GitHub/learning_VHDL/seven_seg_decoder.vhd}
vcom -2008 -work work {/home/nidu/GitHub/learning_VHDL/fulladder.vhd}
vcom -2008 -work work {/home/nidu/GitHub/learning_VHDL/fulladderw.vhd}
vcom -2008 -work work {/home/nidu/GitHub/learning_VHDL/sync_two_dff.vhd}
vcom -2008 -work work {/home/nidu/GitHub/learning_VHDL/sync_two_dffw.vhd}

