all:
	iverilog -o asd test_bench_mid.v
	vvp asd
	gtkwave simulation.vcd