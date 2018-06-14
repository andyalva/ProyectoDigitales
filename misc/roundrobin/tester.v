module tester(clk, id, empty, request, reset);

output reg [11:0] request;
output reg [1:0] id;
output reg [3:0] empty;
output reg clk;
output reg reset;

   initial
     begin
	clk = 1;
	request = 12'b001110000110;
	id = 0;
	reset = 1;
	empty = 0;
	#5 reset = 0;
	#10;
	$display ("mem1[0] = %b", robin.mem1[0]);
	$display ("mem1[1] = %b", robin.mem1[1]);
	$display ("mem1[2] = %b", robin.mem1[2]);
	$display ("mem1[3] = %b", robin.mem1[3]);
	$display ("mem1[4] = %b", robin.mem1[4]);
	#4 $finish;
     end

   always
     begin
	#1 clk = ~clk;
     end

endmodule
