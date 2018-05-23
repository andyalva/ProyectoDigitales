`include "byte_stripingTx.v"
module bpbs ( output reg clk, reset, valid,
   output reg [7:0] data,
   input [7:0] data_out0, data_out1, data_out2, data_out3);

   initial
     begin	
	reset=0;
	clk=0;
	valid=0;
	data <= 8'h00;
	/*data_out0 <= 8'b00000000;
	data_out1 <= 8'b00000000;
	data_out2 <= 8'b00000000;
	data_out3 <= 8'b00000000;*/
	@(posedge clk);
	reset <=1;
	@(posedge clk);
	valid<=1;
	#10;
	@(posedge clk);
	reset <=1;
	@(posedge clk);
	valid<=1;
	@(posedge clk);
	data <= 8'h01;
	@(posedge clk);
	data <= 8'h02;
	@(posedge clk);
	data <=8'h03;
	@(posedge clk);
	data <= 8'h04;
	@(posedge clk);
	data <= 8'h05;
	@(posedge clk);
	data <= 8'h06;
	@(posedge clk);
	data <= 8'h07;
	@(posedge clk);
	data <= 8'h08;
	@(posedge clk);
	data <= 8'h09;
	@(posedge clk);
	data <= 8'h10;
	@(posedge clk);
	data <= 8'h11;
	@(posedge clk);
	data <= 8'h12;

     end

   always
     begin
	#5 clk = ~clk;	
	
     end

endmodule
