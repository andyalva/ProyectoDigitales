
module FIFO
	(
	//inputs
	input wire [7:0] DATA_IN,
	input wire 	    CLK,
	input wire 	    RESET,
	input wire		READ,
	input wire		WRITE,
	//outputs
	output reg [7:0] DATA_OUT,
	input wire		Valid
	);

    reg [2:0] 	    rCurrentState, rNextState;
    reg [63:0] 	    rBuffer;
    reg [7:0]		data;

	always @(posedge CLK)
		begin
			if ( RESET)				
				begin
					rCurrentState <= 0;
				end
		end
	
	always @(posedge CLK)
		begin
			if(Valid)
				begin
					if(WRITE)
						begin
							data <= DATA_IN;
						end
					if(READ)
						begin
							DATA_OUT <= data;
						end
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
										rBuffer[7:0] <= data;
										rCurrentState <= rCurrentState + 1;
									end
								if(READ)
									begin
										data <= rBuffer[7:0];
									end
							end
						1: 
							begin
								if(WRITE)
									begin
										rBuffer[15:8] <= data;
										rCurrentState <= rCurrentState + 1;
									end
								if(READ)
									begin
										data <= rBuffer[15:8];
										rCurrentState <= rCurrentState - 1;
									end
							end
						2:
							begin
								if(WRITE)
									begin
										rBuffer[23:16] <= data;
										rCurrentState <= rCurrentState + 1;
									end
								if(READ)
									begin
										data <= rBuffer[23:16];
										rCurrentState <= rCurrentState - 1;
									end
							end
						3:
							begin
								if(WRITE)
									begin
										rBuffer[31:24] <= data;
										rCurrentState <= rCurrentState + 1;
									end
								if(READ)
									begin
										data <= rBuffer[31:24];
										rCurrentState <= rCurrentState - 1;
									end
							end
						4:
							begin
								if(WRITE)
									begin
										rBuffer[39:32] <= data;
										rCurrentState <= rCurrentState + 1;
									end
								if(READ)
									begin
										data <= rBuffer[39:32];
										rCurrentState <= rCurrentState - 1;
									end
							end
						5:
							begin
								if(WRITE)
									begin
										rBuffer[47:40] <= data;
										rCurrentState <= rCurrentState + 1;
									end
								if (READ)
									begin
										data <= rBuffer[47:40];
										rCurrentState <= rCurrentState - 1;
									end
							end
						6:
							begin
								if(WRITE)
									begin
										rBuffer[55:48] <= data;
										rCurrentState <= rCurrentState + 1;
									end
								if(READ)
									begin
										data <= rBuffer[55:48];
										rCurrentState <= rCurrentState - 1;
									end
							end
						7:
							begin
								if(WRITE)
									begin
										rBuffer[63:56] <= data;
									end
								if(READ)
									begin
										data <= rBuffer[63:56];
										rCurrentState <= rCurrentState - 1;
									end
							end
						default:
							begin
								rCurrentState <= 0;
							end
					endcase // casex (woResult)
				end
		end

		
endmodule
