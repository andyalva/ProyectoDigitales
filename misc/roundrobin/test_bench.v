`include "tester.v" // Agrega archivo de codigo
`include "roundrobin.v" // Agrega archivo de codigo


module test_bench();

	wire clk;
	wire [19:0] request;
	wire reset;
	wire [1:0] pop_id;
	wire [3:0] empty;
	wire valid;

  	tester probador (reset, request, pop_id, clk, empty, valid); 
  	roundrobin roundrobin (reset, request, pop_id, clk, empty, valid); 
	
  	initial
    		begin
      			$dumpfile("simulation.vcd");
      			$dumpvars;
    		end

endmodule

