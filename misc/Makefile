all:
	iverilog -o asd qos.v
	vvp asd
	gtkwave simulation.vcd