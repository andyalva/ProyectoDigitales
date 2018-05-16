#! /usr/bin/vvp
:ivl_version "10.1 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 10;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x55932caa4a60 .scope module, "testbench" "testbench" 2 7;
 .timescale -9 -10;
v0x55932cad1120_0 .net "CLK", 0 0, v0x55932caac690_0;  1 drivers
v0x55932cad11e0_0 .net "DATA_IN", 0 0, v0x55932cad02c0_0;  1 drivers
o0x7fb6b9e73318 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0x55932cad12f0 .array "DATA_OUT", 1 0;
v0x55932cad12f0_0 .net v0x55932cad12f0 0, 7 0, o0x7fb6b9e73318; 0 drivers
v0x55932cad12f0_1 .net v0x55932cad12f0 1, 7 0, v0x55932cad0a20_0; 1 drivers
v0x55932cad13b0_0 .net "wRESET", 0 0, v0x55932cad0380_0;  1 drivers
S_0x55932caa4be0 .scope module, "prob" "tester" 2 12, 3 1 0, S_0x55932caa4a60;
 .timescale -9 -10;
    .port_info 0 /OUTPUT 1 "DATA_IN"
    .port_info 1 /OUTPUT 1 "RESET"
    .port_info 2 /OUTPUT 1 "CLK"
v0x55932caac690_0 .var "CLK", 0 0;
v0x55932cad02c0_0 .var "DATA_IN", 0 0;
v0x55932cad0380_0 .var "RESET", 0 0;
S_0x55932cad04d0 .scope module, "uut_cond" "serial_parallel_cond" 2 27, 4 2 0, S_0x55932caa4a60;
 .timescale -9 -10;
    .port_info 0 /INPUT 1 "DATA_IN"
    .port_info 1 /INPUT 1 "CLK"
    .port_info 2 /INPUT 1 "RESET"
    .port_info 3 /OUTPUT 8 "DATA_OUT"
v0x55932cad0860_0 .net "CLK", 0 0, v0x55932caac690_0;  alias, 1 drivers
v0x55932cad0950_0 .net "DATA_IN", 0 0, v0x55932cad02c0_0;  alias, 1 drivers
v0x55932cad0a20_0 .var "DATA_OUT", 7 0;
v0x55932cad0af0_0 .net "RESET", 0 0, v0x55932cad0380_0;  alias, 1 drivers
v0x55932cad0bc0_0 .var "Valid", 0 0;
v0x55932cad0cb0_0 .var "check", 7 0;
v0x55932cad0d70_0 .var "rBuffer", 6 0;
v0x55932cad0e50_0 .var "rCurrentState", 2 0;
v0x55932cad0f30_0 .var "rNextState", 2 0;
E_0x55932cad0740 .event negedge, v0x55932caac690_0;
E_0x55932cad07a0 .event posedge, v0x55932caac690_0;
E_0x55932cad0800 .event posedge, v0x55932cad0bc0_0;
    .scope S_0x55932caa4be0;
T_0 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932caac690_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad0380_0, 0, 1;
    %delay 50, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad0380_0, 0, 1;
    %delay 40, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad0380_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %delay 20, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x55932cad02c0_0, 0, 1;
    %end;
    .thread T_0;
    .scope S_0x55932caa4be0;
T_1 ;
    %delay 10, 0;
    %load/vec4 v0x55932caac690_0;
    %inv;
    %store/vec4 v0x55932caac690_0, 0, 1;
    %jmp T_1;
    .thread T_1;
    .scope S_0x55932cad04d0;
T_2 ;
    %wait E_0x55932cad07a0;
    %load/vec4 v0x55932cad0cb0_0;
    %cmpi/e 188, 0, 8;
    %jmp/0xz  T_2.0, 4;
    %pushi/vec4 1, 0, 1;
    %assign/vec4 v0x55932cad0bc0_0, 0;
    %jmp T_2.1;
T_2.0 ;
    %pushi/vec4 0, 0, 1;
    %assign/vec4 v0x55932cad0bc0_0, 0;
T_2.1 ;
    %load/vec4 v0x55932cad0af0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_2.2, 8;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x55932cad0cb0_0, 0;
T_2.2 ;
    %jmp T_2;
    .thread T_2;
    .scope S_0x55932cad04d0;
T_3 ;
    %wait E_0x55932cad0740;
    %load/vec4 v0x55932cad0bc0_0;
    %pad/u 32;
    %cmpi/e 0, 0, 32;
    %jmp/0xz  T_3.0, 4;
    %load/vec4 v0x55932cad0cb0_0;
    %parti/s 7, 0, 2;
    %load/vec4 v0x55932cad0950_0;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x55932cad0cb0_0, 0;
    %jmp T_3.1;
