// Incluir todos los archivos de los modulos

`include "mux_de_control_forzado/mux_de_control_forzado.v"
`include "demux/demux.v"
`include "parallel_to_serial/parallel_serial.v"
`include "serial_to_parallel/serial_parallel.v"

// Union de modulos de manera estructural

module pcie();

	wire [3:0] CONTROL;
	wire VALIDMUX;
	wire [7:0] Tx_Buffer;
	wire CLK;
	wire [7:0] OUTMUX;
	wire reset;
	wire RESET;
	wire [7:0] data0;
	wire [7:0] data1;
	wire [7:0] data2;
	wire [7:0] data3;
	wire [7:0] paralelo0;
	wire [7:0] paralelo1;
	wire [7:0] paralelo2;
	wire [7:0] paralelo3;
	wire [7:0] OUTSTRIPPING;
	wire VALID_OUT;
	wire [7:0] DATA;

	// Mux inicial
	mux_de_control_forzado mux (CONTROL, VALIDMUX, Tx_Buffer, CLK, OUTMUX);

	// Byte Striping RX
	//bytestripingRX byteRX (CLK, reset, VALIDMUX, OUTMUX, data0, data1, data2, data3);

	// Paralelo a Serial RX (4 lineas, 4 modulos)
	parallel_serial_cond serial0 (data0, CLK, RESET, VALID, dataserial0);

	parallel_serial_cond serial1 (data1, CLK, RESET, VALID, dataserial1);
		
	parallel_serial_cond serial2 (data2, CLK, RESET, VALID, dataserial2);

	parallel_serial_cond serial3 (data3, CLK, RESET, VALID, dataserial3);

	// Serial a Paralelo TX (4 lineas, 4 modulos)
	serial_parallel_cond parallel0 (dataserial0, CLK, RESET, paralelo0);

	serial_parallel_cond parallel1 (dataserial1, CLK, RESET, paralelo1);

	serial_parallel_cond parallel2 (dataserial2, CLK, RESET, paralelo2);

	serial_parallel_cond parallel3 (dataserial3, CLK, RESET, paralelo3);

	// Byte Striping inverso TX
	//bytestripingTX ();

	// Demux final
	demux muxTX (OUTSTRIPPING, CLK, VALID, VALID_OUT, DATA);
	
endmodule