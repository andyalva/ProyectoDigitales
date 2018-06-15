
module tester
  (
   output reg [7:0] DATA_IN,
   output reg 	    CLK,
   output reg 	    RESET,
	 output reg				READ,
	 output reg				WRITE,
	 output reg				Valid
   );

   initial
     begin
	CLK = 1;
	Valid = 0;
	RESET = 0;
	WRITE = 0;
	READ = 0;
	#3 RESET = 1;
	#9 RESET = 0;
		 Valid = 1;
		 DATA_IN = 8'hFF;
	#4 WRITE = 1;
			DATA_IN = 8'hAA;
	#2 DATA_IN = 8'hBB;
	#2 DATA_IN = 8'hCC;
	#2 DATA_IN = 8'hDD;
	#2 DATA_IN = 8'hEE;
	#8 WRITE = 0;
			READ = 1;
	DATA_IN = 8'b10100110;
	#2 DATA_IN = 8'b00111001;
	#2 DATA_IN = 8'b10101000;
	#2 DATA_IN = 8'b11111001;
	#16 DATA_IN = 8'b01001111;
     end

   always
     begin
	#1 CLK = ~CLK;
     end

endmodule