T_3.0 ;
    %load/vec4 v0x55932cad0cb0_0;
    %assign/vec4 v0x55932cad0cb0_0, 0;
T_3.1 ;
    %jmp T_3;
    .thread T_3;
    .scope S_0x55932cad04d0;
T_4 ;
    %wait E_0x55932cad0800;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x55932cad0e50_0, 0;
    %jmp T_4;
    .thread T_4;
    .scope S_0x55932cad04d0;
T_5 ;
    %wait E_0x55932cad07a0;
    %load/vec4 v0x55932cad0bc0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.0, 8;
    %load/vec4 v0x55932cad0af0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_5.2, 8;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x55932cad0e50_0, 0;
    %jmp T_5.3;
T_5.2 ;
    %load/vec4 v0x55932cad0f30_0;
    %assign/vec4 v0x55932cad0e50_0, 0;
T_5.3 ;
    %jmp T_5.1;
T_5.0 ;
    %load/vec4 v0x55932cad0e50_0;
    %assign/vec4 v0x55932cad0e50_0, 0;
T_5.1 ;
    %jmp T_5;
    .thread T_5;
    .scope S_0x55932cad04d0;
T_6 ;
    %wait E_0x55932cad0740;
    %load/vec4 v0x55932cad0bc0_0;
    %flag_set/vec4 8;
    %jmp/0xz  T_6.0, 8;
    %load/vec4 v0x55932cad0e50_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 3;
    %cmp/u;
    %jmp/1 T_6.2, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 3;
    %cmp/u;
    %jmp/1 T_6.3, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 3;
    %cmp/u;
    %jmp/1 T_6.4, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 3;
    %cmp/u;
    %jmp/1 T_6.5, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 3;
    %cmp/u;
    %jmp/1 T_6.6, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 3;
    %cmp/u;
    %jmp/1 T_6.7, 6;
    %dup/vec4;
    %pushi/vec4 6, 0, 3;
    %cmp/u;
    %jmp/1 T_6.8, 6;
    %dup/vec4;
    %pushi/vec4 7, 0, 3;
    %cmp/u;
    %jmp/1 T_6.9, 6;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.2 ;
    %load/vec4 v0x55932cad0950_0;
    %ix/load 4, 6, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x55932cad0d70_0, 4, 5;
    %pushi/vec4 1, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.3 ;
    %load/vec4 v0x55932cad0950_0;
    %ix/load 4, 5, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x55932cad0d70_0, 4, 5;
    %pushi/vec4 2, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.4 ;
    %load/vec4 v0x55932cad0950_0;
    %ix/load 4, 4, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x55932cad0d70_0, 4, 5;
    %pushi/vec4 3, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.5 ;
    %load/vec4 v0x55932cad0950_0;
    %ix/load 4, 3, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x55932cad0d70_0, 4, 5;
    %pushi/vec4 4, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.6 ;
    %load/vec4 v0x55932cad0950_0;
    %ix/load 4, 2, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x55932cad0d70_0, 4, 5;
    %pushi/vec4 5, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.7 ;
    %load/vec4 v0x55932cad0950_0;
    %ix/load 4, 1, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x55932cad0d70_0, 4, 5;
    %pushi/vec4 6, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.8 ;
    %load/vec4 v0x55932cad0950_0;
    %ix/load 4, 0, 0;
    %ix/load 5, 0, 0;
    %flag_set/imm 4, 0;
    %assign/vec4/off/d v0x55932cad0d70_0, 4, 5;
    %pushi/vec4 7, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.9 ;
    %load/vec4 v0x55932cad0d70_0;
    %load/vec4 v0x55932cad0950_0;
    %concat/vec4; draw_concat_vec4
    %assign/vec4 v0x55932cad0a20_0, 0;
    %pushi/vec4 0, 0, 3;
    %assign/vec4 v0x55932cad0f30_0, 0;
    %jmp T_6.11;
T_6.11 ;
    %pop/vec4 1;
    %jmp T_6.1;
T_6.0 ;
    %load/vec4 v0x55932cad0a20_0;
    %assign/vec4 v0x55932cad0a20_0, 0;
T_6.1 ;
    %jmp T_6;
    .thread T_6;
    .scope S_0x55932caa4a60;
T_7 ;
    %vpi_call 2 37 "$dumpfile", "simulation.vcd" {0 0 0};
    %vpi_call 2 38 "$dumpvars" {0 0 0};
    %delay 10000, 0;
    %vpi_call 2 39 "$finish" {0 0 0};
    %end;
    .thread T_7;
# The file index is used to find the file name in the following table.
:file_names 5;
    "N/A";
    "<interactive>";
    "test_bench.v";
    "./tester.v";
    "./serial_parallel.v";
