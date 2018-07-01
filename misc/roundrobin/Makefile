all:
	iverilog -o asd test_bench.v
	vvp asd
	gtkwave simulation.vcd

sintesis:
	yosys synth_config.ys
