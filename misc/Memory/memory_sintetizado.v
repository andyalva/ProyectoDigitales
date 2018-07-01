/* Generated by Yosys 0.5+ (git sha1 f13e387, gcc 5.3.1-8ubuntu2 -O2 -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "memory.v:1" *)
module Memory(DATA_IN, CLK, RESET, WRITE, READ, DATA_OUT, almost_Full, almost_Empty, errNoData, errOverflow, Valid);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire [7:0] _08_;
  (* src = "memory.v:5" *)
  input CLK;
  (* src = "memory.v:4" *)
  input [7:0] DATA_IN;
  (* src = "memory.v:10" *)
  output [7:0] DATA_OUT;
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
  NOT _09_ (
    .A(DATA_OUT[1]),
    .Y(_00_)
  );
  NOR _10_ (
    .A(READ),
    .B(_00_),
    .Y(_08_[1])
  );
  NOT _11_ (
    .A(DATA_OUT[2]),
    .Y(_01_)
  );
  NOR _12_ (
    .A(_01_),
    .B(READ),
    .Y(_08_[2])
  );
  NOT _13_ (
    .A(DATA_OUT[3]),
    .Y(_02_)
  );
  NOR _14_ (
    .A(_02_),
    .B(READ),
    .Y(_08_[3])
  );
  NOT _15_ (
    .A(DATA_OUT[4]),
    .Y(_03_)
  );
  NOR _16_ (
    .A(_03_),
    .B(READ),
    .Y(_08_[4])
  );
  NOT _17_ (
    .A(DATA_OUT[5]),
    .Y(_04_)
  );
  NOR _18_ (
    .A(_04_),
    .B(READ),
    .Y(_08_[5])
  );
  NOT _19_ (
    .A(DATA_OUT[6]),
    .Y(_05_)
  );
  NOR _20_ (
    .A(_05_),
    .B(READ),
    .Y(_08_[6])
  );
  NOT _21_ (
    .A(DATA_OUT[7]),
    .Y(_06_)
  );
  NOR _22_ (
    .A(_06_),
    .B(READ),
    .Y(_08_[7])
  );
  NOT _23_ (
    .A(DATA_OUT[0]),
    .Y(_07_)
  );
  NOR _24_ (
    .A(_07_),
    .B(READ),
    .Y(_08_[0])
  );
  DFF _25_ (
    .C(CLK),
    .D(_08_[0]),
    .Q(DATA_OUT[0])
  );
  DFF _26_ (
    .C(CLK),
    .D(_08_[1]),
    .Q(DATA_OUT[1])
  );
  DFF _27_ (
    .C(CLK),
    .D(_08_[2]),
    .Q(DATA_OUT[2])
  );
  DFF _28_ (
    .C(CLK),
    .D(_08_[3]),
    .Q(DATA_OUT[3])
  );
  DFF _29_ (
    .C(CLK),
    .D(_08_[4]),
    .Q(DATA_OUT[4])
  );
  DFF _30_ (
    .C(CLK),
    .D(_08_[5]),
    .Q(DATA_OUT[5])
  );
  DFF _31_ (
    .C(CLK),
    .D(_08_[6]),
    .Q(DATA_OUT[6])
  );
  DFF _32_ (
    .C(CLK),
    .D(_08_[7]),
    .Q(DATA_OUT[7])
  );
  assign almost_Empty = 1'b1;
  assign almost_Full = 1'b0;
  assign errNoData = 1'b1;
  assign errOverflow = 1'b1;
endmodule
