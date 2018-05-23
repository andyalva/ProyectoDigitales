all:
	iverilog -o byte_striping byte_striping.v
	iverilog -o bpbs bpbs.v
	iverilog -o tbbs tbbs.v
	vvp tbbs
	gtkwave prueba_Byte_Striping.vcd
	
clean:
	rm byte_striping bpbs tbbs prueba_Byte_Striping.vcd
