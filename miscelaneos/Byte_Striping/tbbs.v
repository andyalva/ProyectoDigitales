//Alejandro Rojas Cordero Tarea 6 B36049
`include "bpbs.v"

module tbbs;

wire clk;

bytestripingRX bytestrip (.clk(clk), .data(data), .reset(reset),.valid(valid),.data_out0(data_out0), .data_out1(data_out1), .data_out2(data_out2), .data_out3(data_out3));
bpbs bancopruebasBS (.clk(clk), .data(data), .reset(reset), .valid(valid),.data_out0(data_out0), .data_out1(data_out1), .data_out2(data_out2), .data_out3(data_out3));

initial begin
    
  //-- Fichero donde almacenar los resultados
  $dumpfile("prueba_Byte_Striping.vcd");
  $dumpvars(0, tbbs);
    
  # 600 $display("FIN TestBench");
  $finish;
end


endmodule
