all:
	iverilog -o asd roundrobin.v
	vvp asd
	gtkwave simulation.vcd

sintesis:
	yosys synth_config.ys