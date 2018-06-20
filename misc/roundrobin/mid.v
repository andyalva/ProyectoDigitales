module mid(	input reset,
		input [19:0] request,
		output reg [1:0] pop_id,
		input clk,
		input [3:0] empty,
		output reg valid); // el CLK puede ser mucho mas rapido que otros

	reg [1:0] mem1 [0:9];
	integer index;
	integer count = 0;

	always @ (posedge clk) begin

		if (reset != 0) begin

			for (index = 0; index < 11; index = index + 1) begin

				mem1 [index] <= (request[index * 2] << 1) + request[index * 2 + 1];
			end

		end

		if (reset == 0) begin

			if (count == 9)
				count <= 0;

			case (count)

				0:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				1:	
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				2:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				3:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				4:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				5:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				6:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				7:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				8:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end	
				9:
					begin
						pop_id <= mem1 [count];
						count = count + 1;
						valid = 1;
					end
				default:
					begin
						count = count;
					end
			endcase

		end
	
	end

endmodule