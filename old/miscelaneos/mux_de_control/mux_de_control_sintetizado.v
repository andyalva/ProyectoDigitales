/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 4.8.4-2ubuntu1~14.04.3 -O2 -fstack-protector -fPIC -Os) */

(* top =  1  *)
(* src = "mux_de_control.v:1" *)
module mux_de_control_sintetizado(CONTROL, VALID, COM, PAD, SKP, STP, SDP, END, EDB, FTS, IDL, Tx_Buffer, CLK, OUT);
  (* src = "mux_de_control.v:16" *)
  wire [7:0] _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  (* src = "mux_de_control.v:13" *)
  input CLK;
  (* src = "mux_de_control.v:3" *)
  input [7:0] COM;
  (* src = "mux_de_control.v:1" *)
  input [3:0] CONTROL;
  (* src = "mux_de_control.v:9" *)
  input [7:0] EDB;
  (* src = "mux_de_control.v:8" *)
  input [7:0] END;
  (* src = "mux_de_control.v:10" *)
  input [7:0] FTS;
  (* src = "mux_de_control.v:11" *)
  input [7:0] IDL;
  (* src = "mux_de_control.v:14" *)
  output [7:0] OUT;
  (* src = "mux_de_control.v:4" *)
  input [7:0] PAD;
  (* src = "mux_de_control.v:7" *)
  input [7:0] SDP;
  (* src = "mux_de_control.v:5" *)
  input [7:0] SKP;
  (* src = "mux_de_control.v:6" *)
  input [7:0] STP;
  (* src = "mux_de_control.v:12" *)
  input [7:0] Tx_Buffer;
  (* src = "mux_de_control.v:2" *)
  input VALID;
  NOT _222_ (
    .A(CONTROL[1]),
    .Y(_001_)
  );
  NOT _223_ (
    .A(CONTROL[2]),
    .Y(_002_)
  );
  NAND _224_ (
    .A(_002_),
    .B(_001_),
    .Y(_003_)
  );
  NAND _225_ (
    .A(_003_),
    .B(CONTROL[3]),
    .Y(_004_)
  );
  NOR _226_ (
    .A(_004_),
    .B(OUT[0]),
    .Y(_005_)
  );
  NOT _227_ (
    .A(CONTROL[0]),
    .Y(_006_)
  );
  NAND _228_ (
    .A(_001_),
    .B(_006_),
    .Y(_007_)
  );
  NAND _229_ (
    .A(_002_),
    .B(CONTROL[3]),
    .Y(_008_)
  );
  NOR _230_ (
    .A(_008_),
    .B(_007_),
    .Y(_009_)
  );
  NAND _231_ (
    .A(_009_),
    .B(IDL[0]),
    .Y(_010_)
  );
  NOT _232_ (
    .A(Tx_Buffer[0]),
    .Y(_011_)
  );
  NOT _233_ (
    .A(CONTROL[3]),
    .Y(_012_)
  );
  NOR _234_ (
    .A(CONTROL[2]),
    .B(_012_),
    .Y(_013_)
  );
  NOR _235_ (
    .A(CONTROL[1]),
    .B(_006_),
    .Y(_014_)
  );
  NAND _236_ (
    .A(_014_),
    .B(_013_),
    .Y(_015_)
  );
  NOR _237_ (
    .A(_015_),
    .B(_011_),
    .Y(_016_)
  );
  NOT _238_ (
    .A(COM[0]),
    .Y(_017_)
  );
  NOR _239_ (
    .A(CONTROL[1]),
    .B(CONTROL[0]),
    .Y(_018_)
  );
  NOR _240_ (
    .A(CONTROL[2]),
    .B(CONTROL[3]),
    .Y(_019_)
  );
  NAND _241_ (
    .A(_019_),
    .B(_018_),
    .Y(_020_)
  );
  NOR _242_ (
    .A(_020_),
    .B(_017_),
    .Y(_021_)
  );
  NOR _243_ (
    .A(_021_),
    .B(_016_),
    .Y(_022_)
  );
  NAND _244_ (
    .A(_022_),
    .B(_010_),
    .Y(_023_)
  );
  NAND _245_ (
    .A(CONTROL[2]),
    .B(_012_),
    .Y(_024_)
  );
  NOR _246_ (
    .A(_024_),
    .B(_007_),
    .Y(_025_)
  );
  NAND _247_ (
    .A(_025_),
    .B(SDP[0]),
    .Y(_026_)
  );
  NAND _248_ (
    .A(CONTROL[1]),
    .B(CONTROL[0]),
    .Y(_027_)
  );
  NOR _249_ (
    .A(_027_),
    .B(_024_),
    .Y(_028_)
  );
  NAND _250_ (
    .A(_028_),
    .B(FTS[0]),
    .Y(_029_)
  );
  NAND _251_ (
    .A(_029_),
    .B(_026_),
    .Y(_030_)
  );
  NAND _252_ (
    .A(_001_),
    .B(CONTROL[0]),
    .Y(_031_)
  );
  NOR _253_ (
    .A(_024_),
    .B(_031_),
    .Y(_032_)
  );
  NAND _254_ (
    .A(_032_),
    .B(END[0]),
    .Y(_033_)
  );
  NAND _255_ (
    .A(_002_),
    .B(_012_),
    .Y(_034_)
  );
  NOR _256_ (
    .A(_034_),
    .B(_031_),
    .Y(_035_)
  );
  NAND _257_ (
    .A(_035_),
    .B(PAD[0]),
    .Y(_036_)
  );
  NAND _258_ (
    .A(_036_),
    .B(_033_),
    .Y(_037_)
  );
  NOR _259_ (
    .A(_037_),
    .B(_030_),
    .Y(_038_)
  );
  NOR _260_ (
    .A(_027_),
    .B(_034_),
    .Y(_039_)
  );
  NAND _261_ (
    .A(_039_),
    .B(STP[0]),
    .Y(_040_)
  );
  NAND _262_ (
    .A(CONTROL[1]),
    .B(_006_),
    .Y(_041_)
  );
  NOR _263_ (
    .A(_041_),
    .B(_034_),
    .Y(_042_)
  );
  NAND _264_ (
    .A(_042_),
    .B(SKP[0]),
    .Y(_043_)
  );
  NAND _265_ (
    .A(_043_),
    .B(_040_),
    .Y(_044_)
  );
  NOR _266_ (
    .A(_041_),
    .B(_024_),
    .Y(_045_)
  );
  NAND _267_ (
    .A(_045_),
    .B(EDB[0]),
    .Y(_046_)
  );
  NAND _268_ (
    .A(_046_),
    .B(_004_),
    .Y(_047_)
  );
  NOR _269_ (
    .A(_047_),
    .B(_044_),
    .Y(_048_)
  );
  NAND _270_ (
    .A(_048_),
    .B(_038_),
    .Y(_049_)
  );
  NOR _271_ (
    .A(_049_),
    .B(_023_),
    .Y(_050_)
  );
  NOR _272_ (
    .A(_050_),
    .B(_005_),
    .Y(_000_[0])
  );
  NOR _273_ (
    .A(_004_),
    .B(OUT[1]),
    .Y(_051_)
  );
  NAND _274_ (
    .A(_025_),
    .B(SDP[1]),
    .Y(_052_)
  );
  NOT _275_ (
    .A(EDB[1]),
    .Y(_053_)
  );
  NOR _276_ (
    .A(_002_),
    .B(CONTROL[3]),
    .Y(_054_)
  );
  NOR _277_ (
    .A(_001_),
    .B(CONTROL[0]),
    .Y(_055_)
  );
  NAND _278_ (
    .A(_055_),
    .B(_054_),
    .Y(_056_)
  );
  NOR _279_ (
    .A(_056_),
    .B(_053_),
    .Y(_057_)
  );
  NOT _280_ (
    .A(Tx_Buffer[1]),
    .Y(_058_)
  );
  NOR _281_ (
    .A(_015_),
    .B(_058_),
    .Y(_059_)
  );
  NOR _282_ (
    .A(_059_),
    .B(_057_),
    .Y(_060_)
  );
  NAND _283_ (
    .A(_060_),
    .B(_052_),
    .Y(_061_)
  );
  NAND _284_ (
    .A(_042_),
    .B(SKP[1]),
    .Y(_062_)
  );
  NAND _285_ (
    .A(_039_),
    .B(STP[1]),
    .Y(_063_)
  );
  NAND _286_ (
    .A(_063_),
    .B(_062_),
    .Y(_064_)
  );
  NAND _287_ (
    .A(_032_),
    .B(END[1]),
    .Y(_065_)
  );
  NOR _288_ (
    .A(_034_),
    .B(_007_),
    .Y(_066_)
  );
  NAND _289_ (
    .A(_066_),
    .B(COM[1]),
    .Y(_067_)
  );
  NAND _290_ (
    .A(_067_),
    .B(_065_),
    .Y(_068_)
  );
  NOR _291_ (
    .A(_068_),
    .B(_064_),
    .Y(_069_)
  );
  NAND _292_ (
    .A(_028_),
    .B(FTS[1]),
    .Y(_070_)
  );
  NAND _293_ (
    .A(_009_),
    .B(IDL[1]),
    .Y(_071_)
  );
  NAND _294_ (
    .A(_071_),
    .B(_070_),
    .Y(_072_)
  );
  NAND _295_ (
    .A(_035_),
    .B(PAD[1]),
    .Y(_073_)
  );
  NAND _296_ (
    .A(_073_),
    .B(_004_),
    .Y(_074_)
  );
  NOR _297_ (
    .A(_074_),
    .B(_072_),
    .Y(_075_)
  );
  NAND _298_ (
    .A(_075_),
    .B(_069_),
    .Y(_076_)
  );
  NOR _299_ (
    .A(_076_),
    .B(_061_),
    .Y(_077_)
  );
  NOR _300_ (
    .A(_077_),
    .B(_051_),
    .Y(_000_[1])
  );
  NOR _301_ (
    .A(_004_),
    .B(OUT[2]),
    .Y(_078_)
  );
  NAND _302_ (
    .A(_066_),
    .B(COM[2]),
    .Y(_079_)
  );
  NOT _303_ (
    .A(PAD[2]),
    .Y(_080_)
  );
  NAND _304_ (
    .A(_019_),
    .B(_014_),
    .Y(_081_)
  );
  NOR _305_ (
    .A(_081_),
    .B(_080_),
    .Y(_082_)
  );
  NOT _306_ (
    .A(IDL[2]),
    .Y(_083_)
  );
  NAND _307_ (
    .A(_013_),
    .B(_018_),
    .Y(_084_)
  );
  NOR _308_ (
    .A(_084_),
    .B(_083_),
    .Y(_085_)
  );
  NOR _309_ (
    .A(_085_),
    .B(_082_),
    .Y(_086_)
  );
  NAND _310_ (
    .A(_086_),
    .B(_079_),
    .Y(_087_)
  );
  NAND _311_ (
    .A(_025_),
    .B(SDP[2]),
    .Y(_088_)
  );
  NAND _312_ (
    .A(_032_),
    .B(END[2]),
    .Y(_089_)
  );
  NAND _313_ (
    .A(_089_),
    .B(_088_),
    .Y(_090_)
  );
  NOR _314_ (
    .A(_031_),
    .B(_008_),
    .Y(_091_)
  );
  NAND _315_ (
    .A(_091_),
    .B(Tx_Buffer[2]),
    .Y(_092_)
  );
  NAND _316_ (
    .A(_039_),
    .B(STP[2]),
    .Y(_093_)
  );
  NAND _317_ (
    .A(_093_),
    .B(_092_),
    .Y(_094_)
  );
  NOR _318_ (
    .A(_094_),
    .B(_090_),
    .Y(_095_)
  );
  NAND _319_ (
    .A(_028_),
    .B(FTS[2]),
    .Y(_096_)
  );
  NAND _320_ (
    .A(_096_),
    .B(_004_),
    .Y(_097_)
  );
  NAND _321_ (
    .A(_045_),
    .B(EDB[2]),
    .Y(_098_)
  );
  NAND _322_ (
    .A(_042_),
    .B(SKP[2]),
    .Y(_099_)
  );
  NAND _323_ (
    .A(_099_),
    .B(_098_),
    .Y(_100_)
  );
  NOR _324_ (
    .A(_100_),
    .B(_097_),
    .Y(_101_)
  );
  NAND _325_ (
    .A(_101_),
    .B(_095_),
    .Y(_102_)
  );
  NOR _326_ (
    .A(_102_),
    .B(_087_),
    .Y(_103_)
  );
  NOR _327_ (
    .A(_103_),
    .B(_078_),
    .Y(_000_[2])
  );
  NOR _328_ (
    .A(_004_),
    .B(OUT[3]),
    .Y(_104_)
  );
  NAND _329_ (
    .A(_032_),
    .B(END[3]),
    .Y(_105_)
  );
  NOT _330_ (
    .A(IDL[3]),
    .Y(_106_)
  );
  NOR _331_ (
    .A(_084_),
    .B(_106_),
    .Y(_107_)
  );
  NOT _332_ (
    .A(STP[3]),
    .Y(_108_)
  );
  NOT _333_ (
    .A(_027_),
    .Y(_109_)
  );
  NAND _334_ (
    .A(_109_),
    .B(_019_),
    .Y(_110_)
  );
  NOR _335_ (
    .A(_110_),
    .B(_108_),
    .Y(_111_)
  );
  NOR _336_ (
    .A(_111_),
    .B(_107_),
    .Y(_112_)
  );
  NAND _337_ (
    .A(_112_),
    .B(_105_),
    .Y(_113_)
  );
  NAND _338_ (
    .A(_025_),
    .B(SDP[3]),
    .Y(_114_)
  );
  NAND _339_ (
    .A(_045_),
    .B(EDB[3]),
    .Y(_115_)
  );
  NAND _340_ (
    .A(_115_),
    .B(_114_),
    .Y(_116_)
  );
  NAND _341_ (
    .A(_035_),
    .B(PAD[3]),
    .Y(_117_)
  );
  NAND _342_ (
    .A(_066_),
    .B(COM[3]),
    .Y(_118_)
  );
  NAND _343_ (
    .A(_118_),
    .B(_117_),
    .Y(_119_)
  );
  NOR _344_ (
    .A(_119_),
    .B(_116_),
    .Y(_120_)
  );
  NAND _345_ (
    .A(_042_),
    .B(SKP[3]),
    .Y(_121_)
  );
  NAND _346_ (
    .A(_028_),
    .B(FTS[3]),
    .Y(_122_)
  );
  NAND _347_ (
    .A(_122_),
    .B(_121_),
    .Y(_123_)
  );
  NAND _348_ (
    .A(_091_),
    .B(Tx_Buffer[3]),
    .Y(_124_)
  );
  NAND _349_ (
    .A(_124_),
    .B(_004_),
    .Y(_125_)
  );
  NOR _350_ (
    .A(_125_),
    .B(_123_),
    .Y(_126_)
  );
  NAND _351_ (
    .A(_126_),
    .B(_120_),
    .Y(_127_)
  );
  NOR _352_ (
    .A(_127_),
    .B(_113_),
    .Y(_128_)
  );
  NOR _353_ (
    .A(_128_),
    .B(_104_),
    .Y(_000_[3])
  );
  NOR _354_ (
    .A(_004_),
    .B(OUT[4]),
    .Y(_129_)
  );
  NAND _355_ (
    .A(_091_),
    .B(Tx_Buffer[4]),
    .Y(_130_)
  );
  NOT _356_ (
    .A(COM[4]),
    .Y(_131_)
  );
  NOR _357_ (
    .A(_020_),
    .B(_131_),
    .Y(_132_)
  );
  NOT _358_ (
    .A(EDB[4]),
    .Y(_133_)
  );
  NOR _359_ (
    .A(_056_),
    .B(_133_),
    .Y(_134_)
  );
  NOR _360_ (
    .A(_134_),
    .B(_132_),
    .Y(_135_)
  );
  NAND _361_ (
    .A(_135_),
    .B(_130_),
    .Y(_136_)
  );
  NAND _362_ (
    .A(_042_),
    .B(SKP[4]),
    .Y(_137_)
  );
  NAND _363_ (
    .A(_039_),
    .B(STP[4]),
    .Y(_138_)
  );
  NAND _364_ (
    .A(_138_),
    .B(_137_),
    .Y(_139_)
  );
  NAND _365_ (
    .A(_009_),
    .B(IDL[4]),
    .Y(_140_)
  );
  NAND _366_ (
    .A(_032_),
    .B(END[4]),
    .Y(_141_)
  );
  NAND _367_ (
    .A(_141_),
    .B(_140_),
    .Y(_142_)
  );
  NOR _368_ (
    .A(_142_),
    .B(_139_),
    .Y(_143_)
  );
  NAND _369_ (
    .A(_025_),
    .B(SDP[4]),
    .Y(_144_)
  );
  NAND _370_ (
    .A(_144_),
    .B(_004_),
    .Y(_145_)
  );
  NAND _371_ (
    .A(_028_),
    .B(FTS[4]),
    .Y(_146_)
  );
  NAND _372_ (
    .A(_035_),
    .B(PAD[4]),
    .Y(_147_)
  );
  NAND _373_ (
    .A(_147_),
    .B(_146_),
    .Y(_148_)
  );
  NOR _374_ (
    .A(_148_),
    .B(_145_),
    .Y(_149_)
  );
  NAND _375_ (
    .A(_149_),
    .B(_143_),
    .Y(_150_)
  );
  NOR _376_ (
    .A(_150_),
    .B(_136_),
    .Y(_151_)
  );
  NOR _377_ (
    .A(_151_),
    .B(_129_),
    .Y(_000_[4])
  );
  NOR _378_ (
    .A(_004_),
    .B(OUT[5]),
    .Y(_152_)
  );
  NAND _379_ (
    .A(_042_),
    .B(SKP[5]),
    .Y(_153_)
  );
  NOT _380_ (
    .A(IDL[5]),
    .Y(_154_)
  );
  NOR _381_ (
    .A(_084_),
    .B(_154_),
    .Y(_155_)
  );
  NOT _382_ (
    .A(COM[5]),
    .Y(_156_)
  );
  NOR _383_ (
    .A(_020_),
    .B(_156_),
    .Y(_157_)
  );
  NOR _384_ (
    .A(_157_),
    .B(_155_),
    .Y(_158_)
  );
  NAND _385_ (
    .A(_158_),
    .B(_153_),
    .Y(_159_)
  );
  NAND _386_ (
    .A(_045_),
    .B(EDB[5]),
    .Y(_160_)
  );
  NAND _387_ (
    .A(_032_),
    .B(END[5]),
    .Y(_161_)
  );
  NAND _388_ (
    .A(_161_),
    .B(_160_),
    .Y(_162_)
  );
  NAND _389_ (
    .A(_025_),
    .B(SDP[5]),
    .Y(_163_)
  );
  NAND _390_ (
    .A(_028_),
    .B(FTS[5]),
    .Y(_164_)
  );
  NAND _391_ (
    .A(_164_),
    .B(_163_),
    .Y(_165_)
  );
  NOR _392_ (
    .A(_165_),
    .B(_162_),
    .Y(_166_)
  );
  NAND _393_ (
    .A(_035_),
    .B(PAD[5]),
    .Y(_167_)
  );
  NAND _394_ (
    .A(_039_),
    .B(STP[5]),
    .Y(_168_)
  );
  NAND _395_ (
    .A(_168_),
    .B(_167_),
    .Y(_169_)
  );
  NAND _396_ (
    .A(_091_),
    .B(Tx_Buffer[5]),
    .Y(_170_)
  );
  NAND _397_ (
    .A(_170_),
    .B(_004_),
    .Y(_171_)
  );
  NOR _398_ (
    .A(_171_),
    .B(_169_),
    .Y(_172_)
  );
  NAND _399_ (
    .A(_172_),
    .B(_166_),
    .Y(_173_)
  );
  NOR _400_ (
    .A(_173_),
    .B(_159_),
    .Y(_174_)
  );
  NOR _401_ (
    .A(_174_),
    .B(_152_),
    .Y(_000_[5])
  );
  NOR _402_ (
    .A(_004_),
    .B(OUT[6]),
    .Y(_175_)
  );
  NAND _403_ (
    .A(_045_),
    .B(EDB[6]),
    .Y(_176_)
  );
  NOT _404_ (
    .A(Tx_Buffer[6]),
    .Y(_177_)
  );
  NOR _405_ (
    .A(_015_),
    .B(_177_),
    .Y(_178_)
  );
  NOT _406_ (
    .A(STP[6]),
    .Y(_179_)
  );
  NOR _407_ (
    .A(_110_),
    .B(_179_),
    .Y(_180_)
  );
  NOR _408_ (
    .A(_180_),
    .B(_178_),
    .Y(_181_)
  );
  NAND _409_ (
    .A(_181_),
    .B(_176_),
    .Y(_182_)
  );
  NAND _410_ (
    .A(_025_),
    .B(SDP[6]),
    .Y(_183_)
  );
  NAND _411_ (
    .A(_035_),
    .B(PAD[6]),
    .Y(_184_)
  );
  NAND _412_ (
    .A(_184_),
    .B(_183_),
    .Y(_185_)
  );
  NAND _413_ (
    .A(_028_),
    .B(FTS[6]),
    .Y(_186_)
  );
  NAND _414_ (
    .A(_042_),
    .B(SKP[6]),
    .Y(_187_)
  );
  NAND _415_ (
    .A(_187_),
    .B(_186_),
    .Y(_188_)
  );
  NOR _416_ (
    .A(_188_),
    .B(_185_),
    .Y(_189_)
  );
  NAND _417_ (
    .A(_066_),
    .B(COM[6]),
    .Y(_190_)
  );
  NAND _418_ (
    .A(_009_),
    .B(IDL[6]),
    .Y(_191_)
  );
  NAND _419_ (
    .A(_191_),
    .B(_190_),
    .Y(_192_)
  );
  NAND _420_ (
    .A(_032_),
    .B(END[6]),
    .Y(_193_)
  );
  NAND _421_ (
    .A(_193_),
    .B(_004_),
    .Y(_194_)
  );
  NOR _422_ (
    .A(_194_),
    .B(_192_),
    .Y(_195_)
  );
  NAND _423_ (
    .A(_195_),
    .B(_189_),
    .Y(_196_)
  );
  NOR _424_ (
    .A(_196_),
    .B(_182_),
    .Y(_197_)
  );
  NOR _425_ (
    .A(_197_),
    .B(_175_),
    .Y(_000_[6])
  );
  NOR _426_ (
    .A(_004_),
    .B(OUT[7]),
    .Y(_198_)
  );
  NAND _427_ (
    .A(_028_),
    .B(FTS[7]),
    .Y(_199_)
  );
  NOT _428_ (
    .A(END[7]),
    .Y(_200_)
  );
  NAND _429_ (
    .A(_054_),
    .B(_014_),
    .Y(_201_)
  );
  NOR _430_ (
    .A(_201_),
    .B(_200_),
    .Y(_202_)
  );
  NOT _431_ (
    .A(IDL[7]),
    .Y(_203_)
  );
  NOR _432_ (
    .A(_084_),
    .B(_203_),
    .Y(_204_)
  );
  NOR _433_ (
    .A(_204_),
    .B(_202_),
    .Y(_205_)
  );
  NAND _434_ (
    .A(_205_),
    .B(_199_),
    .Y(_206_)
  );
  NAND _435_ (
    .A(_045_),
    .B(EDB[7]),
    .Y(_207_)
  );
  NAND _436_ (
    .A(_066_),
    .B(COM[7]),
    .Y(_208_)
  );
  NAND _437_ (
    .A(_208_),
    .B(_207_),
    .Y(_209_)
  );
  NAND _438_ (
    .A(_039_),
    .B(STP[7]),
    .Y(_210_)
  );
  NAND _439_ (
    .A(_025_),
    .B(SDP[7]),
    .Y(_211_)
  );
  NAND _440_ (
    .A(_211_),
    .B(_210_),
    .Y(_212_)
  );
  NOR _441_ (
    .A(_212_),
    .B(_209_),
    .Y(_213_)
  );
  NAND _442_ (
    .A(_091_),
    .B(Tx_Buffer[7]),
    .Y(_214_)
  );
  NAND _443_ (
    .A(_214_),
    .B(_004_),
    .Y(_215_)
  );
  NAND _444_ (
    .A(_042_),
    .B(SKP[7]),
    .Y(_216_)
  );
  NAND _445_ (
    .A(_035_),
    .B(PAD[7]),
    .Y(_217_)
  );
  NAND _446_ (
    .A(_217_),
    .B(_216_),
    .Y(_218_)
  );
  NOR _447_ (
    .A(_218_),
    .B(_215_),
    .Y(_219_)
  );
  NAND _448_ (
    .A(_219_),
    .B(_213_),
    .Y(_220_)
  );
  NOR _449_ (
    .A(_220_),
    .B(_206_),
    .Y(_221_)
  );
  NOR _450_ (
    .A(_221_),
    .B(_198_),
    .Y(_000_[7])
  );
  DFF _451_ (
    .C(CLK),
    .D(_000_[0]),
    .Q(OUT[0])
  );
  DFF _452_ (
    .C(CLK),
    .D(_000_[1]),
    .Q(OUT[1])
  );
  DFF _453_ (
    .C(CLK),
    .D(_000_[2]),
    .Q(OUT[2])
  );
  DFF _454_ (
    .C(CLK),
    .D(_000_[3]),
    .Q(OUT[3])
  );
  DFF _455_ (
    .C(CLK),
    .D(_000_[4]),
    .Q(OUT[4])
  );
  DFF _456_ (
    .C(CLK),
    .D(_000_[5]),
    .Q(OUT[5])
  );
  DFF _457_ (
    .C(CLK),
    .D(_000_[6]),
    .Q(OUT[6])
  );
  DFF _458_ (
    .C(CLK),
    .D(_000_[7]),
    .Q(OUT[7])
  );
endmodule
