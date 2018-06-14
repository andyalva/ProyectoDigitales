module roundrobin (input [11:0] request,
			input [3:0] empty,
			output reg [1:0] id,
			input clk,
			input reset);

	integer index;
	reg [5:0] count = 0;
	reg [1:0] mem1 [0:6];

	always @ (reset != 0) begin

		for (index = 0; index < 5; index = index + 1) begin

			mem1 [index] = (request[index * 2] << 1) + request[index * 2 + 1];
		end
	end

	always @ (posedge clk) begin

		while (empty[request] = 0) begin

		end

		case (request)

			0:
				begin
					mem1 [count] = request;
					count = count + 1;
				end
			1:
				begin
					mem1 [count] = request;
					count = count + 1;
				end
			2:
				begin
					mem1 [count] = request;
					count = count + 1;
				end
			3:
				begin
					mem1 [count] = request;
					count = count + 1;
				end
			default:
				begin
					count = count;
				end
		endcase		

	end

endmodule
			