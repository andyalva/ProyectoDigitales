//Proyecto #2 Circuitos Digitales 2//
module FSM( input clk, reset, init, almost_full, almost_empty, empty_Fifo, no_empty_Fifo, full_Fifo,
	output reg [3:0] error_full, pausa, continua);
	reg [2:0] state, next_state;

//Indice de registro de los 6 estados,
 parameter [5:0] Estado_Reset = 0,
		 Idle = 1,
		 Active = 2,
		 Pause = 3,
		 Continue =4,
		 Error = 5;

//Bloque de Flip Flops
 	always @(posedge clk) begin
	if(reset)begin
	  state <= 3'b000;
	  next_state <= 3'b000;
	end else if(init) begin 
		state <= next_state;
	end
		end	

// Bloque de asignacion de los estados y sus transiciones.
 always@(*) begin
	next_state = 3'b000;
	case (1'b1)

		state[Estado_Reset]: if(init && empty_Fifo) begin next_state [Idle] = 1'b1;				

			      	end else if(init && no_empty_Fifo) begin  next_state [Active] = 1'b1;
					end
	
		state[Idle]: if(init && no_empty_Fifo) begin next_state [Active] = 1'b1;				
				
			      end else begin  next_state [Idle] = 1'b1;
				end
		
		state[Active]: if(init && almost_full)begin  next_state [Pause] = 1'b1;
			

			      end else if(init && almost_empty) begin  next_state [Continue] = 1'b1;
					end
		
		state[Pause]: if(init)  next_state [Active] = 1'b1;
					
      		
		state[Continue]: if(init) next_state [Active] = 1'b1;
						
				
		state[Error]: if(init && full_Fifo) begin next_state [Estado_Reset] = 1'b1;

				end
	endcase
end
endmodule
