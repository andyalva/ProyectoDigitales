`timescale 1ns/100ps

`include "cmos_cells.v" 
//`include "cells_latch.v" 
`include "pcie.v" // Agrega archivo de codigo
`include "probador_pcie.v" // Agrega archivo de probador
//`include "pcie.v" 

module pruebas_pcie();

	input wire RESET;
  	wire Valid;
	wire [3:0] CONTROL;
	wire CLK;
	wire [7:0] DATA;
	wire [7:0] DATA_out;
	wire reset;

  	probador_pcie probador (RESET, reset, CONTROL, CLK, DATA, Valid); 
  	pcie PCIETest (RESET, reset, CONTROL, CLK, DATA, DATA_out); 

  	initial
    		begin
      			$dumpfile("simulation.vcd");
      			$dumpvars;

    	end

endmodule