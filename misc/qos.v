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
	output wire		read
	);
	
	// Wires de conexion
	wire [7:0] DATA_OUT;
	wire almost_Full;
	wire almost_Empty;
	wire ErrStackOverflow;
	wire ErrNoData;
	wire [3:0] Empty;
	wire emptyFSM;
	wire fullFSM;
	wire [3:0] error_full;
	wire [3:0] pausa;
	reg valid;
	wire [3:0] continua;
	wire [3:0] Full;
	wire [1:0] pop_id;

	//FIFO's
	FIFO fifo0 (DATA_IN, CLK, RESET, WRITE, pop_id[0], BIG, DATA_OUT, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, Empty[0], Full[0], valid);
	FIFO fifo1 (DATA_IN, CLK, RESET, WRITE, pop_id[1], BIG, DATA_OUT, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, Empty[1], Full[1], valid);
	FIFO fifo2 (DATA_IN, CLK, RESET, WRITE, pop_id[2], BIG, DATA_OUT, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, Empty[2], Full[2], valid);
	FIFO fifo3 (DATA_IN, CLK, RESET, WRITE, pop_id[3], BIG, DATA_OUT, almost_Empty, almost_Full, ErrStackOverflow, ErrNoData, Empty[3], Full[3], valid);

	//Round Robin
	roundrobin rr0 (RESET, request, pop_id, CLK, valid, Empty, read);

	//FSM
	assign emptyFSM = Empty[0] & Empty[1] & Empty[2] & Empty[3]; 

	assign fullFSM = Full[0] & Full[1] & Full[2] & Full[3]; 
	
	FSM fsm0 (CLK, RESET, init, almost_Full, almost_Empty, emptyFSM, fullFSM, ErrStackOverflow, error_full, pausa, continua, DATA_OUT);

	always @(posedge CLK) begin

		if (pausa) 
			valid = 0;

		else 
			valid = 1;

	end



	


endmodule