//Proyecto #1 Circuitos Digitales 2//
module bytestripingRX( input clk, reset, valid,
   input [7:0] data,
   output reg [7:0] data_out0, data_out1, data_out2, data_out3);

  reg [7:0] data_out0_next, data_out1_next, data_out2_next, data_out3_next;

//Indice de registro de los 4 estados,
 parameter [4:0] LaneA = 1,
		 LaneB = 2,
		 LaneC = 3,
		 LaneD = 4,
		 Estado0 =5; //Me da la señal para empezar
		
 reg [7:0] state, next_state; // Se le asignan 8 bits para utlizar one-hot.

//Bloque de Flip Flops
 always @(posedge clk or negedge reset)

	if(!reset)begin
	  state[LaneA] <= 1'b1;
	  data_out0<=8'b00000000;
	  data_out1<=8'b00000000;
	  data_out2<=8'b00000000;
	  data_out3<=8'b00000000;
	end
	else begin state <= next_state;
		data_out0<=data_out0_next;
		data_out1<=data_out1_next;	//Flops para mantener el dato y evitar latches
		data_out2<=data_out2_next;
		data_out3<=data_out3_next;
	end
		

// Bloque de asignacion de los estados y sus transiciones.
 always@(*) begin
	next_state = 8'b00000000;
	data_out0_next=data_out0;  //Evita los Latch inferidos
	data_out1_next=data_out1;
	data_out2_next=data_out2;
	data_out3_next=data_out3;
	case (1'b1)

		state[Estado0]: if(valid) begin next_state [LaneA] = 1'b1;
				
					data_out0_next=data;

			      	end else   next_state [Estado0] = 1'b1;

	
		state[LaneA]: if(valid) begin next_state [LaneB] = 1'b1;
				
					data_out1_next=data;
				
			      end else   next_state [LaneA] = 1'b1;
		
		state[LaneB]: if(valid)begin  next_state [LaneC] = 1'b1;

					data_out2_next=data;			

			      end else   next_state [LaneB] = 1'b1;
		
		state[LaneC]: if(valid) begin next_state [LaneD] = 1'b1;

					data_out3_next=data;

			      end else next_state [LaneC] = 1'b1;
      		
		state[LaneD]: if(valid) begin next_state [LaneA] = 1'b1;

				
					data_out0_next = data;			

			      end else next_state [LaneD] = 1'b1;
	endcase
end
endmodule
