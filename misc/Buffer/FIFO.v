module FIFO
	(
	//inputs
	input wire [7:0] DATA_IN,
	input wire 	    CLK,
	input wire 	    RESET,
	input wire		WRITE,
	//outputs
	output reg [7:0] DATA_OUT,
	output reg		almost_Full,
	input wire		Valid
	);

    reg [2:0] 	    rCurrentState, rNextState;
    reg [63:0] 	    rBuffer;

	always @(posedge CLK)
		begin
			if ( RESET)				
				begin
					rCurrentState <= 0;
					rBuffer <= 0;
					almost_Full <= 0;
				end
		end
	

	always @(posedge CLK)
		begin
			if(Valid)
				begin
					case (rCurrentState)
						0:
							begin
								if(WRITE)
									begin
										rBuffer[7:0] <= DATA_IN;
										rCurrentState <= rCurrentState + 1;
									end
							end
						1: 

							begin
								if(WRITE)
									begin
										rBuffer[15:8] <= DATA_IN;
										rCurrentState <= rCurrentState + 1;
									end
							end
						2:
							begin
								if(WRITE)
									begin
										rBuffer[23:16] <= DATA_IN;
										rCurrentState <= rCurrentState + 1;
									end
								almost_Full <= 0;
							end
						3:
							begin
								if(WRITE)
									begin
										rBuffer[31:24] <= DATA_IN;
										rCurrentState <= rCurrentState + 1;
									end
							end
						4:
							begin
								if(WRITE)
									begin
										rBuffer[39:32] <= DATA_IN;
												rCurrentState <= rCurrentState + 1;
									end
							end
						5:
							begin
								if(WRITE)
									begin
										rBuffer[47:40] <= DATA_IN;
										rCurrentState <= rCurrentState + 1;
										almost_Full <= 1;
									end
							end
						6:
							begin
								if(WRITE)
									begin
										rBuffer[55:48] <= DATA_IN;
										rCurrentState <= rCurrentState + 1;
									end
							end
						7:
							begin
								if(WRITE)
									begin
										rBuffer[63:56] <= DATA_IN;
									end
							end
						default:
							begin
								rCurrentState <= 0;
							end
						endcase // casex (woResult)
						
					if(WRITE == 0)
						begin
							if(rCurrentState > 0) 
								begin
									DATA_OUT <= rBuffer[7:0];
									rBuffer[7:0] <= rBuffer[15:8];
									rBuffer[15:8] <= rBuffer[23:16];
									rBuffer[23:16] <= rBuffer[31:24];
									rBuffer[31:24] <= rBuffer[39:32];
									rBuffer[39:32] <= rBuffer[47:40];
									rBuffer[47:40] <= rBuffer[55:48];
									rBuffer[55:48] <= rBuffer[63:56];
									rBuffer[63:56] <= 0;
									rCurrentState <= rCurrentState - 1;
								end
							else
								begin
									DATA_OUT <= rBuffer[7:0];
									rBuffer[7:0] <= 0; 
								end
						end
				end
		end

		
endmodule
