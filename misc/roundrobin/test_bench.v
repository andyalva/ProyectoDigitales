`include "tester.v" // Agrega archivo de codigo
`include "robin.v" // Agrega archivo de codigo


module test_bench();

	wire clk;
	wire [3:0] empty;
	wire [1:0] id;
	wire [11:0] request;
	wire reset;

  	tester probador (clk, id, empty, request, reset); 
  	roundrobin robin (request, empty, id, clk, reset); 
	
  	initial
    		begin
      			$dumpfile("simulation.vcd");
      			$dumpvars;
    		end

endmodule

