//Tarea 6 Alejandro Rojas Cordero B36049
`include "byte_striping.v"
module bpbs ( output reg clk, reset, valid,
   output reg [7:0] data,
   output reg [7:0] data_out0, data_out1, data_out2, data_out3);

   initial
     begin	
	reset=0;
	clk=0;
	valid=0;
	data <= 8'b00000000;
	data_out0 <= 8'b00000000;
	data_out1 <= 8'b00000000;
	data_out2 <= 8'b00000000;
	data_out3 <= 8'b00000000;
	#15 valid=1;
	#30 reset=1;
	#20 data <= 8'b00000001;
	#20 data <= 8'b00000010;
	#20 data <= 8'b00000100;
	#20 data <= 8'b00001000;
	#20 data <= 8'b00010000;
	#20 data <= 8'b00100000;

     end

   always
     begin
	#5 clk = ~clk;	
	
     end

endmodule
