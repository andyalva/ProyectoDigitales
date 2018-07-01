// Incluye los modulos

`include "Buffer/FIFO.v"
`include "roundrobin/roundrobin.v"
`include "FSM/FSM.v"

// Union de modulos de manera estructural

module qos(input wire [7:0] DATA_IN,
	input wire 	    CLK,
	input wire 	    RESET,
	input wire		WRITE,
	input wire		BIG,
	input 			init,
	input 		[19:0] request,
	output wire		read,
	output wire	[7:0] DATA_OUT_FINAL
	);
	
	// Wires de conexion
	wire almost_Full;
	reg [7:0] DATA_OUT;
	wire [7:0] DATA_OUT0;
	wire [7:0] DATA_OUT1;
	wire [7:0] DATA_OUT2;
	wire [7:0] DATA_OUT3;
	reg READ0;
	reg READ1;
	reg READ2;
	reg READ3;
	wire write;
	wire almost_Empty;
	wire ErrStackOverflow;
	wire ErrNoData;
	wire [3:0] Empty;
	wire emptyFSM;
	wire fullFSM;
	wire [3:0] error_full;
	wire [3:0] pausa;
	reg valid;
	wire EmptyAux;
	wire FullAux;
	wire [3:0] continua;
	wire [3:0] Full;
	wire [1:0] pop_id;

	//FIFO's
	FIFO fifo0 (DATA_IN, CLK, RESET, WRITE, READ0, 0, DATA_OUT0, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, Empty[0], Full[0], valid);
	FIFO fifo1 (DATA_IN, CLK, RESET, WRITE, READ1, 0, DATA_OUT1, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, Empty[1], Full[1], valid);
	FIFO fifo2 (DATA_IN, CLK, RESET, WRITE, READ2, 0, DATA_OUT2, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, Empty[2], Full[2], valid);
	FIFO fifo3 (DATA_IN, CLK, RESET, WRITE, READ3, 0, DATA_OUT3, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, Empty[3], Full[3], valid);
	FIFO fifo4 (DATA_OUT, CLK, RESET, write, 1, 1, DATA_OUT_FINAL, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, EmptyAux, FullAux, valid);

	//Round Robin
	roundrobin rr0 (RESET, request, pop_id, CLK, valid, Empty, write);

	//FSM
	assign emptyFSM = Empty[0] & Empty[1] & Empty[2] & Empty[3]; 

	assign fullFSM = Full[0] & Full[1] & Full[2] & Full[3]; 

	always @(posedge CLK) begin

		if (pop_id == 0) begin
			READ0 <= 1;
			DATA_OUT <= DATA_OUT0;
			READ1 <= 0;
			READ2 <= 0;
			READ3 <= 0;
		end

		else if (pop_id == 1) begin
			READ0 <= 0;
			DATA_OUT <= DATA_OUT1;
			READ1 <= 1;
			READ2 <= 0;
			READ3 <= 0;
		end

		else if (pop_id == 2) begin
			READ0 <= 0;
			DATA_OUT <= DATA_OUT2;
			READ1 <= 0;
			READ2 <= 1;
			READ3 <= 0;
		end

		else if (pop_id == 3) begin
			READ0 <= 0;
			READ1 <= 0;
			DATA_OUT <= DATA_OUT3;
			READ2 <= 0;
			READ3 <= 1;
		end

		else begin
			READ0 <= 0;
			READ1 <= 0;
			READ2 <= 0;
			READ3 <= 0;
		end

	end
			
	
	FSM fsm0 (CLK, RESET, init, almost_Full, almost_Empty, emptyFSM, fullFSM, ErrStackOverflow, error_full, pausa, continua, DATA_OUT);

	always @(posedge CLK) begin

		if (pausa) 
			valid = 0;

		else 
			valid = 1;

	end



	


endmodule