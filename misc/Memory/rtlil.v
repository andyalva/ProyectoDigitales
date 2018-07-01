/* Generated by Yosys 0.5+ (git sha1 f13e387, gcc 5.3.1-8ubuntu2 -O2 -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "memory.v:1" *)
module Memory(DATA_IN, CLK, RESET, WRITE, READ, DATA_OUT, almost_Full, almost_Empty, errNoData, errOverflow, Valid);
  wire [7:0] _00_;
  wire [7:0] _01_;
  (* src = "memory.v:5" *)
  input CLK;
  (* src = "memory.v:4" *)
  input [7:0] DATA_IN;
  (* src = "memory.v:10" *)
  output [7:0] DATA_OUT;
  reg [7:0] DATA_OUT;
  (* src = "memory.v:8" *)
  input READ;
  (* src = "memory.v:6" *)
  input RESET;
  (* src = "memory.v:15" *)
  input Valid;
  (* src = "memory.v:7" *)
  input WRITE;
  (* src = "memory.v:12" *)
  output almost_Empty;
  (* src = "memory.v:11" *)
  output almost_Full;
  (* src = "memory.v:13" *)
  output errNoData;
  (* src = "memory.v:14" *)
  output errOverflow;
  assign _00_[0] = READ ? _01_[0] : DATA_OUT[0];
  assign _00_[1] = READ ? _01_[1] : DATA_OUT[1];
  assign _00_[2] = READ ? _01_[2] : DATA_OUT[2];
  assign _00_[3] = READ ? _01_[3] : DATA_OUT[3];
  assign _00_[4] = READ ? _01_[4] : DATA_OUT[4];
  assign _00_[5] = READ ? _01_[5] : DATA_OUT[5];
  assign _00_[6] = READ ? _01_[6] : DATA_OUT[6];
  assign _00_[7] = READ ? _01_[7] : DATA_OUT[7];
  always @(posedge CLK)
      DATA_OUT[0] <= _00_[0];
  always @(posedge CLK)
      DATA_OUT[1] <= _00_[1];
  always @(posedge CLK)
      DATA_OUT[2] <= _00_[2];
  always @(posedge CLK)
      DATA_OUT[3] <= _00_[3];
  always @(posedge CLK)
      DATA_OUT[4] <= _00_[4];
  always @(posedge CLK)
      DATA_OUT[5] <= _00_[5];
  always @(posedge CLK)
      DATA_OUT[6] <= _00_[6];
  always @(posedge CLK)
      DATA_OUT[7] <= _00_[7];
  assign almost_Empty = 1'b1;
  assign almost_Full = 1'b0;
  assign errNoData = 1'b1;
  assign errOverflow = 1'b1;
endmodule
