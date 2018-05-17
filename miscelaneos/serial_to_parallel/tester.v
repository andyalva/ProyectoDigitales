module tester
  (
   output reg DATA_IN,
   output reg RESET,
   output reg CLK
   );
//Usar posedge CLK y asignaciones no bloqueantes
   initial
     begin
	CLK = 0;
	RESET = 0;
	#5 RESET = 1;
	#4 RESET = 0;
	DATA_IN = 1;

	#2 DATA_IN = 1;
	#2 DATA_IN = 1;
	#2 DATA_IN = 1;
	#2 DATA_IN = 1;
	#2 DATA_IN = 0;
	#2 DATA_IN = 1;
	#2 DATA_IN = 1;
	#2 DATA_IN = 1;

	#2 DATA_IN = 1;
	#2 DATA_IN = 0;
	#2 DATA_IN = 1;
	#2 DATA_IN = 1; //B
	#2 DATA_IN = 1;
	#2 DATA_IN = 1;
	#2 DATA_IN = 0;
	#2 DATA_IN = 0; //C


	#2 DATA_IN = 0;
	#2 DATA_IN = 0;
	#2 DATA_IN = 1;
	#2 DATA_IN = 1;//3
	#2 DATA_IN = 1;
	#2 DATA_IN = 1;
	#2 DATA_IN = 0;
	#2 DATA_IN = 1;//D

	#2 DATA_IN = 0;
	#2 DATA_IN = 0;
	#2 DATA_IN = 0;
	#2 DATA_IN = 0;
	#2 DATA_IN = 1;
	#2 DATA_IN = 1;
	#2 DATA_IN = 0;
	#2 DATA_IN = 0;

	#2 DATA_IN = 0;
	#2 DATA_IN = 1;
	#2 DATA_IN = 0;
	#2 DATA_IN = 1;
	#2 DATA_IN = 0;
	#2 DATA_IN = 1;
	#2 DATA_IN = 0;
	#2 DATA_IN = 1;
     end

   always
     begin
	#1 CLK = ~CLK;
     end

endmodule
