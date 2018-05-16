`timescale 1ns/100ps

`include "mux_de_control_forzado.v" // Agrega archivo de codigo
`include "probador_mux_de_control_forzado.v" // Agrega archivo de probador

module pruebas_mux_de_control_forzado();

	wire VALID;
	wire CLK;
  	wire [7:0] OUT;
  	input wire [3:0] CONTROL;

  	probador_mux_de_control_forzado probador (CONTROL, CLK, VALID, OUT); 
  	mux_de_control_forzado muxDeControlForzado (CONTROL, VALID, 8'hFF, CLK, OUT); 

  	initial
    		begin
      			$dumpfile("simulation.vcd");
      			$dumpvars;

    	end

endmodule
