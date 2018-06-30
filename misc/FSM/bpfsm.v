`include "FSM.v"
module bpfsm ( output reg clk, reset, init, almost_full, almost_empty, empty_Fifo, no_empty_Fifo, Fifo_overflow,
	output reg [7:0] data_Fifo,
    input [7:0] error_full, pausa, continua);

   initial
     begin	
	reset=1;
	clk=0;
	init=0;
	almost_full <=0;
	almost_empty <=0;
	empty_Fifo <=0;
	no_empty_Fifo <=0;
	Fifo_overflow <=0;
	data_Fifo <= 4'h00;
	#10;
	@(posedge clk);
	reset <=0;
	@(posedge clk);
	init<=1;
	#50;
	@(posedge clk);
	empty_Fifo <=1;
	#50;
	@(posedge clk);
	empty_Fifo <=0;
	@(posedge clk);
	no_empty_Fifo <=1;
	#50;
	@(posedge clk);
	no_empty_Fifo <=0;
	data_Fifo <= 4'h01;
	@(posedge clk);
	almost_full <=1;
	#50;
	@(posedge clk);
	almost_full <=0;
	data_Fifo <= 4'h02;
	@(posedge clk);
	almost_empty <=1;
	#50;
	@(posedge clk);
	almost_empty <=0;
	data_Fifo <= 4'h03;
	@(posedge clk);
	Fifo_overflow <=1;
	#10;
	@(posedge clk);
	reset <=1;


     end

   always
     begin
	#5 clk = ~clk;	
	
     end

endmodule
