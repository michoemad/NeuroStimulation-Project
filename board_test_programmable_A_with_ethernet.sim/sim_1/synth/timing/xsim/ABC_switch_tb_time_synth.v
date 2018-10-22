// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jun  1 16:05:34 2018
// Host        : LAPTOP-HPTS9AFJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Neurostimulation/Mike
//               Copy/board_test_programmable_A_with_ethernet.sim/sim_1/synth/timing/xsim/ABC_switch_tb_time_synth.v}
// Design      : structre
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CLK_CH_generator
   (CLK_DEC_OBUF,
    first_edge_fall_standard_OBUF,
    \total_posedge_count[1] ,
    CLK,
    \total_posedge_count[6] ,
    posedge_boosted_clk_counter_IBUF,
    C,
    \total_posedge_count[6]_0 ,
    state_indicator_OBUF,
    \total_posedge_count[5] ,
    \total_posedge_count[1]_0 ,
    \total_posedge_count[1]_1 ,
    \total_posedge_count[1]_2 ,
    \total_posedge_count[1]_3 ,
    O,
    \total_posedge_count[1]_4 );
  output CLK_DEC_OBUF;
  output [2:0]first_edge_fall_standard_OBUF;
  input \total_posedge_count[1] ;
  input CLK;
  input \total_posedge_count[6] ;
  input [9:0]posedge_boosted_clk_counter_IBUF;
  input [2:0]C;
  input \total_posedge_count[6]_0 ;
  input [0:0]state_indicator_OBUF;
  input \total_posedge_count[5] ;
  input \total_posedge_count[1]_0 ;
  input \total_posedge_count[1]_1 ;
  input \total_posedge_count[1]_2 ;
  input \total_posedge_count[1]_3 ;
  input [3:0]O;
  input \total_posedge_count[1]_4 ;

  wire [2:0]C;
  wire CLK;
  wire CLK_CH0;
  wire CLK_CH0_carry_i_1_n_0;
  wire CLK_CH0_carry_i_2_n_0;
  wire CLK_CH0_carry_i_3_n_0;
  wire CLK_CH0_carry_i_4_n_0;
  wire CLK_CH0_carry_n_1;
  wire CLK_CH0_carry_n_2;
  wire CLK_CH0_carry_n_3;
  wire CLK_CH_i_2_n_0;
  wire CLK_DEC_OBUF;
  wire [3:0]O;
  wire [2:0]first_edge_fall_standard_OBUF;
  wire [9:0]posedge_boosted_clk_counter_IBUF;
  wire [8:2]signal_end;
  wire signal_end__0_carry__0_i_1_n_0;
  wire signal_end__0_carry__0_i_2_n_0;
  wire signal_end__0_carry__0_i_3_n_0;
  wire signal_end__0_carry__0_i_4_n_0;
  wire signal_end__0_carry__0_i_5_n_0;
  wire signal_end__0_carry__0_i_6_n_0;
  wire signal_end__0_carry__0_n_0;
  wire signal_end__0_carry__0_n_2;
  wire signal_end__0_carry__0_n_3;
  wire signal_end__0_carry_i_1_n_0;
  wire signal_end__0_carry_i_2_n_0;
  wire signal_end__0_carry_i_3_n_0;
  wire signal_end__0_carry_i_4_n_0;
  wire signal_end__0_carry_i_5_n_0;
  wire signal_end__0_carry_i_6_n_0;
  wire signal_end__0_carry_n_0;
  wire signal_end__0_carry_n_1;
  wire signal_end__0_carry_n_2;
  wire signal_end__0_carry_n_3;
  wire [0:0]state_indicator_OBUF;
  wire \total_posedge_count[1] ;
  wire \total_posedge_count[1]_0 ;
  wire \total_posedge_count[1]_1 ;
  wire \total_posedge_count[1]_2 ;
  wire \total_posedge_count[1]_3 ;
  wire \total_posedge_count[1]_4 ;
  wire \total_posedge_count[5] ;
  wire \total_posedge_count[6] ;
  wire \total_posedge_count[6]_0 ;
  wire [3:0]NLW_CLK_CH0_carry_O_UNCONNECTED;
  wire [2:2]NLW_signal_end__0_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_signal_end__0_carry__0_O_UNCONNECTED;

  CARRY4 CLK_CH0_carry
       (.CI(1'b0),
        .CO({CLK_CH0,CLK_CH0_carry_n_1,CLK_CH0_carry_n_2,CLK_CH0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CLK_CH0_carry_O_UNCONNECTED[3:0]),
        .S({CLK_CH0_carry_i_1_n_0,CLK_CH0_carry_i_2_n_0,CLK_CH0_carry_i_3_n_0,CLK_CH0_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    CLK_CH0_carry_i_1
       (.I0(signal_end__0_carry__0_n_0),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(CLK_CH0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CLK_CH0_carry_i_2
       (.I0(posedge_boosted_clk_counter_IBUF[6]),
        .I1(signal_end[6]),
        .I2(signal_end[7]),
        .I3(posedge_boosted_clk_counter_IBUF[7]),
        .I4(posedge_boosted_clk_counter_IBUF[8]),
        .I5(signal_end[8]),
        .O(CLK_CH0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CLK_CH0_carry_i_3
       (.I0(posedge_boosted_clk_counter_IBUF[3]),
        .I1(signal_end[3]),
        .I2(signal_end[4]),
        .I3(posedge_boosted_clk_counter_IBUF[4]),
        .I4(posedge_boosted_clk_counter_IBUF[5]),
        .I5(signal_end[5]),
        .O(CLK_CH0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    CLK_CH0_carry_i_4
       (.I0(\total_posedge_count[6] ),
        .I1(posedge_boosted_clk_counter_IBUF[1]),
        .I2(signal_end[2]),
        .I3(posedge_boosted_clk_counter_IBUF[2]),
        .I4(C[0]),
        .I5(posedge_boosted_clk_counter_IBUF[0]),
        .O(CLK_CH0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    CLK_CH_i_2
       (.I0(CLK_CH0),
        .I1(state_indicator_OBUF),
        .O(CLK_CH_i_2_n_0));
  FDSE #(
    .INIT(1'b0)) 
    CLK_CH_reg
       (.C(CLK),
        .CE(CLK_CH_i_2_n_0),
        .D(1'b0),
        .Q(CLK_DEC_OBUF),
        .S(\total_posedge_count[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[0]_inst_i_1 
       (.I0(C[0]),
        .O(first_edge_fall_standard_OBUF[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[1]_inst_i_1 
       (.I0(\total_posedge_count[6] ),
        .O(first_edge_fall_standard_OBUF[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[2]_inst_i_1 
       (.I0(\total_posedge_count[6]_0 ),
        .O(first_edge_fall_standard_OBUF[2]));
  CARRY4 signal_end__0_carry
       (.CI(1'b0),
        .CO({signal_end__0_carry_n_0,signal_end__0_carry_n_1,signal_end__0_carry_n_2,signal_end__0_carry_n_3}),
        .CYINIT(first_edge_fall_standard_OBUF[0]),
        .DI({signal_end__0_carry_i_1_n_0,signal_end__0_carry_i_2_n_0,first_edge_fall_standard_OBUF[2:1]}),
        .O(signal_end[5:2]),
        .S({signal_end__0_carry_i_3_n_0,signal_end__0_carry_i_4_n_0,signal_end__0_carry_i_5_n_0,signal_end__0_carry_i_6_n_0}));
  CARRY4 signal_end__0_carry__0
       (.CI(signal_end__0_carry_n_0),
        .CO({signal_end__0_carry__0_n_0,NLW_signal_end__0_carry__0_CO_UNCONNECTED[2],signal_end__0_carry__0_n_2,signal_end__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,signal_end__0_carry__0_i_1_n_0,signal_end__0_carry__0_i_2_n_0,signal_end__0_carry__0_i_3_n_0}),
        .O({NLW_signal_end__0_carry__0_O_UNCONNECTED[3],signal_end[8:6]}),
        .S({1'b1,signal_end__0_carry__0_i_4_n_0,signal_end__0_carry__0_i_5_n_0,signal_end__0_carry__0_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    signal_end__0_carry__0_i_1
       (.I0(\total_posedge_count[1]_3 ),
        .O(signal_end__0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    signal_end__0_carry__0_i_2
       (.I0(\total_posedge_count[1]_2 ),
        .O(signal_end__0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    signal_end__0_carry__0_i_3
       (.I0(\total_posedge_count[1]_1 ),
        .O(signal_end__0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_end__0_carry__0_i_4
       (.I0(\total_posedge_count[1]_3 ),
        .I1(\total_posedge_count[1]_4 ),
        .O(signal_end__0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_end__0_carry__0_i_5
       (.I0(\total_posedge_count[1]_2 ),
        .I1(\total_posedge_count[1]_3 ),
        .O(signal_end__0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_end__0_carry__0_i_6
       (.I0(\total_posedge_count[1]_1 ),
        .I1(\total_posedge_count[1]_2 ),
        .O(signal_end__0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    signal_end__0_carry_i_1
       (.I0(\total_posedge_count[1]_0 ),
        .O(signal_end__0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    signal_end__0_carry_i_2
       (.I0(\total_posedge_count[5] ),
        .O(signal_end__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_end__0_carry_i_3
       (.I0(\total_posedge_count[1]_0 ),
        .I1(\total_posedge_count[1]_1 ),
        .O(signal_end__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    signal_end__0_carry_i_4
       (.I0(\total_posedge_count[5] ),
        .I1(\total_posedge_count[1]_0 ),
        .O(signal_end__0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0F474747F0F0F0F0)) 
    signal_end__0_carry_i_5
       (.I0(O[3]),
        .I1(O[2]),
        .I2(C[2]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(C[1]),
        .O(signal_end__0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h04CCCCF2CC04F2CC)) 
    signal_end__0_carry_i_6
       (.I0(O[0]),
        .I1(C[1]),
        .I2(O[1]),
        .I3(C[2]),
        .I4(O[2]),
        .I5(O[3]),
        .O(signal_end__0_carry_i_6_n_0));
endmodule

module CLK_D_generator
   (CLK_D_OBUF,
    CLK_D_reg_0,
    O,
    \signal_end_reg[3]_0 ,
    \signal_end_reg[3]_1 ,
    \signal_end_reg[7]_0 ,
    \signal_end_reg[7]_1 ,
    \signal_end_reg[7]_2 ,
    \signal_end_reg[7]_3 ,
    \signal_end_reg[7]_4 ,
    \signal_end_reg[3]_2 ,
    \signal_end_reg[3]_3 ,
    CO,
    CLK,
    C,
    state_indicator_OBUF,
    programmable_D_flag_IBUF,
    \total_posedge_count[1] ,
    pulse_interval_standard_OBUF,
    \total_posedge_count[5] ,
    posedge_boosted_clk_counter_IBUF,
    total_posedge_count_IBUF);
  output CLK_D_OBUF;
  output CLK_D_reg_0;
  output [3:0]O;
  output \signal_end_reg[3]_0 ;
  output \signal_end_reg[3]_1 ;
  output \signal_end_reg[7]_0 ;
  output \signal_end_reg[7]_1 ;
  output \signal_end_reg[7]_2 ;
  output \signal_end_reg[7]_3 ;
  output \signal_end_reg[7]_4 ;
  output \signal_end_reg[3]_2 ;
  output [1:0]\signal_end_reg[3]_3 ;
  output [0:0]CO;
  input CLK;
  input [5:0]C;
  input [0:0]state_indicator_OBUF;
  input programmable_D_flag_IBUF;
  input \total_posedge_count[1] ;
  input [4:0]pulse_interval_standard_OBUF;
  input \total_posedge_count[5] ;
  input [9:0]posedge_boosted_clk_counter_IBUF;
  input [8:0]total_posedge_count_IBUF;

  wire [4:0]A;
  wire [5:0]C;
  wire CLK;
  wire CLK_D0;
  wire CLK_D00_out;
  wire CLK_D0__4_carry_i_1_n_0;
  wire CLK_D0__4_carry_i_2_n_0;
  wire CLK_D0__4_carry_i_3_n_0;
  wire CLK_D0__4_carry_i_4_n_0;
  wire CLK_D0__4_carry_n_1;
  wire CLK_D0__4_carry_n_2;
  wire CLK_D0__4_carry_n_3;
  wire CLK_D0_carry_i_1_n_0;
  wire CLK_D0_carry_i_2_n_0;
  wire CLK_D0_carry_i_3_n_0;
  wire CLK_D0_carry_i_4_n_0;
  wire CLK_D0_carry_n_1;
  wire CLK_D0_carry_n_2;
  wire CLK_D0_carry_n_3;
  wire CLK_D_OBUF;
  wire CLK_D_i_1_n_0;
  wire CLK_D_reg_0;
  wire [0:0]CO;
  wire [3:0]O;
  wire [9:0]posedge_boosted_clk_counter_IBUF;
  wire programmable_D_flag_IBUF;
  wire [4:0]pulse_interval_standard_OBUF;
  wire \pulse_interval_standard_OBUF[3]_inst_i_1_n_1 ;
  wire \pulse_interval_standard_OBUF[3]_inst_i_1_n_2 ;
  wire \pulse_interval_standard_OBUF[3]_inst_i_1_n_3 ;
  wire \pulse_interval_standard_OBUF[3]_inst_i_4_n_0 ;
  wire \pulse_interval_standard_OBUF[3]_inst_i_5_n_0 ;
  wire \pulse_interval_standard_OBUF[3]_inst_i_6_n_0 ;
  wire \pulse_interval_standard_OBUF[3]_inst_i_7_n_0 ;
  wire \pulse_interval_standard_OBUF[3]_inst_i_8_n_0 ;
  wire \pulse_interval_standard_OBUF[3]_inst_i_9_n_0 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_11_n_0 ;
  wire signal_end0__1_carry__0_i_1_n_0;
  wire signal_end0__1_carry__0_i_2_n_0;
  wire signal_end0__1_carry__0_i_3_n_0;
  wire signal_end0__1_carry__0_i_4_n_0;
  wire signal_end0__1_carry__0_i_5_n_0;
  wire signal_end0__1_carry__0_i_6_n_0;
  wire signal_end0__1_carry__0_i_7_n_0;
  wire signal_end0__1_carry__0_i_8_n_0;
  wire signal_end0__1_carry__0_n_0;
  wire signal_end0__1_carry__0_n_1;
  wire signal_end0__1_carry__0_n_2;
  wire signal_end0__1_carry__0_n_3;
  wire signal_end0__1_carry__0_n_4;
  wire signal_end0__1_carry__0_n_5;
  wire signal_end0__1_carry__0_n_6;
  wire signal_end0__1_carry__0_n_7;
  wire signal_end0__1_carry__1_i_1_n_0;
  wire signal_end0__1_carry__1_i_2_n_0;
  wire signal_end0__1_carry__1_i_3_n_0;
  wire signal_end0__1_carry__1_n_3;
  wire signal_end0__1_carry__1_n_6;
  wire signal_end0__1_carry__1_n_7;
  wire signal_end0__1_carry_i_1_n_0;
  wire signal_end0__1_carry_i_2_n_0;
  wire signal_end0__1_carry_i_4_n_0;
  wire signal_end0__1_carry_i_5_n_0;
  wire signal_end0__1_carry_i_6_n_0;
  wire signal_end0__1_carry_i_7_n_0;
  wire signal_end0__1_carry_n_0;
  wire signal_end0__1_carry_n_1;
  wire signal_end0__1_carry_n_2;
  wire signal_end0__1_carry_n_3;
  wire signal_end0__1_carry_n_4;
  wire signal_end0__1_carry_n_5;
  wire signal_end0__1_carry_n_6;
  wire signal_end0__1_carry_n_7;
  wire \signal_end_reg[3]_0 ;
  wire \signal_end_reg[3]_1 ;
  wire \signal_end_reg[3]_2 ;
  wire [1:0]\signal_end_reg[3]_3 ;
  wire \signal_end_reg[7]_0 ;
  wire \signal_end_reg[7]_1 ;
  wire \signal_end_reg[7]_2 ;
  wire \signal_end_reg[7]_3 ;
  wire \signal_end_reg[7]_4 ;
  wire \signal_end_reg_n_0_[0] ;
  wire \signal_end_reg_n_0_[1] ;
  wire \signal_end_reg_n_0_[2] ;
  wire \signal_end_reg_n_0_[3] ;
  wire \signal_end_reg_n_0_[4] ;
  wire \signal_end_reg_n_0_[5] ;
  wire \signal_end_reg_n_0_[6] ;
  wire \signal_end_reg_n_0_[7] ;
  wire \signal_end_reg_n_0_[8] ;
  wire \signal_end_reg_n_0_[9] ;
  wire [9:1]signal_start;
  wire signal_start_carry__0_i_1_n_0;
  wire signal_start_carry__0_i_2_n_0;
  wire signal_start_carry__0_i_3_n_0;
  wire signal_start_carry__0_i_4_n_0;
  wire signal_start_carry__0_i_5_n_0;
  wire signal_start_carry__0_i_6_n_0;
  wire signal_start_carry__0_i_7_n_0;
  wire signal_start_carry__0_i_8_n_0;
  wire signal_start_carry__0_n_0;
  wire signal_start_carry__0_n_1;
  wire signal_start_carry__0_n_2;
  wire signal_start_carry__0_n_3;
  wire signal_start_carry__1_i_1_n_0;
  wire signal_start_carry_i_1_n_0;
  wire signal_start_carry_i_2_n_0;
  wire signal_start_carry_i_3_n_0;
  wire signal_start_carry_i_4_n_0;
  wire signal_start_carry_i_5_n_0;
  wire signal_start_carry_i_6_n_0;
  wire signal_start_carry_i_7_n_0;
  wire signal_start_carry_n_0;
  wire signal_start_carry_n_1;
  wire signal_start_carry_n_2;
  wire signal_start_carry_n_3;
  wire [0:0]state_indicator_OBUF;
  wire \total_posedge_count[1] ;
  wire \total_posedge_count[5] ;
  wire [8:0]total_posedge_count_IBUF;
  wire [3:0]NLW_CLK_D0__4_carry_O_UNCONNECTED;
  wire [3:0]NLW_CLK_D0_carry_O_UNCONNECTED;
  wire [3:1]NLW_signal_end0__1_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_signal_end0__1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_signal_start_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_signal_start_carry__1_O_UNCONNECTED;

  CARRY4 CLK_D0__4_carry
       (.CI(1'b0),
        .CO({CLK_D0,CLK_D0__4_carry_n_1,CLK_D0__4_carry_n_2,CLK_D0__4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CLK_D0__4_carry_O_UNCONNECTED[3:0]),
        .S({CLK_D0__4_carry_i_1_n_0,CLK_D0__4_carry_i_2_n_0,CLK_D0__4_carry_i_3_n_0,CLK_D0__4_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    CLK_D0__4_carry_i_1
       (.I0(\signal_end_reg_n_0_[9] ),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(CLK_D0__4_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CLK_D0__4_carry_i_2
       (.I0(posedge_boosted_clk_counter_IBUF[6]),
        .I1(\signal_end_reg_n_0_[6] ),
        .I2(\signal_end_reg_n_0_[7] ),
        .I3(posedge_boosted_clk_counter_IBUF[7]),
        .I4(posedge_boosted_clk_counter_IBUF[8]),
        .I5(\signal_end_reg_n_0_[8] ),
        .O(CLK_D0__4_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CLK_D0__4_carry_i_3
       (.I0(posedge_boosted_clk_counter_IBUF[3]),
        .I1(\signal_end_reg_n_0_[3] ),
        .I2(\signal_end_reg_n_0_[4] ),
        .I3(posedge_boosted_clk_counter_IBUF[4]),
        .I4(posedge_boosted_clk_counter_IBUF[5]),
        .I5(\signal_end_reg_n_0_[5] ),
        .O(CLK_D0__4_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CLK_D0__4_carry_i_4
       (.I0(posedge_boosted_clk_counter_IBUF[0]),
        .I1(\signal_end_reg_n_0_[0] ),
        .I2(\signal_end_reg_n_0_[1] ),
        .I3(posedge_boosted_clk_counter_IBUF[1]),
        .I4(posedge_boosted_clk_counter_IBUF[2]),
        .I5(\signal_end_reg_n_0_[2] ),
        .O(CLK_D0__4_carry_i_4_n_0));
  CARRY4 CLK_D0_carry
       (.CI(1'b0),
        .CO({CLK_D00_out,CLK_D0_carry_n_1,CLK_D0_carry_n_2,CLK_D0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_CLK_D0_carry_O_UNCONNECTED[3:0]),
        .S({CLK_D0_carry_i_1_n_0,CLK_D0_carry_i_2_n_0,CLK_D0_carry_i_3_n_0,CLK_D0_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    CLK_D0_carry_i_1
       (.I0(signal_start[9]),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(CLK_D0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CLK_D0_carry_i_2
       (.I0(posedge_boosted_clk_counter_IBUF[6]),
        .I1(signal_start[6]),
        .I2(signal_start[7]),
        .I3(posedge_boosted_clk_counter_IBUF[7]),
        .I4(posedge_boosted_clk_counter_IBUF[8]),
        .I5(signal_start[8]),
        .O(CLK_D0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CLK_D0_carry_i_3
       (.I0(posedge_boosted_clk_counter_IBUF[3]),
        .I1(signal_start[3]),
        .I2(signal_start[4]),
        .I3(posedge_boosted_clk_counter_IBUF[4]),
        .I4(posedge_boosted_clk_counter_IBUF[5]),
        .I5(signal_start[5]),
        .O(CLK_D0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    CLK_D0_carry_i_4
       (.I0(signal_start[1]),
        .I1(posedge_boosted_clk_counter_IBUF[1]),
        .I2(signal_start[2]),
        .I3(posedge_boosted_clk_counter_IBUF[2]),
        .I4(C[0]),
        .I5(posedge_boosted_clk_counter_IBUF[0]),
        .O(CLK_D0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    CLK_D_i_1
       (.I0(CLK_D0),
        .I1(state_indicator_OBUF),
        .O(CLK_D_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    CLK_D_reg
       (.C(CLK),
        .CE(CLK_D_i_1_n_0),
        .D(1'b0),
        .Q(CLK_D_OBUF),
        .S(CLK_D_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    CLK_LATCH_i_1
       (.I0(state_indicator_OBUF),
        .I1(CLK_D00_out),
        .O(CLK_D_reg_0));
  LUT6 #(
    .INIT(64'h3783ECC18337C1EC)) 
    \half_PHI_pulse_width_standard_OBUF[1]_inst_i_2 
       (.I0(O[0]),
        .I1(C[2]),
        .I2(O[1]),
        .I3(C[3]),
        .I4(O[2]),
        .I5(O[3]),
        .O(\signal_end_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h00484848B7DE96DE)) 
    \half_PHI_pulse_width_standard_OBUF[2]_inst_i_2 
       (.I0(O[3]),
        .I1(O[2]),
        .I2(C[3]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(C[2]),
        .O(\signal_end_reg[3]_1 ));
  LUT6 #(
    .INIT(64'h00155000AFFFFFEA)) 
    \half_PHI_pulse_width_standard_OBUF[3]_inst_i_2 
       (.I0(C[2]),
        .I1(O[0]),
        .I2(O[1]),
        .I3(O[2]),
        .I4(O[3]),
        .I5(C[3]),
        .O(\signal_end_reg[3]_2 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \half_PHI_pulse_width_standard_OBUF[4]_inst_i_2 
       (.I0(C[3]),
        .I1(C[1]),
        .I2(C[0]),
        .I3(C[2]),
        .I4(C[4]),
        .O(\signal_end_reg[7]_4 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \half_PHI_pulse_width_standard_OBUF[5]_inst_i_2 
       (.I0(C[4]),
        .I1(C[2]),
        .I2(C[0]),
        .I3(C[1]),
        .I4(C[3]),
        .I5(C[5]),
        .O(\signal_end_reg[7]_3 ));
  LUT6 #(
    .INIT(64'hFF0013FFEC00FFEC)) 
    \half_PHI_pulse_width_standard_OBUF[6]_inst_i_2 
       (.I0(pulse_interval_standard_OBUF[1]),
        .I1(\signal_end_reg[7]_2 ),
        .I2(pulse_interval_standard_OBUF[0]),
        .I3(pulse_interval_standard_OBUF[3]),
        .I4(pulse_interval_standard_OBUF[4]),
        .I5(pulse_interval_standard_OBUF[2]),
        .O(\signal_end_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h0105FFFFFFFFFEFA)) 
    \half_PHI_pulse_width_standard_OBUF[7]_inst_i_2 
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(pulse_interval_standard_OBUF[0]),
        .I2(\signal_end_reg[7]_2 ),
        .I3(pulse_interval_standard_OBUF[1]),
        .I4(pulse_interval_standard_OBUF[4]),
        .I5(pulse_interval_standard_OBUF[3]),
        .O(\signal_end_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFBEFEFE)) 
    \half_PHI_pulse_width_standard_OBUF[9]_inst_i_3 
       (.I0(\total_posedge_count[5] ),
        .I1(O[3]),
        .I2(O[2]),
        .I3(O[0]),
        .I4(O[1]),
        .I5(C[3]),
        .O(\signal_end_reg[7]_2 ));
  CARRY4 \pulse_interval_standard_OBUF[3]_inst_i_1 
       (.CI(1'b0),
        .CO({CO,\pulse_interval_standard_OBUF[3]_inst_i_1_n_1 ,\pulse_interval_standard_OBUF[3]_inst_i_1_n_2 ,\pulse_interval_standard_OBUF[3]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({A[1:0],1'b0,1'b1}),
        .O(O),
        .S({\pulse_interval_standard_OBUF[3]_inst_i_4_n_0 ,\pulse_interval_standard_OBUF[3]_inst_i_5_n_0 ,\pulse_interval_standard_OBUF[3]_inst_i_6_n_0 ,\pulse_interval_standard_OBUF[3]_inst_i_7_n_0 }));
  LUT6 #(
    .INIT(64'h6DFB205B25FB2049)) 
    \pulse_interval_standard_OBUF[3]_inst_i_2 
       (.I0(\signal_end_reg[3]_3 [1]),
        .I1(total_posedge_count_IBUF[2]),
        .I2(total_posedge_count_IBUF[3]),
        .I3(\pulse_interval_standard_OBUF[3]_inst_i_8_n_0 ),
        .I4(\signal_end_reg[3]_3 [0]),
        .I5(total_posedge_count_IBUF[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'h2BE3B83B23E2382B)) 
    \pulse_interval_standard_OBUF[3]_inst_i_3 
       (.I0(A[1]),
        .I1(\pulse_interval_standard_OBUF[3]_inst_i_9_n_0 ),
        .I2(\signal_end_reg[3]_3 [0]),
        .I3(total_posedge_count_IBUF[1]),
        .I4(total_posedge_count_IBUF[2]),
        .I5(total_posedge_count_IBUF[0]),
        .O(A[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \pulse_interval_standard_OBUF[3]_inst_i_4 
       (.I0(A[1]),
        .I1(\signal_end_reg[3]_3 [1]),
        .O(\pulse_interval_standard_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h24ECB7342CED3724)) 
    \pulse_interval_standard_OBUF[3]_inst_i_5 
       (.I0(A[1]),
        .I1(\pulse_interval_standard_OBUF[3]_inst_i_9_n_0 ),
        .I2(\signal_end_reg[3]_3 [0]),
        .I3(total_posedge_count_IBUF[1]),
        .I4(total_posedge_count_IBUF[2]),
        .I5(total_posedge_count_IBUF[0]),
        .O(\pulse_interval_standard_OBUF[3]_inst_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_interval_standard_OBUF[3]_inst_i_6 
       (.I0(A[1]),
        .O(\pulse_interval_standard_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2BE3B83B23E2382B)) 
    \pulse_interval_standard_OBUF[3]_inst_i_7 
       (.I0(A[1]),
        .I1(\pulse_interval_standard_OBUF[3]_inst_i_9_n_0 ),
        .I2(\signal_end_reg[3]_3 [0]),
        .I3(total_posedge_count_IBUF[1]),
        .I4(total_posedge_count_IBUF[2]),
        .I5(total_posedge_count_IBUF[0]),
        .O(\pulse_interval_standard_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9966695656999569)) 
    \pulse_interval_standard_OBUF[3]_inst_i_8 
       (.I0(total_posedge_count_IBUF[3]),
        .I1(total_posedge_count_IBUF[4]),
        .I2(total_posedge_count_IBUF[7]),
        .I3(total_posedge_count_IBUF[6]),
        .I4(total_posedge_count_IBUF[5]),
        .I5(total_posedge_count_IBUF[8]),
        .O(\pulse_interval_standard_OBUF[3]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \pulse_interval_standard_OBUF[3]_inst_i_9 
       (.I0(total_posedge_count_IBUF[3]),
        .I1(total_posedge_count_IBUF[2]),
        .I2(\signal_end_reg[3]_3 [1]),
        .O(\pulse_interval_standard_OBUF[3]_inst_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6B5A294A)) 
    \pulse_interval_standard_OBUF[7]_inst_i_10 
       (.I0(total_posedge_count_IBUF[8]),
        .I1(total_posedge_count_IBUF[5]),
        .I2(total_posedge_count_IBUF[6]),
        .I3(total_posedge_count_IBUF[7]),
        .I4(total_posedge_count_IBUF[4]),
        .O(A[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h56959969)) 
    \pulse_interval_standard_OBUF[7]_inst_i_11 
       (.I0(total_posedge_count_IBUF[4]),
        .I1(total_posedge_count_IBUF[5]),
        .I2(total_posedge_count_IBUF[8]),
        .I3(total_posedge_count_IBUF[6]),
        .I4(total_posedge_count_IBUF[7]),
        .O(\pulse_interval_standard_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3B63C6DC2342C49C)) 
    \pulse_interval_standard_OBUF[7]_inst_i_4 
       (.I0(total_posedge_count_IBUF[4]),
        .I1(total_posedge_count_IBUF[7]),
        .I2(total_posedge_count_IBUF[6]),
        .I3(total_posedge_count_IBUF[8]),
        .I4(total_posedge_count_IBUF[5]),
        .I5(total_posedge_count_IBUF[3]),
        .O(\signal_end_reg[3]_3 [1]));
  LUT6 #(
    .INIT(64'h6DFB205B25FB2049)) 
    \pulse_interval_standard_OBUF[7]_inst_i_5 
       (.I0(A[4]),
        .I1(total_posedge_count_IBUF[3]),
        .I2(total_posedge_count_IBUF[4]),
        .I3(\pulse_interval_standard_OBUF[7]_inst_i_11_n_0 ),
        .I4(\signal_end_reg[3]_3 [1]),
        .I5(total_posedge_count_IBUF[2]),
        .O(\signal_end_reg[3]_3 [0]));
  CARRY4 signal_end0__1_carry
       (.CI(1'b0),
        .CO({signal_end0__1_carry_n_0,signal_end0__1_carry_n_1,signal_end0__1_carry_n_2,signal_end0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({signal_end0__1_carry_i_1_n_0,signal_end0__1_carry_i_2_n_0,signal_start[1],C[0]}),
        .O({signal_end0__1_carry_n_4,signal_end0__1_carry_n_5,signal_end0__1_carry_n_6,signal_end0__1_carry_n_7}),
        .S({signal_end0__1_carry_i_4_n_0,signal_end0__1_carry_i_5_n_0,signal_end0__1_carry_i_6_n_0,signal_end0__1_carry_i_7_n_0}));
  CARRY4 signal_end0__1_carry__0
       (.CI(signal_end0__1_carry_n_0),
        .CO({signal_end0__1_carry__0_n_0,signal_end0__1_carry__0_n_1,signal_end0__1_carry__0_n_2,signal_end0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({signal_end0__1_carry__0_i_1_n_0,signal_end0__1_carry__0_i_2_n_0,signal_end0__1_carry__0_i_3_n_0,signal_end0__1_carry__0_i_4_n_0}),
        .O({signal_end0__1_carry__0_n_4,signal_end0__1_carry__0_n_5,signal_end0__1_carry__0_n_6,signal_end0__1_carry__0_n_7}),
        .S({signal_end0__1_carry__0_i_5_n_0,signal_end0__1_carry__0_i_6_n_0,signal_end0__1_carry__0_i_7_n_0,signal_end0__1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h08AE)) 
    signal_end0__1_carry__0_i_1
       (.I0(signal_start[6]),
        .I1(programmable_D_flag_IBUF),
        .I2(\signal_end_reg[7]_1 ),
        .I3(\signal_end_reg[7]_3 ),
        .O(signal_end0__1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h4F04)) 
    signal_end0__1_carry__0_i_2
       (.I0(\signal_end_reg[7]_3 ),
        .I1(programmable_D_flag_IBUF),
        .I2(\signal_end_reg[7]_4 ),
        .I3(signal_start[5]),
        .O(signal_end0__1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h08AE)) 
    signal_end0__1_carry__0_i_3
       (.I0(signal_start[4]),
        .I1(programmable_D_flag_IBUF),
        .I2(\signal_end_reg[7]_4 ),
        .I3(\signal_end_reg[3]_2 ),
        .O(signal_end0__1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h4F04)) 
    signal_end0__1_carry__0_i_4
       (.I0(\signal_end_reg[3]_2 ),
        .I1(programmable_D_flag_IBUF),
        .I2(\signal_end_reg[3]_1 ),
        .I3(signal_start[3]),
        .O(signal_end0__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hB4BBD2444B442DBB)) 
    signal_end0__1_carry__0_i_5
       (.I0(\signal_end_reg[7]_3 ),
        .I1(signal_start[6]),
        .I2(\signal_end_reg[7]_0 ),
        .I3(programmable_D_flag_IBUF),
        .I4(\signal_end_reg[7]_1 ),
        .I5(signal_start[7]),
        .O(signal_end0__1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD2DDB4222D224BDD)) 
    signal_end0__1_carry__0_i_6
       (.I0(signal_start[5]),
        .I1(\signal_end_reg[7]_4 ),
        .I2(\signal_end_reg[7]_1 ),
        .I3(programmable_D_flag_IBUF),
        .I4(\signal_end_reg[7]_3 ),
        .I5(signal_start[6]),
        .O(signal_end0__1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hB4BBD2444B442DBB)) 
    signal_end0__1_carry__0_i_7
       (.I0(\signal_end_reg[3]_2 ),
        .I1(signal_start[4]),
        .I2(\signal_end_reg[7]_3 ),
        .I3(programmable_D_flag_IBUF),
        .I4(\signal_end_reg[7]_4 ),
        .I5(signal_start[5]),
        .O(signal_end0__1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hD2DDB4222D224BDD)) 
    signal_end0__1_carry__0_i_8
       (.I0(signal_start[3]),
        .I1(\signal_end_reg[3]_1 ),
        .I2(\signal_end_reg[7]_4 ),
        .I3(programmable_D_flag_IBUF),
        .I4(\signal_end_reg[3]_2 ),
        .I5(signal_start[4]),
        .O(signal_end0__1_carry__0_i_8_n_0));
  CARRY4 signal_end0__1_carry__1
       (.CI(signal_end0__1_carry__0_n_0),
        .CO({NLW_signal_end0__1_carry__1_CO_UNCONNECTED[3:1],signal_end0__1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,signal_end0__1_carry__1_i_1_n_0}),
        .O({NLW_signal_end0__1_carry__1_O_UNCONNECTED[3:2],signal_end0__1_carry__1_n_6,signal_end0__1_carry__1_n_7}),
        .S({1'b0,1'b0,signal_end0__1_carry__1_i_2_n_0,signal_end0__1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h08AE)) 
    signal_end0__1_carry__1_i_1
       (.I0(signal_start[7]),
        .I1(programmable_D_flag_IBUF),
        .I2(\signal_end_reg[7]_0 ),
        .I3(\signal_end_reg[7]_1 ),
        .O(signal_end0__1_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hDD4222BD)) 
    signal_end0__1_carry__1_i_2
       (.I0(signal_start[8]),
        .I1(\signal_end_reg[7]_0 ),
        .I2(programmable_D_flag_IBUF),
        .I3(\total_posedge_count[1] ),
        .I4(signal_start[9]),
        .O(signal_end0__1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hBB4BD42444B42BDB)) 
    signal_end0__1_carry__1_i_3
       (.I0(\signal_end_reg[7]_1 ),
        .I1(signal_start[7]),
        .I2(programmable_D_flag_IBUF),
        .I3(\total_posedge_count[1] ),
        .I4(\signal_end_reg[7]_0 ),
        .I5(signal_start[8]),
        .O(signal_end0__1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    signal_end0__1_carry_i_1
       (.I0(\signal_end_reg[3]_0 ),
        .I1(\signal_end_reg[3]_1 ),
        .I2(programmable_D_flag_IBUF),
        .I3(signal_start[2]),
        .O(signal_end0__1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9699)) 
    signal_end0__1_carry_i_2
       (.I0(signal_start[2]),
        .I1(\signal_end_reg[3]_0 ),
        .I2(\signal_end_reg[3]_1 ),
        .I3(programmable_D_flag_IBUF),
        .O(signal_end0__1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hD2DDB4222D224BDD)) 
    signal_end0__1_carry_i_4
       (.I0(signal_start[2]),
        .I1(\signal_end_reg[3]_0 ),
        .I2(\signal_end_reg[3]_2 ),
        .I3(programmable_D_flag_IBUF),
        .I4(\signal_end_reg[3]_1 ),
        .I5(signal_start[3]),
        .O(signal_end0__1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h99CC6933)) 
    signal_end0__1_carry_i_5
       (.I0(\signal_end_reg[3]_1 ),
        .I1(signal_start[2]),
        .I2(C[0]),
        .I3(programmable_D_flag_IBUF),
        .I4(\signal_end_reg[3]_0 ),
        .O(signal_end0__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hA659)) 
    signal_end0__1_carry_i_6
       (.I0(C[0]),
        .I1(programmable_D_flag_IBUF),
        .I2(\signal_end_reg[3]_0 ),
        .I3(signal_start[1]),
        .O(signal_end0__1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    signal_end0__1_carry_i_7
       (.I0(C[0]),
        .I1(programmable_D_flag_IBUF),
        .O(signal_end0__1_carry_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry_n_7),
        .Q(\signal_end_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry_n_6),
        .Q(\signal_end_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry_n_5),
        .Q(\signal_end_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry_n_4),
        .Q(\signal_end_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry__0_n_7),
        .Q(\signal_end_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry__0_n_6),
        .Q(\signal_end_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry__0_n_5),
        .Q(\signal_end_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry__0_n_4),
        .Q(\signal_end_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry__1_n_7),
        .Q(\signal_end_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_end_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(signal_end0__1_carry__1_n_6),
        .Q(\signal_end_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 signal_start_carry
       (.CI(1'b0),
        .CO({signal_start_carry_n_0,signal_start_carry_n_1,signal_start_carry_n_2,signal_start_carry_n_3}),
        .CYINIT(1'b0),
        .DI({signal_start_carry_i_1_n_0,signal_start_carry_i_2_n_0,signal_start_carry_i_3_n_0,1'b0}),
        .O(signal_start[4:1]),
        .S({signal_start_carry_i_4_n_0,signal_start_carry_i_5_n_0,signal_start_carry_i_6_n_0,signal_start_carry_i_7_n_0}));
  CARRY4 signal_start_carry__0
       (.CI(signal_start_carry_n_0),
        .CO({signal_start_carry__0_n_0,signal_start_carry__0_n_1,signal_start_carry__0_n_2,signal_start_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({signal_start_carry__0_i_1_n_0,signal_start_carry__0_i_2_n_0,signal_start_carry__0_i_3_n_0,signal_start_carry__0_i_4_n_0}),
        .O(signal_start[8:5]),
        .S({signal_start_carry__0_i_5_n_0,signal_start_carry__0_i_6_n_0,signal_start_carry__0_i_7_n_0,signal_start_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    signal_start_carry__0_i_1
       (.I0(\signal_end_reg[7]_0 ),
        .I1(\signal_end_reg[7]_1 ),
        .O(signal_start_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    signal_start_carry__0_i_2
       (.I0(\signal_end_reg[7]_1 ),
        .I1(\signal_end_reg[7]_3 ),
        .O(signal_start_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    signal_start_carry__0_i_3
       (.I0(\signal_end_reg[7]_3 ),
        .I1(\signal_end_reg[7]_4 ),
        .O(signal_start_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    signal_start_carry__0_i_4
       (.I0(\signal_end_reg[7]_4 ),
        .I1(\signal_end_reg[3]_2 ),
        .O(signal_start_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    signal_start_carry__0_i_5
       (.I0(\signal_end_reg[7]_1 ),
        .I1(\signal_end_reg[7]_0 ),
        .I2(\total_posedge_count[1] ),
        .O(signal_start_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    signal_start_carry__0_i_6
       (.I0(\signal_end_reg[7]_3 ),
        .I1(\signal_end_reg[7]_1 ),
        .I2(\signal_end_reg[7]_0 ),
        .O(signal_start_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    signal_start_carry__0_i_7
       (.I0(\signal_end_reg[7]_4 ),
        .I1(\signal_end_reg[7]_3 ),
        .I2(\signal_end_reg[7]_1 ),
        .O(signal_start_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    signal_start_carry__0_i_8
       (.I0(\signal_end_reg[3]_2 ),
        .I1(\signal_end_reg[7]_4 ),
        .I2(\signal_end_reg[7]_3 ),
        .O(signal_start_carry__0_i_8_n_0));
  CARRY4 signal_start_carry__1
       (.CI(signal_start_carry__0_n_0),
        .CO(NLW_signal_start_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_signal_start_carry__1_O_UNCONNECTED[3:1],signal_start[9]}),
        .S({1'b0,1'b0,1'b0,signal_start_carry__1_i_1_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    signal_start_carry__1_i_1
       (.I0(\signal_end_reg[7]_0 ),
        .I1(\total_posedge_count[1] ),
        .O(signal_start_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h008015AA50AA00AA)) 
    signal_start_carry_i_1
       (.I0(C[2]),
        .I1(O[0]),
        .I2(O[1]),
        .I3(C[3]),
        .I4(O[2]),
        .I5(O[3]),
        .O(signal_start_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0048121248481200)) 
    signal_start_carry_i_2
       (.I0(O[3]),
        .I1(O[2]),
        .I2(C[3]),
        .I3(O[1]),
        .I4(C[2]),
        .I5(O[0]),
        .O(signal_start_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h1FFFFCF1FCF11FFF)) 
    signal_start_carry_i_3
       (.I0(O[0]),
        .I1(O[1]),
        .I2(O[2]),
        .I3(C[2]),
        .I4(O[3]),
        .I5(C[3]),
        .O(signal_start_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    signal_start_carry_i_4
       (.I0(\signal_end_reg[3]_1 ),
        .I1(\signal_end_reg[3]_2 ),
        .I2(\signal_end_reg[7]_4 ),
        .O(signal_start_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0F01D1D1D0F)) 
    signal_start_carry_i_5
       (.I0(O[3]),
        .I1(O[2]),
        .I2(C[3]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(C[2]),
        .O(signal_start_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    signal_start_carry_i_6
       (.I0(C[2]),
        .O(signal_start_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hE83333E8)) 
    signal_start_carry_i_7
       (.I0(O[1]),
        .I1(O[2]),
        .I2(C[2]),
        .I3(O[3]),
        .I4(C[3]),
        .O(signal_start_carry_i_7_n_0));
endmodule

module CLK_LATCH_generator
   (CLK_LATCH_OBUF,
    \total_posedge_count[5] ,
    \total_posedge_count[1] ,
    CLK);
  output CLK_LATCH_OBUF;
  input \total_posedge_count[5] ;
  input \total_posedge_count[1] ;
  input CLK;

  wire CLK;
  wire CLK_LATCH_OBUF;
  wire \total_posedge_count[1] ;
  wire \total_posedge_count[5] ;

  FDSE #(
    .INIT(1'b0)) 
    CLK_LATCH_reg
       (.C(CLK),
        .CE(\total_posedge_count[1] ),
        .D(1'b0),
        .Q(CLK_LATCH_OBUF),
        .S(\total_posedge_count[5] ));
endmodule

module programmable_3_phase_clock
   (PHI2_OBUF,
    PHI2_reg_0,
    PHI1_OBUF,
    PHI3_OBUF,
    \signal_end_reg[7] ,
    CLK_CH_reg,
    \signal_end_reg[9] ,
    pulse_interval_standard_OBUF,
    \signal_end_reg[3] ,
    CLK,
    posedge_boosted_clk_counter_IBUF,
    state_indicator_OBUF,
    \total_posedge_count[6] ,
    \total_posedge_count[5] ,
    \total_posedge_count[1] ,
    \total_posedge_count[1]_0 ,
    \total_posedge_count[1]_1 ,
    \total_posedge_count[6]_0 ,
    \total_posedge_count[5]_0 ,
    \total_posedge_count[1]_2 ,
    O,
    total_posedge_count_IBUF,
    \total_posedge_count[4] ,
    CO,
    DI,
    S);
  output PHI2_OBUF;
  output PHI2_reg_0;
  output PHI1_OBUF;
  output PHI3_OBUF;
  output [5:0]\signal_end_reg[7] ;
  output CLK_CH_reg;
  output \signal_end_reg[9] ;
  output [4:0]pulse_interval_standard_OBUF;
  output \signal_end_reg[3] ;
  input CLK;
  input [9:0]posedge_boosted_clk_counter_IBUF;
  input [1:0]state_indicator_OBUF;
  input \total_posedge_count[6] ;
  input \total_posedge_count[5] ;
  input \total_posedge_count[1] ;
  input \total_posedge_count[1]_0 ;
  input \total_posedge_count[1]_1 ;
  input \total_posedge_count[6]_0 ;
  input \total_posedge_count[5]_0 ;
  input \total_posedge_count[1]_2 ;
  input [3:0]O;
  input [5:0]total_posedge_count_IBUF;
  input [1:0]\total_posedge_count[4] ;
  input [0:0]CO;
  input [2:0]DI;
  input [1:0]S;

  wire [5:5]A;
  wire [7:6]C;
  wire \CH/CLK_CH00_out ;
  wire CLK;
  wire CLK_CH_reg;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [3:0]O;
  wire PHI10;
  wire PHI101_out;
  wire PHI10__4_carry_i_1_n_0;
  wire PHI10__4_carry_i_2_n_0;
  wire PHI10__4_carry_i_3_n_0;
  wire PHI10__4_carry_i_4_n_0;
  wire PHI10__4_carry_i_5_n_0;
  wire PHI10__4_carry_n_1;
  wire PHI10__4_carry_n_2;
  wire PHI10__4_carry_n_3;
  wire PHI10_carry_i_1_n_0;
  wire PHI10_carry_i_2_n_0;
  wire PHI10_carry_i_3_n_0;
  wire PHI10_carry_i_4_n_0;
  wire PHI10_carry_n_1;
  wire PHI10_carry_n_2;
  wire PHI10_carry_n_3;
  wire PHI1_OBUF;
  wire PHI1_i_1_n_0;
  wire PHI1_i_2_n_0;
  wire PHI202_out;
  wire PHI20__4_carry_i_13_n_0;
  wire PHI20__4_carry_i_14_n_0;
  wire PHI20__4_carry_i_15_n_0;
  wire PHI20__4_carry_i_16_n_0;
  wire PHI20__4_carry_i_17_n_0;
  wire PHI20__4_carry_i_18_n_0;
  wire PHI20__4_carry_i_19_n_0;
  wire PHI20__4_carry_i_1_n_0;
  wire PHI20__4_carry_i_2_n_0;
  wire PHI20__4_carry_i_3_n_0;
  wire PHI20__4_carry_i_4_n_0;
  wire PHI20__4_carry_i_5_n_3;
  wire PHI20__4_carry_i_6_n_0;
  wire PHI20__4_carry_i_6_n_1;
  wire PHI20__4_carry_i_6_n_2;
  wire PHI20__4_carry_i_6_n_3;
  wire PHI20__4_carry_i_7_n_0;
  wire PHI20__4_carry_i_7_n_1;
  wire PHI20__4_carry_i_7_n_2;
  wire PHI20__4_carry_i_7_n_3;
  wire PHI20__4_carry_n_1;
  wire PHI20__4_carry_n_2;
  wire PHI20__4_carry_n_3;
  wire PHI20_carry_i_1_n_0;
  wire PHI20_carry_i_2_n_0;
  wire PHI20_carry_i_3_n_0;
  wire PHI20_carry_i_4_n_0;
  wire PHI20_carry_n_1;
  wire PHI20_carry_n_2;
  wire PHI20_carry_n_3;
  wire PHI2_OBUF;
  wire PHI2_i_1_n_0;
  wire PHI2_reg_0;
  wire PHI30;
  wire PHI300_out;
  wire PHI30__4_carry_i_1_n_0;
  wire PHI30__4_carry_i_2_n_0;
  wire PHI30__4_carry_i_3_n_0;
  wire PHI30__4_carry_i_4_n_0;
  wire PHI30__4_carry_i_5_n_0;
  wire PHI30__4_carry_n_1;
  wire PHI30__4_carry_n_2;
  wire PHI30__4_carry_n_3;
  wire PHI30_carry_i_1_n_0;
  wire PHI30_carry_i_2_n_0;
  wire PHI30_carry_i_3_n_0;
  wire PHI30_carry_i_4_n_0;
  wire PHI30_carry_n_1;
  wire PHI30_carry_n_2;
  wire PHI30_carry_n_3;
  wire PHI3_OBUF;
  wire PHI3_i_1_n_0;
  wire PHI3_i_2_n_0;
  wire [1:0]S;
  wire [9:1]first_edge_rise;
  wire [9:0]posedge_boosted_clk_counter_IBUF;
  wire [4:0]pulse_interval_standard_OBUF;
  wire \pulse_interval_standard_OBUF[7]_inst_i_1_n_0 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_1_n_1 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_1_n_2 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_1_n_3 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_3_n_0 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_6_n_0 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_7_n_0 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_8_n_0 ;
  wire \pulse_interval_standard_OBUF[7]_inst_i_9_n_0 ;
  wire \pulse_interval_standard_OBUF[8]_inst_i_2_n_0 ;
  wire [9:0]second_edge_fall;
  wire second_edge_fall_carry__0_i_1_n_0;
  wire second_edge_fall_carry__0_i_2_n_0;
  wire second_edge_fall_carry__0_i_3_n_0;
  wire second_edge_fall_carry__0_i_4_n_0;
  wire second_edge_fall_carry__0_i_5_n_0;
  wire second_edge_fall_carry__0_i_6_n_0;
  wire second_edge_fall_carry__0_i_7_n_0;
  wire second_edge_fall_carry__0_i_8_n_0;
  wire second_edge_fall_carry__0_n_0;
  wire second_edge_fall_carry__0_n_1;
  wire second_edge_fall_carry__0_n_2;
  wire second_edge_fall_carry__0_n_3;
  wire second_edge_fall_carry__1_i_1_n_0;
  wire second_edge_fall_carry__1_i_2_n_0;
  wire second_edge_fall_carry__1_i_3_n_0;
  wire second_edge_fall_carry__1_n_3;
  wire second_edge_fall_carry_i_1_n_0;
  wire second_edge_fall_carry_i_2_n_0;
  wire second_edge_fall_carry_i_3_n_0;
  wire second_edge_fall_carry_i_4_n_0;
  wire second_edge_fall_carry_i_5_n_0;
  wire second_edge_fall_carry_i_6_n_0;
  wire second_edge_fall_carry_i_7_n_0;
  wire second_edge_fall_carry_i_8_n_0;
  wire second_edge_fall_carry_n_0;
  wire second_edge_fall_carry_n_1;
  wire second_edge_fall_carry_n_2;
  wire second_edge_fall_carry_n_3;
  wire [9:1]second_edge_rise;
  wire second_edge_rise_carry__0_i_10_n_0;
  wire second_edge_rise_carry__0_i_11_n_0;
  wire second_edge_rise_carry__0_i_12_n_0;
  wire second_edge_rise_carry__0_i_13_n_0;
  wire second_edge_rise_carry__0_i_1_n_0;
  wire second_edge_rise_carry__0_i_1_n_1;
  wire second_edge_rise_carry__0_i_1_n_2;
  wire second_edge_rise_carry__0_i_1_n_3;
  wire second_edge_rise_carry__0_i_1_n_4;
  wire second_edge_rise_carry__0_i_1_n_5;
  wire second_edge_rise_carry__0_i_1_n_6;
  wire second_edge_rise_carry__0_i_1_n_7;
  wire second_edge_rise_carry__0_i_2_n_0;
  wire second_edge_rise_carry__0_i_3_n_0;
  wire second_edge_rise_carry__0_i_4_n_0;
  wire second_edge_rise_carry__0_i_5_n_0;
  wire second_edge_rise_carry__0_i_8_n_0;
  wire second_edge_rise_carry__0_i_9_n_0;
  wire second_edge_rise_carry__0_n_0;
  wire second_edge_rise_carry__0_n_1;
  wire second_edge_rise_carry__0_n_2;
  wire second_edge_rise_carry__0_n_3;
  wire second_edge_rise_carry__1_i_1_n_2;
  wire second_edge_rise_carry__1_i_1_n_7;
  wire second_edge_rise_carry__1_i_2_n_0;
  wire second_edge_rise_carry__1_i_3_n_0;
  wire second_edge_rise_carry__1_n_3;
  wire second_edge_rise_carry_i_1_n_0;
  wire second_edge_rise_carry_i_1_n_1;
  wire second_edge_rise_carry_i_1_n_2;
  wire second_edge_rise_carry_i_1_n_3;
  wire second_edge_rise_carry_i_1_n_4;
  wire second_edge_rise_carry_i_1_n_5;
  wire second_edge_rise_carry_i_1_n_6;
  wire second_edge_rise_carry_i_1_n_7;
  wire second_edge_rise_carry_i_2_n_0;
  wire second_edge_rise_carry_i_3_n_0;
  wire second_edge_rise_carry_i_4_n_0;
  wire second_edge_rise_carry_i_5_n_0;
  wire second_edge_rise_carry_i_6_n_0;
  wire second_edge_rise_carry_i_7_n_0;
  wire second_edge_rise_carry_i_8_n_0;
  wire second_edge_rise_carry_i_9_n_0;
  wire second_edge_rise_carry_n_0;
  wire second_edge_rise_carry_n_1;
  wire second_edge_rise_carry_n_2;
  wire second_edge_rise_carry_n_3;
  wire \signal_end_reg[3] ;
  wire [5:0]\signal_end_reg[7] ;
  wire \signal_end_reg[9] ;
  wire [1:0]state_indicator_OBUF;
  wire [9:0]third_edge_count;
  wire [9:1]third_edge_rise0_out;
  wire third_edge_rise_carry__0_i_1_n_0;
  wire third_edge_rise_carry__0_i_1_n_1;
  wire third_edge_rise_carry__0_i_1_n_2;
  wire third_edge_rise_carry__0_i_1_n_3;
  wire third_edge_rise_carry__0_i_2_n_0;
  wire third_edge_rise_carry__0_i_3_n_0;
  wire third_edge_rise_carry__0_i_4_n_0;
  wire third_edge_rise_carry__0_i_5_n_0;
  wire third_edge_rise_carry__0_i_6_n_0;
  wire third_edge_rise_carry__0_i_7_n_0;
  wire third_edge_rise_carry__0_i_8_n_0;
  wire third_edge_rise_carry__0_i_9_n_0;
  wire third_edge_rise_carry__0_n_0;
  wire third_edge_rise_carry__0_n_1;
  wire third_edge_rise_carry__0_n_2;
  wire third_edge_rise_carry__0_n_3;
  wire third_edge_rise_carry__1_i_1_n_3;
  wire third_edge_rise_carry__1_i_2_n_0;
  wire third_edge_rise_carry__1_i_3_n_0;
  wire third_edge_rise_carry__1_i_4_n_0;
  wire third_edge_rise_carry__1_n_3;
  wire third_edge_rise_carry_i_1_n_0;
  wire third_edge_rise_carry_i_1_n_1;
  wire third_edge_rise_carry_i_1_n_2;
  wire third_edge_rise_carry_i_1_n_3;
  wire third_edge_rise_carry_i_2_n_0;
  wire third_edge_rise_carry_i_3_n_0;
  wire third_edge_rise_carry_i_4_n_0;
  wire third_edge_rise_carry_i_5_n_0;
  wire third_edge_rise_carry_i_6_n_0;
  wire third_edge_rise_carry_i_7_n_0;
  wire third_edge_rise_carry_i_8_n_0;
  wire third_edge_rise_carry_i_9_n_0;
  wire third_edge_rise_carry_n_0;
  wire third_edge_rise_carry_n_1;
  wire third_edge_rise_carry_n_2;
  wire third_edge_rise_carry_n_3;
  wire [9:0]thrid_edge_fall;
  wire thrid_edge_fall_carry__0_i_1_n_0;
  wire thrid_edge_fall_carry__0_i_2_n_0;
  wire thrid_edge_fall_carry__0_i_3_n_0;
  wire thrid_edge_fall_carry__0_i_4_n_0;
  wire thrid_edge_fall_carry__0_i_5_n_0;
  wire thrid_edge_fall_carry__0_i_6_n_0;
  wire thrid_edge_fall_carry__0_i_7_n_0;
  wire thrid_edge_fall_carry__0_i_8_n_0;
  wire thrid_edge_fall_carry__0_n_0;
  wire thrid_edge_fall_carry__0_n_1;
  wire thrid_edge_fall_carry__0_n_2;
  wire thrid_edge_fall_carry__0_n_3;
  wire thrid_edge_fall_carry__1_i_1_n_0;
  wire thrid_edge_fall_carry__1_i_2_n_0;
  wire thrid_edge_fall_carry__1_i_3_n_0;
  wire thrid_edge_fall_carry__1_n_3;
  wire thrid_edge_fall_carry_i_1_n_0;
  wire thrid_edge_fall_carry_i_2_n_0;
  wire thrid_edge_fall_carry_i_3_n_0;
  wire thrid_edge_fall_carry_i_4_n_0;
  wire thrid_edge_fall_carry_i_5_n_0;
  wire thrid_edge_fall_carry_i_6_n_0;
  wire thrid_edge_fall_carry_i_7_n_0;
  wire thrid_edge_fall_carry_i_8_n_0;
  wire thrid_edge_fall_carry_n_0;
  wire thrid_edge_fall_carry_n_1;
  wire thrid_edge_fall_carry_n_2;
  wire thrid_edge_fall_carry_n_3;
  wire \total_posedge_count[1] ;
  wire \total_posedge_count[1]_0 ;
  wire \total_posedge_count[1]_1 ;
  wire \total_posedge_count[1]_2 ;
  wire [1:0]\total_posedge_count[4] ;
  wire \total_posedge_count[5] ;
  wire \total_posedge_count[5]_0 ;
  wire \total_posedge_count[6] ;
  wire \total_posedge_count[6]_0 ;
  wire [5:0]total_posedge_count_IBUF;
  wire [3:0]NLW_PHI10__4_carry_O_UNCONNECTED;
  wire [3:0]NLW_PHI10_carry_O_UNCONNECTED;
  wire [3:0]NLW_PHI20__4_carry_O_UNCONNECTED;
  wire [3:1]NLW_PHI20__4_carry_i_5_CO_UNCONNECTED;
  wire [3:2]NLW_PHI20__4_carry_i_5_O_UNCONNECTED;
  wire [0:0]NLW_PHI20__4_carry_i_7_O_UNCONNECTED;
  wire [3:0]NLW_PHI20_carry_O_UNCONNECTED;
  wire [3:0]NLW_PHI30__4_carry_O_UNCONNECTED;
  wire [3:0]NLW_PHI30_carry_O_UNCONNECTED;
  wire [3:0]\NLW_pulse_interval_standard_OBUF[8]_inst_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_pulse_interval_standard_OBUF[8]_inst_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_second_edge_fall_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_second_edge_fall_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_second_edge_rise_carry_O_UNCONNECTED;
  wire [3:1]NLW_second_edge_rise_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_second_edge_rise_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_second_edge_rise_carry__1_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_second_edge_rise_carry__1_i_1_O_UNCONNECTED;
  wire [0:0]NLW_third_edge_rise_carry_O_UNCONNECTED;
  wire [3:1]NLW_third_edge_rise_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_third_edge_rise_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_third_edge_rise_carry__1_i_1_CO_UNCONNECTED;
  wire [3:2]NLW_third_edge_rise_carry__1_i_1_O_UNCONNECTED;
  wire [3:1]NLW_thrid_edge_fall_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_thrid_edge_fall_carry__1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    CLK_CH_i_1
       (.I0(state_indicator_OBUF[0]),
        .I1(\CH/CLK_CH00_out ),
        .O(CLK_CH_reg));
  CARRY4 PHI10__4_carry
       (.CI(1'b0),
        .CO({PHI101_out,PHI10__4_carry_n_1,PHI10__4_carry_n_2,PHI10__4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_PHI10__4_carry_O_UNCONNECTED[3:0]),
        .S({PHI10__4_carry_i_1_n_0,PHI10__4_carry_i_2_n_0,PHI10__4_carry_i_3_n_0,PHI10__4_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    PHI10__4_carry_i_1
       (.I0(second_edge_rise[9]),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(PHI10__4_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI10__4_carry_i_2
       (.I0(posedge_boosted_clk_counter_IBUF[6]),
        .I1(second_edge_rise[6]),
        .I2(second_edge_rise[7]),
        .I3(posedge_boosted_clk_counter_IBUF[7]),
        .I4(posedge_boosted_clk_counter_IBUF[8]),
        .I5(second_edge_rise[8]),
        .O(PHI10__4_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI10__4_carry_i_3
       (.I0(posedge_boosted_clk_counter_IBUF[3]),
        .I1(second_edge_rise[3]),
        .I2(second_edge_rise[4]),
        .I3(posedge_boosted_clk_counter_IBUF[4]),
        .I4(posedge_boosted_clk_counter_IBUF[5]),
        .I5(second_edge_rise[5]),
        .O(PHI10__4_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    PHI10__4_carry_i_4
       (.I0(posedge_boosted_clk_counter_IBUF[0]),
        .I1(PHI10__4_carry_i_5_n_0),
        .I2(second_edge_rise[1]),
        .I3(posedge_boosted_clk_counter_IBUF[1]),
        .I4(posedge_boosted_clk_counter_IBUF[2]),
        .I5(second_edge_rise[2]),
        .O(PHI10__4_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    PHI10__4_carry_i_5
       (.I0(second_edge_rise_carry_i_1_n_7),
        .I1(\signal_end_reg[7] [0]),
        .O(PHI10__4_carry_i_5_n_0));
  CARRY4 PHI10_carry
       (.CI(1'b0),
        .CO({PHI10,PHI10_carry_n_1,PHI10_carry_n_2,PHI10_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_PHI10_carry_O_UNCONNECTED[3:0]),
        .S({PHI10_carry_i_1_n_0,PHI10_carry_i_2_n_0,PHI10_carry_i_3_n_0,PHI10_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    PHI10_carry_i_1
       (.I0(second_edge_fall[9]),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(PHI10_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI10_carry_i_2
       (.I0(posedge_boosted_clk_counter_IBUF[6]),
        .I1(second_edge_fall[6]),
        .I2(second_edge_fall[7]),
        .I3(posedge_boosted_clk_counter_IBUF[7]),
        .I4(posedge_boosted_clk_counter_IBUF[8]),
        .I5(second_edge_fall[8]),
        .O(PHI10_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI10_carry_i_3
       (.I0(posedge_boosted_clk_counter_IBUF[3]),
        .I1(second_edge_fall[3]),
        .I2(second_edge_fall[4]),
        .I3(posedge_boosted_clk_counter_IBUF[4]),
        .I4(posedge_boosted_clk_counter_IBUF[5]),
        .I5(second_edge_fall[5]),
        .O(PHI10_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI10_carry_i_4
       (.I0(posedge_boosted_clk_counter_IBUF[0]),
        .I1(second_edge_fall[0]),
        .I2(second_edge_fall[1]),
        .I3(posedge_boosted_clk_counter_IBUF[1]),
        .I4(posedge_boosted_clk_counter_IBUF[2]),
        .I5(second_edge_fall[2]),
        .O(PHI10_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PHI1_i_1
       (.I0(state_indicator_OBUF[0]),
        .I1(PHI101_out),
        .O(PHI1_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    PHI1_i_2
       (.I0(PHI10),
        .I1(state_indicator_OBUF[0]),
        .O(PHI1_i_2_n_0));
  FDSE #(
    .INIT(1'b0)) 
    PHI1_reg
       (.C(CLK),
        .CE(PHI1_i_2_n_0),
        .D(1'b0),
        .Q(PHI1_OBUF),
        .S(PHI1_i_1_n_0));
  CARRY4 PHI20__4_carry
       (.CI(1'b0),
        .CO({PHI202_out,PHI20__4_carry_n_1,PHI20__4_carry_n_2,PHI20__4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_PHI20__4_carry_O_UNCONNECTED[3:0]),
        .S({PHI20__4_carry_i_1_n_0,PHI20__4_carry_i_2_n_0,PHI20__4_carry_i_3_n_0,PHI20__4_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    PHI20__4_carry_i_1
       (.I0(first_edge_rise[9]),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(PHI20__4_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    PHI20__4_carry_i_13
       (.I0(pulse_interval_standard_OBUF[4]),
        .I1(pulse_interval_standard_OBUF[3]),
        .I2(\total_posedge_count[1]_1 ),
        .O(PHI20__4_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9B64)) 
    PHI20__4_carry_i_14
       (.I0(pulse_interval_standard_OBUF[3]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[2]),
        .I3(\total_posedge_count[1]_0 ),
        .O(PHI20__4_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'h4DD3B22C)) 
    PHI20__4_carry_i_15
       (.I0(pulse_interval_standard_OBUF[1]),
        .I1(pulse_interval_standard_OBUF[3]),
        .I2(pulse_interval_standard_OBUF[4]),
        .I3(pulse_interval_standard_OBUF[2]),
        .I4(\total_posedge_count[1] ),
        .O(PHI20__4_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hD43D3D432BC2C2BC)) 
    PHI20__4_carry_i_16
       (.I0(pulse_interval_standard_OBUF[0]),
        .I1(pulse_interval_standard_OBUF[2]),
        .I2(pulse_interval_standard_OBUF[4]),
        .I3(pulse_interval_standard_OBUF[3]),
        .I4(pulse_interval_standard_OBUF[1]),
        .I5(\total_posedge_count[1]_2 ),
        .O(PHI20__4_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF9FF696F6)) 
    PHI20__4_carry_i_17
       (.I0(\signal_end_reg[7] [3]),
        .I1(O[3]),
        .I2(O[2]),
        .I3(O[1]),
        .I4(O[0]),
        .I5(\signal_end_reg[7] [2]),
        .O(PHI20__4_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'hFF85EAFF85FFFFEA)) 
    PHI20__4_carry_i_18
       (.I0(\signal_end_reg[7] [2]),
        .I1(O[0]),
        .I2(O[1]),
        .I3(\signal_end_reg[7] [3]),
        .I4(O[2]),
        .I5(O[3]),
        .O(PHI20__4_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'hCCB733DE843312CC)) 
    PHI20__4_carry_i_19
       (.I0(O[3]),
        .I1(O[2]),
        .I2(\signal_end_reg[7] [3]),
        .I3(O[1]),
        .I4(\signal_end_reg[7] [2]),
        .I5(O[0]),
        .O(PHI20__4_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI20__4_carry_i_2
       (.I0(posedge_boosted_clk_counter_IBUF[6]),
        .I1(first_edge_rise[6]),
        .I2(first_edge_rise[7]),
        .I3(posedge_boosted_clk_counter_IBUF[7]),
        .I4(posedge_boosted_clk_counter_IBUF[8]),
        .I5(first_edge_rise[8]),
        .O(PHI20__4_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI20__4_carry_i_3
       (.I0(posedge_boosted_clk_counter_IBUF[3]),
        .I1(first_edge_rise[3]),
        .I2(first_edge_rise[4]),
        .I3(posedge_boosted_clk_counter_IBUF[4]),
        .I4(posedge_boosted_clk_counter_IBUF[5]),
        .I5(first_edge_rise[5]),
        .O(PHI20__4_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h82000082)) 
    PHI20__4_carry_i_4
       (.I0(posedge_boosted_clk_counter_IBUF[0]),
        .I1(first_edge_rise[1]),
        .I2(posedge_boosted_clk_counter_IBUF[1]),
        .I3(posedge_boosted_clk_counter_IBUF[2]),
        .I4(first_edge_rise[2]),
        .O(PHI20__4_carry_i_4_n_0));
  CARRY4 PHI20__4_carry_i_5
       (.CI(PHI20__4_carry_i_6_n_0),
        .CO({NLW_PHI20__4_carry_i_5_CO_UNCONNECTED[3:1],PHI20__4_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_PHI20__4_carry_i_5_O_UNCONNECTED[3:2],first_edge_rise[9:8]}),
        .S({1'b0,1'b0,S}));
  CARRY4 PHI20__4_carry_i_6
       (.CI(PHI20__4_carry_i_7_n_0),
        .CO({PHI20__4_carry_i_6_n_0,PHI20__4_carry_i_6_n_1,PHI20__4_carry_i_6_n_2,PHI20__4_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({DI,\signal_end_reg[7] [4]}),
        .O(first_edge_rise[7:4]),
        .S({PHI20__4_carry_i_13_n_0,PHI20__4_carry_i_14_n_0,PHI20__4_carry_i_15_n_0,PHI20__4_carry_i_16_n_0}));
  CARRY4 PHI20__4_carry_i_7
       (.CI(1'b0),
        .CO({PHI20__4_carry_i_7_n_0,PHI20__4_carry_i_7_n_1,PHI20__4_carry_i_7_n_2,PHI20__4_carry_i_7_n_3}),
        .CYINIT(1'b1),
        .DI(\signal_end_reg[7] [3:0]),
        .O({first_edge_rise[3:1],NLW_PHI20__4_carry_i_7_O_UNCONNECTED[0]}),
        .S({PHI20__4_carry_i_17_n_0,PHI20__4_carry_i_18_n_0,PHI20__4_carry_i_19_n_0,1'b0}));
  CARRY4 PHI20_carry
       (.CI(1'b0),
        .CO({\CH/CLK_CH00_out ,PHI20_carry_n_1,PHI20_carry_n_2,PHI20_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_PHI20_carry_O_UNCONNECTED[3:0]),
        .S({PHI20_carry_i_1_n_0,PHI20_carry_i_2_n_0,PHI20_carry_i_3_n_0,PHI20_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    PHI20_carry_i_1
       (.I0(\signal_end_reg[9] ),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(PHI20_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    PHI20_carry_i_2
       (.I0(\total_posedge_count[1] ),
        .I1(posedge_boosted_clk_counter_IBUF[6]),
        .I2(posedge_boosted_clk_counter_IBUF[7]),
        .I3(\total_posedge_count[1]_0 ),
        .I4(\total_posedge_count[1]_1 ),
        .I5(posedge_boosted_clk_counter_IBUF[8]),
        .O(PHI20_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    PHI20_carry_i_3
       (.I0(\total_posedge_count[6]_0 ),
        .I1(posedge_boosted_clk_counter_IBUF[3]),
        .I2(posedge_boosted_clk_counter_IBUF[4]),
        .I3(\total_posedge_count[5]_0 ),
        .I4(\total_posedge_count[1]_2 ),
        .I5(posedge_boosted_clk_counter_IBUF[5]),
        .O(PHI20_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h00282800)) 
    PHI20_carry_i_4
       (.I0(posedge_boosted_clk_counter_IBUF[0]),
        .I1(posedge_boosted_clk_counter_IBUF[1]),
        .I2(\signal_end_reg[7] [0]),
        .I3(\total_posedge_count[6] ),
        .I4(posedge_boosted_clk_counter_IBUF[2]),
        .O(PHI20_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PHI2_i_1
       (.I0(state_indicator_OBUF[0]),
        .I1(PHI202_out),
        .O(PHI2_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    PHI2_i_2
       (.I0(\CH/CLK_CH00_out ),
        .I1(state_indicator_OBUF[0]),
        .O(PHI2_reg_0));
  FDSE #(
    .INIT(1'b0)) 
    PHI2_reg
       (.C(CLK),
        .CE(PHI2_reg_0),
        .D(1'b0),
        .Q(PHI2_OBUF),
        .S(PHI2_i_1_n_0));
  CARRY4 PHI30__4_carry
       (.CI(1'b0),
        .CO({PHI300_out,PHI30__4_carry_n_1,PHI30__4_carry_n_2,PHI30__4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_PHI30__4_carry_O_UNCONNECTED[3:0]),
        .S({PHI30__4_carry_i_1_n_0,PHI30__4_carry_i_2_n_0,PHI30__4_carry_i_3_n_0,PHI30__4_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    PHI30__4_carry_i_1
       (.I0(third_edge_rise0_out[9]),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(PHI30__4_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI30__4_carry_i_2
       (.I0(posedge_boosted_clk_counter_IBUF[6]),
        .I1(third_edge_rise0_out[6]),
        .I2(third_edge_rise0_out[7]),
        .I3(posedge_boosted_clk_counter_IBUF[7]),
        .I4(posedge_boosted_clk_counter_IBUF[8]),
        .I5(third_edge_rise0_out[8]),
        .O(PHI30__4_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI30__4_carry_i_3
       (.I0(posedge_boosted_clk_counter_IBUF[3]),
        .I1(third_edge_rise0_out[3]),
        .I2(third_edge_rise0_out[4]),
        .I3(posedge_boosted_clk_counter_IBUF[4]),
        .I4(posedge_boosted_clk_counter_IBUF[5]),
        .I5(third_edge_rise0_out[5]),
        .O(PHI30__4_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    PHI30__4_carry_i_4
       (.I0(posedge_boosted_clk_counter_IBUF[0]),
        .I1(PHI30__4_carry_i_5_n_0),
        .I2(third_edge_rise0_out[1]),
        .I3(posedge_boosted_clk_counter_IBUF[1]),
        .I4(posedge_boosted_clk_counter_IBUF[2]),
        .I5(third_edge_rise0_out[2]),
        .O(PHI30__4_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    PHI30__4_carry_i_5
       (.I0(third_edge_count[0]),
        .I1(\signal_end_reg[7] [0]),
        .O(PHI30__4_carry_i_5_n_0));
  CARRY4 PHI30_carry
       (.CI(1'b0),
        .CO({PHI30,PHI30_carry_n_1,PHI30_carry_n_2,PHI30_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_PHI30_carry_O_UNCONNECTED[3:0]),
        .S({PHI30_carry_i_1_n_0,PHI30_carry_i_2_n_0,PHI30_carry_i_3_n_0,PHI30_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    PHI30_carry_i_1
       (.I0(thrid_edge_fall[9]),
        .I1(posedge_boosted_clk_counter_IBUF[9]),
        .O(PHI30_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI30_carry_i_2
       (.I0(posedge_boosted_clk_counter_IBUF[6]),
        .I1(thrid_edge_fall[6]),
        .I2(thrid_edge_fall[7]),
        .I3(posedge_boosted_clk_counter_IBUF[7]),
        .I4(posedge_boosted_clk_counter_IBUF[8]),
        .I5(thrid_edge_fall[8]),
        .O(PHI30_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI30_carry_i_3
       (.I0(posedge_boosted_clk_counter_IBUF[3]),
        .I1(thrid_edge_fall[3]),
        .I2(thrid_edge_fall[4]),
        .I3(posedge_boosted_clk_counter_IBUF[4]),
        .I4(posedge_boosted_clk_counter_IBUF[5]),
        .I5(thrid_edge_fall[5]),
        .O(PHI30_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    PHI30_carry_i_4
       (.I0(posedge_boosted_clk_counter_IBUF[0]),
        .I1(thrid_edge_fall[0]),
        .I2(thrid_edge_fall[1]),
        .I3(posedge_boosted_clk_counter_IBUF[1]),
        .I4(posedge_boosted_clk_counter_IBUF[2]),
        .I5(thrid_edge_fall[2]),
        .O(PHI30_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    PHI3_i_1
       (.I0(state_indicator_OBUF[1]),
        .I1(PHI300_out),
        .O(PHI3_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    PHI3_i_2
       (.I0(PHI30),
        .I1(state_indicator_OBUF[1]),
        .O(PHI3_i_2_n_0));
  FDSE #(
    .INIT(1'b0)) 
    PHI3_reg
       (.C(CLK),
        .CE(PHI3_i_2_n_0),
        .D(1'b0),
        .Q(PHI3_OBUF),
        .S(PHI3_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFA)) 
    \half_PHI_pulse_width_standard_OBUF[9]_inst_i_2 
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(pulse_interval_standard_OBUF[0]),
        .I2(\total_posedge_count[5] ),
        .I3(pulse_interval_standard_OBUF[1]),
        .I4(pulse_interval_standard_OBUF[4]),
        .I5(pulse_interval_standard_OBUF[3]),
        .O(\signal_end_reg[9] ));
  CARRY4 \pulse_interval_standard_OBUF[7]_inst_i_1 
       (.CI(CO),
        .CO({\pulse_interval_standard_OBUF[7]_inst_i_1_n_0 ,\pulse_interval_standard_OBUF[7]_inst_i_1_n_1 ,\pulse_interval_standard_OBUF[7]_inst_i_1_n_2 ,\pulse_interval_standard_OBUF[7]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({A,\pulse_interval_standard_OBUF[7]_inst_i_3_n_0 ,\total_posedge_count[4] }),
        .O(pulse_interval_standard_OBUF[3:0]),
        .S({\pulse_interval_standard_OBUF[7]_inst_i_6_n_0 ,\pulse_interval_standard_OBUF[7]_inst_i_7_n_0 ,\pulse_interval_standard_OBUF[7]_inst_i_8_n_0 ,\pulse_interval_standard_OBUF[7]_inst_i_9_n_0 }));
  LUT4 #(
    .INIT(16'h9A18)) 
    \pulse_interval_standard_OBUF[7]_inst_i_2 
       (.I0(total_posedge_count_IBUF[4]),
        .I1(total_posedge_count_IBUF[3]),
        .I2(total_posedge_count_IBUF[5]),
        .I3(total_posedge_count_IBUF[2]),
        .O(A));
  LUT5 #(
    .INIT(32'h6B5A294A)) 
    \pulse_interval_standard_OBUF[7]_inst_i_3 
       (.I0(total_posedge_count_IBUF[5]),
        .I1(total_posedge_count_IBUF[2]),
        .I2(total_posedge_count_IBUF[3]),
        .I3(total_posedge_count_IBUF[4]),
        .I4(total_posedge_count_IBUF[1]),
        .O(\pulse_interval_standard_OBUF[7]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4DF3)) 
    \pulse_interval_standard_OBUF[7]_inst_i_6 
       (.I0(total_posedge_count_IBUF[2]),
        .I1(total_posedge_count_IBUF[5]),
        .I2(total_posedge_count_IBUF[3]),
        .I3(total_posedge_count_IBUF[4]),
        .O(\pulse_interval_standard_OBUF[7]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h37EC010F)) 
    \pulse_interval_standard_OBUF[7]_inst_i_7 
       (.I0(total_posedge_count_IBUF[1]),
        .I1(total_posedge_count_IBUF[2]),
        .I2(total_posedge_count_IBUF[5]),
        .I3(total_posedge_count_IBUF[3]),
        .I4(total_posedge_count_IBUF[4]),
        .O(\pulse_interval_standard_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h003E7C001F7CF81F)) 
    \pulse_interval_standard_OBUF[7]_inst_i_8 
       (.I0(total_posedge_count_IBUF[0]),
        .I1(total_posedge_count_IBUF[1]),
        .I2(total_posedge_count_IBUF[2]),
        .I3(total_posedge_count_IBUF[5]),
        .I4(total_posedge_count_IBUF[3]),
        .I5(total_posedge_count_IBUF[4]),
        .O(\pulse_interval_standard_OBUF[7]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h55AAA59A9A5559A5)) 
    \pulse_interval_standard_OBUF[7]_inst_i_9 
       (.I0(\total_posedge_count[4] [0]),
        .I1(total_posedge_count_IBUF[1]),
        .I2(total_posedge_count_IBUF[4]),
        .I3(total_posedge_count_IBUF[3]),
        .I4(total_posedge_count_IBUF[2]),
        .I5(total_posedge_count_IBUF[5]),
        .O(\pulse_interval_standard_OBUF[7]_inst_i_9_n_0 ));
  CARRY4 \pulse_interval_standard_OBUF[8]_inst_i_1 
       (.CI(\pulse_interval_standard_OBUF[7]_inst_i_1_n_0 ),
        .CO(\NLW_pulse_interval_standard_OBUF[8]_inst_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pulse_interval_standard_OBUF[8]_inst_i_1_O_UNCONNECTED [3:1],pulse_interval_standard_OBUF[4]}),
        .S({1'b0,1'b0,1'b0,\pulse_interval_standard_OBUF[8]_inst_i_2_n_0 }));
  LUT3 #(
    .INIT(8'h57)) 
    \pulse_interval_standard_OBUF[8]_inst_i_2 
       (.I0(total_posedge_count_IBUF[5]),
        .I1(total_posedge_count_IBUF[3]),
        .I2(total_posedge_count_IBUF[4]),
        .O(\pulse_interval_standard_OBUF[8]_inst_i_2_n_0 ));
  CARRY4 second_edge_fall_carry
       (.CI(1'b0),
        .CO({second_edge_fall_carry_n_0,second_edge_fall_carry_n_1,second_edge_fall_carry_n_2,second_edge_fall_carry_n_3}),
        .CYINIT(1'b1),
        .DI({second_edge_fall_carry_i_1_n_0,second_edge_fall_carry_i_2_n_0,second_edge_fall_carry_i_3_n_0,second_edge_fall_carry_i_4_n_0}),
        .O(second_edge_fall[3:0]),
        .S({second_edge_fall_carry_i_5_n_0,second_edge_fall_carry_i_6_n_0,second_edge_fall_carry_i_7_n_0,second_edge_fall_carry_i_8_n_0}));
  CARRY4 second_edge_fall_carry__0
       (.CI(second_edge_fall_carry_n_0),
        .CO({second_edge_fall_carry__0_n_0,second_edge_fall_carry__0_n_1,second_edge_fall_carry__0_n_2,second_edge_fall_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({second_edge_fall_carry__0_i_1_n_0,second_edge_fall_carry__0_i_2_n_0,second_edge_fall_carry__0_i_3_n_0,second_edge_fall_carry__0_i_4_n_0}),
        .O(second_edge_fall[7:4]),
        .S({second_edge_fall_carry__0_i_5_n_0,second_edge_fall_carry__0_i_6_n_0,second_edge_fall_carry__0_i_7_n_0,second_edge_fall_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hBEBA)) 
    second_edge_fall_carry__0_i_1
       (.I0(second_edge_rise_carry__0_i_1_n_5),
        .I1(pulse_interval_standard_OBUF[3]),
        .I2(pulse_interval_standard_OBUF[4]),
        .I3(pulse_interval_standard_OBUF[2]),
        .O(second_edge_fall_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9E18)) 
    second_edge_fall_carry__0_i_10
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[1]),
        .O(\signal_end_reg[7] [5]));
  LUT5 #(
    .INIT(32'hEFAEAEFA)) 
    second_edge_fall_carry__0_i_2
       (.I0(second_edge_rise_carry__0_i_1_n_6),
        .I1(pulse_interval_standard_OBUF[1]),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(pulse_interval_standard_OBUF[2]),
        .O(second_edge_fall_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAEEFFAAEFAAEEFFA)) 
    second_edge_fall_carry__0_i_3
       (.I0(second_edge_rise_carry__0_i_1_n_7),
        .I1(pulse_interval_standard_OBUF[0]),
        .I2(pulse_interval_standard_OBUF[2]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(pulse_interval_standard_OBUF[3]),
        .I5(pulse_interval_standard_OBUF[1]),
        .O(second_edge_fall_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    second_edge_fall_carry__0_i_4
       (.I0(second_edge_rise_carry_i_1_n_4),
        .I1(\signal_end_reg[7] [3]),
        .O(second_edge_fall_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h3FECC013)) 
    second_edge_fall_carry__0_i_5
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(second_edge_rise_carry__0_i_1_n_5),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(second_edge_rise_carry__0_i_1_n_4),
        .O(second_edge_fall_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hEC3F01EC13C0FE13)) 
    second_edge_fall_carry__0_i_6
       (.I0(pulse_interval_standard_OBUF[1]),
        .I1(second_edge_rise_carry__0_i_1_n_6),
        .I2(pulse_interval_standard_OBUF[2]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(pulse_interval_standard_OBUF[3]),
        .I5(second_edge_rise_carry__0_i_1_n_5),
        .O(second_edge_fall_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    second_edge_fall_carry__0_i_7
       (.I0(\signal_end_reg[7] [4]),
        .I1(second_edge_rise_carry__0_i_1_n_7),
        .I2(\signal_end_reg[7] [5]),
        .I3(second_edge_rise_carry__0_i_1_n_6),
        .O(second_edge_fall_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    second_edge_fall_carry__0_i_8
       (.I0(\signal_end_reg[7] [3]),
        .I1(second_edge_rise_carry_i_1_n_4),
        .I2(\signal_end_reg[7] [4]),
        .I3(second_edge_rise_carry__0_i_1_n_7),
        .O(second_edge_fall_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'h799E6118)) 
    second_edge_fall_carry__0_i_9
       (.I0(pulse_interval_standard_OBUF[1]),
        .I1(pulse_interval_standard_OBUF[3]),
        .I2(pulse_interval_standard_OBUF[4]),
        .I3(pulse_interval_standard_OBUF[2]),
        .I4(pulse_interval_standard_OBUF[0]),
        .O(\signal_end_reg[7] [4]));
  CARRY4 second_edge_fall_carry__1
       (.CI(second_edge_fall_carry__0_n_0),
        .CO({NLW_second_edge_fall_carry__1_CO_UNCONNECTED[3:1],second_edge_fall_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,second_edge_fall_carry__1_i_1_n_0}),
        .O({NLW_second_edge_fall_carry__1_O_UNCONNECTED[3:2],second_edge_fall[9:8]}),
        .S({1'b0,1'b0,second_edge_fall_carry__1_i_2_n_0,second_edge_fall_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hEA)) 
    second_edge_fall_carry__1_i_1
       (.I0(second_edge_rise_carry__0_i_1_n_4),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[3]),
        .O(second_edge_fall_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    second_edge_fall_carry__1_i_2
       (.I0(second_edge_rise_carry__1_i_1_n_7),
        .I1(second_edge_rise_carry__1_i_1_n_2),
        .O(second_edge_fall_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hF807)) 
    second_edge_fall_carry__1_i_3
       (.I0(pulse_interval_standard_OBUF[3]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(second_edge_rise_carry__0_i_1_n_4),
        .I3(second_edge_rise_carry__1_i_1_n_7),
        .O(second_edge_fall_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    second_edge_fall_carry_i_1
       (.I0(second_edge_rise_carry_i_1_n_5),
        .I1(\signal_end_reg[7] [2]),
        .O(second_edge_fall_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hBD6B6BD629424294)) 
    second_edge_fall_carry_i_10
       (.I0(pulse_interval_standard_OBUF[0]),
        .I1(pulse_interval_standard_OBUF[1]),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(pulse_interval_standard_OBUF[2]),
        .I5(O[3]),
        .O(\signal_end_reg[7] [3]));
  LUT6 #(
    .INIT(64'hB69297169716B692)) 
    second_edge_fall_carry_i_11
       (.I0(O[3]),
        .I1(O[2]),
        .I2(\signal_end_reg[7] [3]),
        .I3(O[1]),
        .I4(\signal_end_reg[7] [4]),
        .I5(pulse_interval_standard_OBUF[0]),
        .O(\signal_end_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    second_edge_fall_carry_i_2
       (.I0(second_edge_rise_carry_i_1_n_5),
        .I1(\signal_end_reg[7] [2]),
        .O(second_edge_fall_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    second_edge_fall_carry_i_3
       (.I0(second_edge_rise_carry_i_1_n_7),
        .I1(\signal_end_reg[7] [0]),
        .O(second_edge_fall_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    second_edge_fall_carry_i_4
       (.I0(\signal_end_reg[7] [0]),
        .I1(second_edge_rise_carry_i_1_n_7),
        .O(second_edge_fall_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    second_edge_fall_carry_i_5
       (.I0(\signal_end_reg[7] [2]),
        .I1(second_edge_rise_carry_i_1_n_5),
        .I2(\signal_end_reg[7] [3]),
        .I3(second_edge_rise_carry_i_1_n_4),
        .O(second_edge_fall_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    second_edge_fall_carry_i_6
       (.I0(\signal_end_reg[7] [2]),
        .I1(second_edge_rise_carry_i_1_n_5),
        .I2(second_edge_rise_carry_i_1_n_6),
        .I3(\signal_end_reg[7] [1]),
        .O(second_edge_fall_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    second_edge_fall_carry_i_7
       (.I0(\signal_end_reg[7] [0]),
        .I1(second_edge_rise_carry_i_1_n_7),
        .I2(\signal_end_reg[7] [1]),
        .I3(second_edge_rise_carry_i_1_n_6),
        .O(second_edge_fall_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_fall_carry_i_8
       (.I0(second_edge_rise_carry_i_1_n_7),
        .I1(\signal_end_reg[7] [0]),
        .O(second_edge_fall_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hB7969612)) 
    second_edge_fall_carry_i_9
       (.I0(pulse_interval_standard_OBUF[0]),
        .I1(O[3]),
        .I2(\signal_end_reg[7] [4]),
        .I3(O[2]),
        .I4(\signal_end_reg[7] [3]),
        .O(\signal_end_reg[7] [2]));
  CARRY4 second_edge_rise_carry
       (.CI(1'b0),
        .CO({second_edge_rise_carry_n_0,second_edge_rise_carry_n_1,second_edge_rise_carry_n_2,second_edge_rise_carry_n_3}),
        .CYINIT(1'b1),
        .DI({second_edge_rise_carry_i_1_n_4,second_edge_rise_carry_i_1_n_5,second_edge_rise_carry_i_1_n_6,second_edge_rise_carry_i_1_n_7}),
        .O({second_edge_rise[3:1],NLW_second_edge_rise_carry_O_UNCONNECTED[0]}),
        .S({second_edge_rise_carry_i_2_n_0,second_edge_rise_carry_i_3_n_0,second_edge_rise_carry_i_4_n_0,second_edge_rise_carry_i_5_n_0}));
  CARRY4 second_edge_rise_carry__0
       (.CI(second_edge_rise_carry_n_0),
        .CO({second_edge_rise_carry__0_n_0,second_edge_rise_carry__0_n_1,second_edge_rise_carry__0_n_2,second_edge_rise_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({second_edge_rise_carry__0_i_1_n_4,second_edge_rise_carry__0_i_1_n_5,second_edge_rise_carry__0_i_1_n_6,second_edge_rise_carry__0_i_1_n_7}),
        .O(second_edge_rise[7:4]),
        .S({second_edge_rise_carry__0_i_2_n_0,second_edge_rise_carry__0_i_3_n_0,second_edge_rise_carry__0_i_4_n_0,second_edge_rise_carry__0_i_5_n_0}));
  CARRY4 second_edge_rise_carry__0_i_1
       (.CI(second_edge_rise_carry_i_1_n_0),
        .CO({second_edge_rise_carry__0_i_1_n_0,second_edge_rise_carry__0_i_1_n_1,second_edge_rise_carry__0_i_1_n_2,second_edge_rise_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({C,second_edge_rise_carry__0_i_8_n_0,second_edge_rise_carry__0_i_9_n_0}),
        .O({second_edge_rise_carry__0_i_1_n_4,second_edge_rise_carry__0_i_1_n_5,second_edge_rise_carry__0_i_1_n_6,second_edge_rise_carry__0_i_1_n_7}),
        .S({second_edge_rise_carry__0_i_10_n_0,second_edge_rise_carry__0_i_11_n_0,second_edge_rise_carry__0_i_12_n_0,second_edge_rise_carry__0_i_13_n_0}));
  LUT2 #(
    .INIT(4'h4)) 
    second_edge_rise_carry__0_i_10
       (.I0(pulse_interval_standard_OBUF[4]),
        .I1(pulse_interval_standard_OBUF[3]),
        .O(second_edge_rise_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h94)) 
    second_edge_rise_carry__0_i_11
       (.I0(pulse_interval_standard_OBUF[3]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[2]),
        .O(second_edge_rise_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h2942)) 
    second_edge_rise_carry__0_i_12
       (.I0(pulse_interval_standard_OBUF[3]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[2]),
        .I3(pulse_interval_standard_OBUF[1]),
        .O(second_edge_rise_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'h86611886)) 
    second_edge_rise_carry__0_i_13
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[1]),
        .I4(pulse_interval_standard_OBUF[0]),
        .O(second_edge_rise_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry__0_i_2
       (.I0(second_edge_rise_carry__0_i_1_n_4),
        .I1(\total_posedge_count[1]_1 ),
        .O(second_edge_rise_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry__0_i_3
       (.I0(second_edge_rise_carry__0_i_1_n_5),
        .I1(\total_posedge_count[1]_0 ),
        .O(second_edge_rise_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry__0_i_4
       (.I0(second_edge_rise_carry__0_i_1_n_6),
        .I1(\total_posedge_count[1] ),
        .O(second_edge_rise_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry__0_i_5
       (.I0(second_edge_rise_carry__0_i_1_n_7),
        .I1(\total_posedge_count[1]_2 ),
        .O(second_edge_rise_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    second_edge_rise_carry__0_i_6
       (.I0(pulse_interval_standard_OBUF[3]),
        .I1(pulse_interval_standard_OBUF[4]),
        .O(C[7]));
  LUT3 #(
    .INIT(8'h2C)) 
    second_edge_rise_carry__0_i_7
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[3]),
        .O(C[6]));
  LUT4 #(
    .INIT(16'h9E18)) 
    second_edge_rise_carry__0_i_8
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[1]),
        .O(second_edge_rise_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'h799E6118)) 
    second_edge_rise_carry__0_i_9
       (.I0(pulse_interval_standard_OBUF[1]),
        .I1(pulse_interval_standard_OBUF[3]),
        .I2(pulse_interval_standard_OBUF[4]),
        .I3(pulse_interval_standard_OBUF[2]),
        .I4(pulse_interval_standard_OBUF[0]),
        .O(second_edge_rise_carry__0_i_9_n_0));
  CARRY4 second_edge_rise_carry__1
       (.CI(second_edge_rise_carry__0_n_0),
        .CO({NLW_second_edge_rise_carry__1_CO_UNCONNECTED[3:1],second_edge_rise_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,second_edge_rise_carry__1_i_1_n_7}),
        .O({NLW_second_edge_rise_carry__1_O_UNCONNECTED[3:2],second_edge_rise[9:8]}),
        .S({1'b0,1'b0,second_edge_rise_carry__1_i_2_n_0,second_edge_rise_carry__1_i_3_n_0}));
  CARRY4 second_edge_rise_carry__1_i_1
       (.CI(second_edge_rise_carry__0_i_1_n_0),
        .CO({NLW_second_edge_rise_carry__1_i_1_CO_UNCONNECTED[3:2],second_edge_rise_carry__1_i_1_n_2,NLW_second_edge_rise_carry__1_i_1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_second_edge_rise_carry__1_i_1_O_UNCONNECTED[3:1],second_edge_rise_carry__1_i_1_n_7}),
        .S({1'b0,1'b0,1'b1,pulse_interval_standard_OBUF[4]}));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry__1_i_2
       (.I0(second_edge_rise_carry__1_i_1_n_2),
        .I1(\signal_end_reg[9] ),
        .O(second_edge_rise_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry__1_i_3
       (.I0(second_edge_rise_carry__1_i_1_n_7),
        .I1(\signal_end_reg[9] ),
        .O(second_edge_rise_carry__1_i_3_n_0));
  CARRY4 second_edge_rise_carry_i_1
       (.CI(1'b0),
        .CO({second_edge_rise_carry_i_1_n_0,second_edge_rise_carry_i_1_n_1,second_edge_rise_carry_i_1_n_2,second_edge_rise_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI(\signal_end_reg[7] [3:0]),
        .O({second_edge_rise_carry_i_1_n_4,second_edge_rise_carry_i_1_n_5,second_edge_rise_carry_i_1_n_6,second_edge_rise_carry_i_1_n_7}),
        .S({second_edge_rise_carry_i_6_n_0,second_edge_rise_carry_i_7_n_0,second_edge_rise_carry_i_8_n_0,second_edge_rise_carry_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry_i_2
       (.I0(second_edge_rise_carry_i_1_n_4),
        .I1(\total_posedge_count[5]_0 ),
        .O(second_edge_rise_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry_i_3
       (.I0(second_edge_rise_carry_i_1_n_5),
        .I1(\total_posedge_count[6]_0 ),
        .O(second_edge_rise_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry_i_4
       (.I0(second_edge_rise_carry_i_1_n_6),
        .I1(\total_posedge_count[6] ),
        .O(second_edge_rise_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry_i_5
       (.I0(second_edge_rise_carry_i_1_n_7),
        .I1(\signal_end_reg[7] [0]),
        .O(second_edge_rise_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h6118866118866118)) 
    second_edge_rise_carry_i_6
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[1]),
        .I4(pulse_interval_standard_OBUF[0]),
        .I5(O[3]),
        .O(second_edge_rise_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry_i_7
       (.I0(\signal_end_reg[7] [2]),
        .I1(O[2]),
        .O(second_edge_rise_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry_i_8
       (.I0(\signal_end_reg[7] [1]),
        .I1(O[1]),
        .O(second_edge_rise_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    second_edge_rise_carry_i_9
       (.I0(\signal_end_reg[7] [0]),
        .I1(O[0]),
        .O(second_edge_rise_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hB5ADCB7E812C4A52)) 
    signal_end0__1_carry_i_3
       (.I0(\signal_end_reg[3] ),
        .I1(O[3]),
        .I2(O[2]),
        .I3(\signal_end_reg[7] [3]),
        .I4(O[1]),
        .I5(O[0]),
        .O(\signal_end_reg[7] [0]));
  LUT6 #(
    .INIT(64'h6AA9966A966AA996)) 
    signal_end0__1_carry_i_8
       (.I0(O[3]),
        .I1(pulse_interval_standard_OBUF[0]),
        .I2(pulse_interval_standard_OBUF[2]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(pulse_interval_standard_OBUF[3]),
        .I5(pulse_interval_standard_OBUF[1]),
        .O(\signal_end_reg[3] ));
  CARRY4 third_edge_rise_carry
       (.CI(1'b0),
        .CO({third_edge_rise_carry_n_0,third_edge_rise_carry_n_1,third_edge_rise_carry_n_2,third_edge_rise_carry_n_3}),
        .CYINIT(1'b1),
        .DI(third_edge_count[3:0]),
        .O({third_edge_rise0_out[3:1],NLW_third_edge_rise_carry_O_UNCONNECTED[0]}),
        .S({third_edge_rise_carry_i_2_n_0,third_edge_rise_carry_i_3_n_0,third_edge_rise_carry_i_4_n_0,third_edge_rise_carry_i_5_n_0}));
  CARRY4 third_edge_rise_carry__0
       (.CI(third_edge_rise_carry_n_0),
        .CO({third_edge_rise_carry__0_n_0,third_edge_rise_carry__0_n_1,third_edge_rise_carry__0_n_2,third_edge_rise_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(third_edge_count[7:4]),
        .O(third_edge_rise0_out[7:4]),
        .S({third_edge_rise_carry__0_i_2_n_0,third_edge_rise_carry__0_i_3_n_0,third_edge_rise_carry__0_i_4_n_0,third_edge_rise_carry__0_i_5_n_0}));
  CARRY4 third_edge_rise_carry__0_i_1
       (.CI(third_edge_rise_carry_i_1_n_0),
        .CO({third_edge_rise_carry__0_i_1_n_0,third_edge_rise_carry__0_i_1_n_1,third_edge_rise_carry__0_i_1_n_2,third_edge_rise_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({second_edge_rise_carry__0_i_1_n_4,second_edge_rise_carry__0_i_1_n_5,second_edge_rise_carry__0_i_1_n_6,second_edge_rise_carry__0_i_1_n_7}),
        .O(third_edge_count[7:4]),
        .S({third_edge_rise_carry__0_i_6_n_0,third_edge_rise_carry__0_i_7_n_0,third_edge_rise_carry__0_i_8_n_0,third_edge_rise_carry__0_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__0_i_2
       (.I0(third_edge_count[7]),
        .I1(\total_posedge_count[1]_1 ),
        .O(third_edge_rise_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__0_i_3
       (.I0(third_edge_count[6]),
        .I1(\total_posedge_count[1]_0 ),
        .O(third_edge_rise_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__0_i_4
       (.I0(third_edge_count[5]),
        .I1(\total_posedge_count[1] ),
        .O(third_edge_rise_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__0_i_5
       (.I0(third_edge_count[4]),
        .I1(\total_posedge_count[1]_2 ),
        .O(third_edge_rise_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__0_i_6
       (.I0(second_edge_rise_carry__0_i_1_n_4),
        .I1(pulse_interval_standard_OBUF[3]),
        .O(third_edge_rise_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__0_i_7
       (.I0(second_edge_rise_carry__0_i_1_n_5),
        .I1(pulse_interval_standard_OBUF[2]),
        .O(third_edge_rise_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__0_i_8
       (.I0(second_edge_rise_carry__0_i_1_n_6),
        .I1(pulse_interval_standard_OBUF[1]),
        .O(third_edge_rise_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__0_i_9
       (.I0(second_edge_rise_carry__0_i_1_n_7),
        .I1(pulse_interval_standard_OBUF[0]),
        .O(third_edge_rise_carry__0_i_9_n_0));
  CARRY4 third_edge_rise_carry__1
       (.CI(third_edge_rise_carry__0_n_0),
        .CO({NLW_third_edge_rise_carry__1_CO_UNCONNECTED[3:1],third_edge_rise_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,third_edge_count[8]}),
        .O({NLW_third_edge_rise_carry__1_O_UNCONNECTED[3:2],third_edge_rise0_out[9:8]}),
        .S({1'b0,1'b0,third_edge_rise_carry__1_i_2_n_0,third_edge_rise_carry__1_i_3_n_0}));
  CARRY4 third_edge_rise_carry__1_i_1
       (.CI(third_edge_rise_carry__0_i_1_n_0),
        .CO({NLW_third_edge_rise_carry__1_i_1_CO_UNCONNECTED[3:1],third_edge_rise_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,second_edge_rise_carry__1_i_1_n_7}),
        .O({NLW_third_edge_rise_carry__1_i_1_O_UNCONNECTED[3:2],third_edge_count[9:8]}),
        .S({1'b0,1'b0,second_edge_rise_carry__1_i_1_n_2,third_edge_rise_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__1_i_2
       (.I0(third_edge_count[9]),
        .I1(\signal_end_reg[9] ),
        .O(third_edge_rise_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__1_i_3
       (.I0(third_edge_count[8]),
        .I1(\signal_end_reg[9] ),
        .O(third_edge_rise_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry__1_i_4
       (.I0(second_edge_rise_carry__1_i_1_n_7),
        .I1(pulse_interval_standard_OBUF[4]),
        .O(third_edge_rise_carry__1_i_4_n_0));
  CARRY4 third_edge_rise_carry_i_1
       (.CI(1'b0),
        .CO({third_edge_rise_carry_i_1_n_0,third_edge_rise_carry_i_1_n_1,third_edge_rise_carry_i_1_n_2,third_edge_rise_carry_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({second_edge_rise_carry_i_1_n_4,second_edge_rise_carry_i_1_n_5,second_edge_rise_carry_i_1_n_6,second_edge_rise_carry_i_1_n_7}),
        .O(third_edge_count[3:0]),
        .S({third_edge_rise_carry_i_6_n_0,third_edge_rise_carry_i_7_n_0,third_edge_rise_carry_i_8_n_0,third_edge_rise_carry_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry_i_2
       (.I0(third_edge_count[3]),
        .I1(\total_posedge_count[5]_0 ),
        .O(third_edge_rise_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry_i_3
       (.I0(third_edge_count[2]),
        .I1(\total_posedge_count[6]_0 ),
        .O(third_edge_rise_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry_i_4
       (.I0(third_edge_count[1]),
        .I1(\total_posedge_count[6] ),
        .O(third_edge_rise_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry_i_5
       (.I0(third_edge_count[0]),
        .I1(\signal_end_reg[7] [0]),
        .O(third_edge_rise_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry_i_6
       (.I0(second_edge_rise_carry_i_1_n_4),
        .I1(O[3]),
        .O(third_edge_rise_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry_i_7
       (.I0(second_edge_rise_carry_i_1_n_5),
        .I1(O[2]),
        .O(third_edge_rise_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry_i_8
       (.I0(second_edge_rise_carry_i_1_n_6),
        .I1(O[1]),
        .O(third_edge_rise_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    third_edge_rise_carry_i_9
       (.I0(second_edge_rise_carry_i_1_n_7),
        .I1(O[0]),
        .O(third_edge_rise_carry_i_9_n_0));
  CARRY4 thrid_edge_fall_carry
       (.CI(1'b0),
        .CO({thrid_edge_fall_carry_n_0,thrid_edge_fall_carry_n_1,thrid_edge_fall_carry_n_2,thrid_edge_fall_carry_n_3}),
        .CYINIT(1'b1),
        .DI({thrid_edge_fall_carry_i_1_n_0,thrid_edge_fall_carry_i_2_n_0,thrid_edge_fall_carry_i_3_n_0,thrid_edge_fall_carry_i_4_n_0}),
        .O(thrid_edge_fall[3:0]),
        .S({thrid_edge_fall_carry_i_5_n_0,thrid_edge_fall_carry_i_6_n_0,thrid_edge_fall_carry_i_7_n_0,thrid_edge_fall_carry_i_8_n_0}));
  CARRY4 thrid_edge_fall_carry__0
       (.CI(thrid_edge_fall_carry_n_0),
        .CO({thrid_edge_fall_carry__0_n_0,thrid_edge_fall_carry__0_n_1,thrid_edge_fall_carry__0_n_2,thrid_edge_fall_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({thrid_edge_fall_carry__0_i_1_n_0,thrid_edge_fall_carry__0_i_2_n_0,thrid_edge_fall_carry__0_i_3_n_0,thrid_edge_fall_carry__0_i_4_n_0}),
        .O(thrid_edge_fall[7:4]),
        .S({thrid_edge_fall_carry__0_i_5_n_0,thrid_edge_fall_carry__0_i_6_n_0,thrid_edge_fall_carry__0_i_7_n_0,thrid_edge_fall_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hBEBA)) 
    thrid_edge_fall_carry__0_i_1
       (.I0(third_edge_count[6]),
        .I1(pulse_interval_standard_OBUF[3]),
        .I2(pulse_interval_standard_OBUF[4]),
        .I3(pulse_interval_standard_OBUF[2]),
        .O(thrid_edge_fall_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hEFAEAEFA)) 
    thrid_edge_fall_carry__0_i_2
       (.I0(third_edge_count[5]),
        .I1(pulse_interval_standard_OBUF[1]),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(pulse_interval_standard_OBUF[2]),
        .O(thrid_edge_fall_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAEEFFAAEFAAEEFFA)) 
    thrid_edge_fall_carry__0_i_3
       (.I0(third_edge_count[4]),
        .I1(pulse_interval_standard_OBUF[0]),
        .I2(pulse_interval_standard_OBUF[2]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(pulse_interval_standard_OBUF[3]),
        .I5(pulse_interval_standard_OBUF[1]),
        .O(thrid_edge_fall_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    thrid_edge_fall_carry__0_i_4
       (.I0(third_edge_count[3]),
        .I1(\signal_end_reg[7] [3]),
        .O(thrid_edge_fall_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h3FECC013)) 
    thrid_edge_fall_carry__0_i_5
       (.I0(pulse_interval_standard_OBUF[2]),
        .I1(third_edge_count[6]),
        .I2(pulse_interval_standard_OBUF[3]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(third_edge_count[7]),
        .O(thrid_edge_fall_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hEC3F01EC13C0FE13)) 
    thrid_edge_fall_carry__0_i_6
       (.I0(pulse_interval_standard_OBUF[1]),
        .I1(third_edge_count[5]),
        .I2(pulse_interval_standard_OBUF[2]),
        .I3(pulse_interval_standard_OBUF[4]),
        .I4(pulse_interval_standard_OBUF[3]),
        .I5(third_edge_count[6]),
        .O(thrid_edge_fall_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    thrid_edge_fall_carry__0_i_7
       (.I0(\signal_end_reg[7] [4]),
        .I1(third_edge_count[4]),
        .I2(\signal_end_reg[7] [5]),
        .I3(third_edge_count[5]),
        .O(thrid_edge_fall_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    thrid_edge_fall_carry__0_i_8
       (.I0(\signal_end_reg[7] [3]),
        .I1(third_edge_count[3]),
        .I2(\signal_end_reg[7] [4]),
        .I3(third_edge_count[4]),
        .O(thrid_edge_fall_carry__0_i_8_n_0));
  CARRY4 thrid_edge_fall_carry__1
       (.CI(thrid_edge_fall_carry__0_n_0),
        .CO({NLW_thrid_edge_fall_carry__1_CO_UNCONNECTED[3:1],thrid_edge_fall_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,thrid_edge_fall_carry__1_i_1_n_0}),
        .O({NLW_thrid_edge_fall_carry__1_O_UNCONNECTED[3:2],thrid_edge_fall[9:8]}),
        .S({1'b0,1'b0,thrid_edge_fall_carry__1_i_2_n_0,thrid_edge_fall_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hEA)) 
    thrid_edge_fall_carry__1_i_1
       (.I0(third_edge_count[7]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(pulse_interval_standard_OBUF[3]),
        .O(thrid_edge_fall_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    thrid_edge_fall_carry__1_i_2
       (.I0(third_edge_count[8]),
        .I1(third_edge_count[9]),
        .O(thrid_edge_fall_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hF807)) 
    thrid_edge_fall_carry__1_i_3
       (.I0(pulse_interval_standard_OBUF[3]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(third_edge_count[7]),
        .I3(third_edge_count[8]),
        .O(thrid_edge_fall_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    thrid_edge_fall_carry_i_1
       (.I0(third_edge_count[2]),
        .I1(\signal_end_reg[7] [2]),
        .O(thrid_edge_fall_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    thrid_edge_fall_carry_i_2
       (.I0(third_edge_count[2]),
        .I1(\signal_end_reg[7] [2]),
        .O(thrid_edge_fall_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    thrid_edge_fall_carry_i_3
       (.I0(third_edge_count[0]),
        .I1(\signal_end_reg[7] [0]),
        .O(thrid_edge_fall_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    thrid_edge_fall_carry_i_4
       (.I0(\signal_end_reg[7] [0]),
        .I1(third_edge_count[0]),
        .O(thrid_edge_fall_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1EE1)) 
    thrid_edge_fall_carry_i_5
       (.I0(\signal_end_reg[7] [2]),
        .I1(third_edge_count[2]),
        .I2(\signal_end_reg[7] [3]),
        .I3(third_edge_count[3]),
        .O(thrid_edge_fall_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6999)) 
    thrid_edge_fall_carry_i_6
       (.I0(\signal_end_reg[7] [2]),
        .I1(third_edge_count[2]),
        .I2(third_edge_count[1]),
        .I3(\signal_end_reg[7] [1]),
        .O(thrid_edge_fall_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    thrid_edge_fall_carry_i_7
       (.I0(\signal_end_reg[7] [0]),
        .I1(third_edge_count[0]),
        .I2(\signal_end_reg[7] [1]),
        .I3(third_edge_count[1]),
        .O(thrid_edge_fall_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    thrid_edge_fall_carry_i_8
       (.I0(third_edge_count[0]),
        .I1(\signal_end_reg[7] [0]),
        .O(thrid_edge_fall_carry_i_8_n_0));
endmodule

(* NotValidForBitStream *)
module structre
   (start,
    programmable_D_flag,
    posedge_boosted_clk_counter,
    boosted_clk,
    locked,
    total_posedge_count,
    CLK_D_pulse_width,
    PHI3_start,
    PHI2,
    PHI1,
    PHI3,
    CLK_LATCH,
    CLK_CH,
    CLK_DEC,
    CLK_D,
    half_PHI_pulse_width_standard,
    first_edge_fall_standard,
    pulse_interval_standard,
    state_indicator);
  input start;
  input programmable_D_flag;
  input [9:0]posedge_boosted_clk_counter;
  input boosted_clk;
  input locked;
  input [9:0]total_posedge_count;
  input [9:0]CLK_D_pulse_width;
  input PHI3_start;
  output PHI2;
  output PHI1;
  output PHI3;
  output CLK_LATCH;
  output CLK_CH;
  output CLK_DEC;
  output CLK_D;
  output [9:0]half_PHI_pulse_width_standard;
  output [9:0]first_edge_fall_standard;
  output [9:0]pulse_interval_standard;
  output [7:0]state_indicator;

  wire [3:2]A;
  wire [5:0]C;
  wire CLK_CH;
  wire CLK_D;
  wire CLK_DEC;
  wire CLK_DEC_OBUF;
  wire CLK_D_OBUF;
  wire CLK_LATCH;
  wire CLK_LATCH_OBUF;
  wire D_n_1;
  wire D_n_10;
  wire D_n_11;
  wire D_n_12;
  wire D_n_13;
  wire D_n_16;
  wire D_n_6;
  wire D_n_7;
  wire D_n_8;
  wire D_n_9;
  wire PHI1;
  wire PHI1_OBUF;
  wire PHI2;
  wire PHI20__4_carry_i_10_n_0;
  wire PHI20__4_carry_i_11_n_0;
  wire PHI20__4_carry_i_12_n_0;
  wire PHI20__4_carry_i_8_n_0;
  wire PHI20__4_carry_i_9_n_0;
  wire PHI2_OBUF;
  wire PHI3;
  wire PHI3_OBUF;
  wire PHI3_start;
  wire PHI_n_1;
  wire PHI_n_10;
  wire PHI_n_11;
  wire PHI_n_17;
  wire boosted_clk;
  wire boosted_clk_IBUF;
  wire boosted_clk_IBUF_BUFG;
  wire [9:0]first_edge_fall_standard;
  wire [9:1]first_edge_fall_standard_OBUF;
  wire [9:0]half_PHI_pulse_width_standard;
  wire [9:0]posedge_boosted_clk_counter;
  wire [9:0]posedge_boosted_clk_counter_IBUF;
  wire programmable_D_flag;
  wire programmable_D_flag_IBUF;
  wire [9:0]pulse_interval_standard;
  wire [8:0]pulse_interval_standard_OBUF;
  wire start;
  wire [7:0]state_indicator;
  wire [7:0]state_indicator_OBUF;
  wire [9:0]total_posedge_count;
  wire [9:1]total_posedge_count_IBUF;

initial begin
 $sdf_annotate("ABC_switch_tb_time_synth.sdf",,,,"tool_control");
end
  CLK_CH_generator CH
       (.C({C[3:2],C[0]}),
        .CLK(boosted_clk_IBUF_BUFG),
        .CLK_DEC_OBUF(CLK_DEC_OBUF),
        .O(pulse_interval_standard_OBUF[3:0]),
        .first_edge_fall_standard_OBUF(first_edge_fall_standard_OBUF[3:1]),
        .posedge_boosted_clk_counter_IBUF(posedge_boosted_clk_counter_IBUF),
        .state_indicator_OBUF(state_indicator_OBUF[0]),
        .\total_posedge_count[1] (PHI_n_10),
        .\total_posedge_count[1]_0 (D_n_12),
        .\total_posedge_count[1]_1 (D_n_11),
        .\total_posedge_count[1]_2 (D_n_9),
        .\total_posedge_count[1]_3 (D_n_8),
        .\total_posedge_count[1]_4 (PHI_n_11),
        .\total_posedge_count[5] (D_n_13),
        .\total_posedge_count[6] (D_n_6),
        .\total_posedge_count[6]_0 (D_n_7));
  OBUF CLK_CH_OBUF_inst
       (.I(CLK_DEC_OBUF),
        .O(CLK_CH));
  OBUF CLK_DEC_OBUF_inst
       (.I(CLK_DEC_OBUF),
        .O(CLK_DEC));
  OBUF CLK_D_OBUF_inst
       (.I(CLK_D_OBUF),
        .O(CLK_D));
  OBUF CLK_LATCH_OBUF_inst
       (.I(CLK_LATCH_OBUF),
        .O(CLK_LATCH));
  CLK_D_generator D
       (.C(C),
        .CLK(boosted_clk_IBUF_BUFG),
        .CLK_D_OBUF(CLK_D_OBUF),
        .CLK_D_reg_0(D_n_1),
        .CO(D_n_16),
        .O(pulse_interval_standard_OBUF[3:0]),
        .posedge_boosted_clk_counter_IBUF(posedge_boosted_clk_counter_IBUF),
        .programmable_D_flag_IBUF(programmable_D_flag_IBUF),
        .pulse_interval_standard_OBUF(pulse_interval_standard_OBUF[8:4]),
        .\signal_end_reg[3]_0 (D_n_6),
        .\signal_end_reg[3]_1 (D_n_7),
        .\signal_end_reg[3]_2 (D_n_13),
        .\signal_end_reg[3]_3 (A),
        .\signal_end_reg[7]_0 (D_n_8),
        .\signal_end_reg[7]_1 (D_n_9),
        .\signal_end_reg[7]_2 (D_n_10),
        .\signal_end_reg[7]_3 (D_n_11),
        .\signal_end_reg[7]_4 (D_n_12),
        .state_indicator_OBUF(state_indicator_OBUF[0]),
        .\total_posedge_count[1] (PHI_n_11),
        .\total_posedge_count[5] (PHI_n_17),
        .total_posedge_count_IBUF(total_posedge_count_IBUF));
  CLK_LATCH_generator LATCH
       (.CLK(boosted_clk_IBUF_BUFG),
        .CLK_LATCH_OBUF(CLK_LATCH_OBUF),
        .\total_posedge_count[1] (PHI_n_1),
        .\total_posedge_count[5] (D_n_1));
  programmable_3_phase_clock PHI
       (.CLK(boosted_clk_IBUF_BUFG),
        .CLK_CH_reg(PHI_n_10),
        .CO(D_n_16),
        .DI({PHI20__4_carry_i_10_n_0,PHI20__4_carry_i_11_n_0,PHI20__4_carry_i_12_n_0}),
        .O(pulse_interval_standard_OBUF[3:0]),
        .PHI1_OBUF(PHI1_OBUF),
        .PHI2_OBUF(PHI2_OBUF),
        .PHI2_reg_0(PHI_n_1),
        .PHI3_OBUF(PHI3_OBUF),
        .S({PHI20__4_carry_i_8_n_0,PHI20__4_carry_i_9_n_0}),
        .posedge_boosted_clk_counter_IBUF(posedge_boosted_clk_counter_IBUF),
        .pulse_interval_standard_OBUF(pulse_interval_standard_OBUF[8:4]),
        .\signal_end_reg[3] (PHI_n_17),
        .\signal_end_reg[7] (C),
        .\signal_end_reg[9] (PHI_n_11),
        .state_indicator_OBUF({state_indicator_OBUF[7],state_indicator_OBUF[0]}),
        .\total_posedge_count[1] (D_n_11),
        .\total_posedge_count[1]_0 (D_n_9),
        .\total_posedge_count[1]_1 (D_n_8),
        .\total_posedge_count[1]_2 (D_n_12),
        .\total_posedge_count[4] (A),
        .\total_posedge_count[5] (D_n_10),
        .\total_posedge_count[5]_0 (D_n_13),
        .\total_posedge_count[6] (D_n_6),
        .\total_posedge_count[6]_0 (D_n_7),
        .total_posedge_count_IBUF(total_posedge_count_IBUF[9:4]));
  OBUF PHI1_OBUF_inst
       (.I(PHI1_OBUF),
        .O(PHI1));
  LUT2 #(
    .INIT(4'h8)) 
    PHI20__4_carry_i_10
       (.I0(pulse_interval_standard_OBUF[7]),
        .I1(pulse_interval_standard_OBUF[8]),
        .O(PHI20__4_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h2C)) 
    PHI20__4_carry_i_11
       (.I0(pulse_interval_standard_OBUF[6]),
        .I1(pulse_interval_standard_OBUF[8]),
        .I2(pulse_interval_standard_OBUF[7]),
        .O(PHI20__4_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9E18)) 
    PHI20__4_carry_i_12
       (.I0(pulse_interval_standard_OBUF[6]),
        .I1(pulse_interval_standard_OBUF[8]),
        .I2(pulse_interval_standard_OBUF[7]),
        .I3(pulse_interval_standard_OBUF[5]),
        .O(PHI20__4_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFA)) 
    PHI20__4_carry_i_8
       (.I0(pulse_interval_standard_OBUF[6]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(D_n_10),
        .I3(pulse_interval_standard_OBUF[5]),
        .I4(pulse_interval_standard_OBUF[8]),
        .I5(pulse_interval_standard_OBUF[7]),
        .O(PHI20__4_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFA)) 
    PHI20__4_carry_i_9
       (.I0(pulse_interval_standard_OBUF[6]),
        .I1(pulse_interval_standard_OBUF[4]),
        .I2(D_n_10),
        .I3(pulse_interval_standard_OBUF[5]),
        .I4(pulse_interval_standard_OBUF[8]),
        .I5(pulse_interval_standard_OBUF[7]),
        .O(PHI20__4_carry_i_9_n_0));
  OBUF PHI2_OBUF_inst
       (.I(PHI2_OBUF),
        .O(PHI2));
  OBUF PHI3_OBUF_inst
       (.I(PHI3_OBUF),
        .O(PHI3));
  IBUF PHI3_start_IBUF_inst
       (.I(PHI3_start),
        .O(state_indicator_OBUF[7]));
  BUFG boosted_clk_IBUF_BUFG_inst
       (.I(boosted_clk_IBUF),
        .O(boosted_clk_IBUF_BUFG));
  IBUF boosted_clk_IBUF_inst
       (.I(boosted_clk),
        .O(boosted_clk_IBUF));
  OBUF \first_edge_fall_standard_OBUF[0]_inst 
       (.I(1'b1),
        .O(first_edge_fall_standard[0]));
  OBUF \first_edge_fall_standard_OBUF[1]_inst 
       (.I(first_edge_fall_standard_OBUF[1]),
        .O(first_edge_fall_standard[1]));
  OBUF \first_edge_fall_standard_OBUF[2]_inst 
       (.I(first_edge_fall_standard_OBUF[2]),
        .O(first_edge_fall_standard[2]));
  OBUF \first_edge_fall_standard_OBUF[3]_inst 
       (.I(first_edge_fall_standard_OBUF[3]),
        .O(first_edge_fall_standard[3]));
  OBUF \first_edge_fall_standard_OBUF[4]_inst 
       (.I(first_edge_fall_standard_OBUF[4]),
        .O(first_edge_fall_standard[4]));
  OBUF \first_edge_fall_standard_OBUF[5]_inst 
       (.I(first_edge_fall_standard_OBUF[5]),
        .O(first_edge_fall_standard[5]));
  OBUF \first_edge_fall_standard_OBUF[6]_inst 
       (.I(first_edge_fall_standard_OBUF[6]),
        .O(first_edge_fall_standard[6]));
  OBUF \first_edge_fall_standard_OBUF[7]_inst 
       (.I(first_edge_fall_standard_OBUF[7]),
        .O(first_edge_fall_standard[7]));
  OBUF \first_edge_fall_standard_OBUF[8]_inst 
       (.I(first_edge_fall_standard_OBUF[8]),
        .O(first_edge_fall_standard[8]));
  OBUF \first_edge_fall_standard_OBUF[9]_inst 
       (.I(first_edge_fall_standard_OBUF[9]),
        .O(first_edge_fall_standard[9]));
  OBUF \half_PHI_pulse_width_standard_OBUF[0]_inst 
       (.I(first_edge_fall_standard_OBUF[1]),
        .O(half_PHI_pulse_width_standard[0]));
  OBUF \half_PHI_pulse_width_standard_OBUF[1]_inst 
       (.I(first_edge_fall_standard_OBUF[2]),
        .O(half_PHI_pulse_width_standard[1]));
  OBUF \half_PHI_pulse_width_standard_OBUF[2]_inst 
       (.I(first_edge_fall_standard_OBUF[3]),
        .O(half_PHI_pulse_width_standard[2]));
  OBUF \half_PHI_pulse_width_standard_OBUF[3]_inst 
       (.I(first_edge_fall_standard_OBUF[4]),
        .O(half_PHI_pulse_width_standard[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[3]_inst_i_1 
       (.I0(D_n_13),
        .O(first_edge_fall_standard_OBUF[4]));
  OBUF \half_PHI_pulse_width_standard_OBUF[4]_inst 
       (.I(first_edge_fall_standard_OBUF[5]),
        .O(half_PHI_pulse_width_standard[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[4]_inst_i_1 
       (.I0(D_n_12),
        .O(first_edge_fall_standard_OBUF[5]));
  OBUF \half_PHI_pulse_width_standard_OBUF[5]_inst 
       (.I(first_edge_fall_standard_OBUF[6]),
        .O(half_PHI_pulse_width_standard[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[5]_inst_i_1 
       (.I0(D_n_11),
        .O(first_edge_fall_standard_OBUF[6]));
  OBUF \half_PHI_pulse_width_standard_OBUF[6]_inst 
       (.I(first_edge_fall_standard_OBUF[7]),
        .O(half_PHI_pulse_width_standard[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[6]_inst_i_1 
       (.I0(D_n_9),
        .O(first_edge_fall_standard_OBUF[7]));
  OBUF \half_PHI_pulse_width_standard_OBUF[7]_inst 
       (.I(first_edge_fall_standard_OBUF[8]),
        .O(half_PHI_pulse_width_standard[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[7]_inst_i_1 
       (.I0(D_n_8),
        .O(first_edge_fall_standard_OBUF[8]));
  OBUF \half_PHI_pulse_width_standard_OBUF[8]_inst 
       (.I(first_edge_fall_standard_OBUF[9]),
        .O(half_PHI_pulse_width_standard[8]));
  OBUF \half_PHI_pulse_width_standard_OBUF[9]_inst 
       (.I(first_edge_fall_standard_OBUF[9]),
        .O(half_PHI_pulse_width_standard[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \half_PHI_pulse_width_standard_OBUF[9]_inst_i_1 
       (.I0(PHI_n_11),
        .O(first_edge_fall_standard_OBUF[9]));
  IBUF \posedge_boosted_clk_counter_IBUF[0]_inst 
       (.I(posedge_boosted_clk_counter[0]),
        .O(posedge_boosted_clk_counter_IBUF[0]));
  IBUF \posedge_boosted_clk_counter_IBUF[1]_inst 
       (.I(posedge_boosted_clk_counter[1]),
        .O(posedge_boosted_clk_counter_IBUF[1]));
  IBUF \posedge_boosted_clk_counter_IBUF[2]_inst 
       (.I(posedge_boosted_clk_counter[2]),
        .O(posedge_boosted_clk_counter_IBUF[2]));
  IBUF \posedge_boosted_clk_counter_IBUF[3]_inst 
       (.I(posedge_boosted_clk_counter[3]),
        .O(posedge_boosted_clk_counter_IBUF[3]));
  IBUF \posedge_boosted_clk_counter_IBUF[4]_inst 
       (.I(posedge_boosted_clk_counter[4]),
        .O(posedge_boosted_clk_counter_IBUF[4]));
  IBUF \posedge_boosted_clk_counter_IBUF[5]_inst 
       (.I(posedge_boosted_clk_counter[5]),
        .O(posedge_boosted_clk_counter_IBUF[5]));
  IBUF \posedge_boosted_clk_counter_IBUF[6]_inst 
       (.I(posedge_boosted_clk_counter[6]),
        .O(posedge_boosted_clk_counter_IBUF[6]));
  IBUF \posedge_boosted_clk_counter_IBUF[7]_inst 
       (.I(posedge_boosted_clk_counter[7]),
        .O(posedge_boosted_clk_counter_IBUF[7]));
  IBUF \posedge_boosted_clk_counter_IBUF[8]_inst 
       (.I(posedge_boosted_clk_counter[8]),
        .O(posedge_boosted_clk_counter_IBUF[8]));
  IBUF \posedge_boosted_clk_counter_IBUF[9]_inst 
       (.I(posedge_boosted_clk_counter[9]),
        .O(posedge_boosted_clk_counter_IBUF[9]));
  IBUF programmable_D_flag_IBUF_inst
       (.I(programmable_D_flag),
        .O(programmable_D_flag_IBUF));
  OBUF \pulse_interval_standard_OBUF[0]_inst 
       (.I(pulse_interval_standard_OBUF[0]),
        .O(pulse_interval_standard[0]));
  OBUF \pulse_interval_standard_OBUF[1]_inst 
       (.I(pulse_interval_standard_OBUF[1]),
        .O(pulse_interval_standard[1]));
  OBUF \pulse_interval_standard_OBUF[2]_inst 
       (.I(pulse_interval_standard_OBUF[2]),
        .O(pulse_interval_standard[2]));
  OBUF \pulse_interval_standard_OBUF[3]_inst 
       (.I(pulse_interval_standard_OBUF[3]),
        .O(pulse_interval_standard[3]));
  OBUF \pulse_interval_standard_OBUF[4]_inst 
       (.I(pulse_interval_standard_OBUF[4]),
        .O(pulse_interval_standard[4]));
  OBUF \pulse_interval_standard_OBUF[5]_inst 
       (.I(pulse_interval_standard_OBUF[5]),
        .O(pulse_interval_standard[5]));
  OBUF \pulse_interval_standard_OBUF[6]_inst 
       (.I(pulse_interval_standard_OBUF[6]),
        .O(pulse_interval_standard[6]));
  OBUF \pulse_interval_standard_OBUF[7]_inst 
       (.I(pulse_interval_standard_OBUF[7]),
        .O(pulse_interval_standard[7]));
  OBUF \pulse_interval_standard_OBUF[8]_inst 
       (.I(pulse_interval_standard_OBUF[8]),
        .O(pulse_interval_standard[8]));
  OBUF \pulse_interval_standard_OBUF[9]_inst 
       (.I(1'b0),
        .O(pulse_interval_standard[9]));
  IBUF start_IBUF_inst
       (.I(start),
        .O(state_indicator_OBUF[0]));
  OBUF \state_indicator_OBUF[0]_inst 
       (.I(state_indicator_OBUF[0]),
        .O(state_indicator[0]));
  OBUF \state_indicator_OBUF[1]_inst 
       (.I(1'b0),
        .O(state_indicator[1]));
  OBUF \state_indicator_OBUF[2]_inst 
       (.I(1'b0),
        .O(state_indicator[2]));
  OBUF \state_indicator_OBUF[3]_inst 
       (.I(1'b0),
        .O(state_indicator[3]));
  OBUF \state_indicator_OBUF[4]_inst 
       (.I(1'b0),
        .O(state_indicator[4]));
  OBUF \state_indicator_OBUF[5]_inst 
       (.I(1'b0),
        .O(state_indicator[5]));
  OBUF \state_indicator_OBUF[6]_inst 
       (.I(1'b0),
        .O(state_indicator[6]));
  OBUF \state_indicator_OBUF[7]_inst 
       (.I(state_indicator_OBUF[7]),
        .O(state_indicator[7]));
  IBUF \total_posedge_count_IBUF[1]_inst 
       (.I(total_posedge_count[1]),
        .O(total_posedge_count_IBUF[1]));
  IBUF \total_posedge_count_IBUF[2]_inst 
       (.I(total_posedge_count[2]),
        .O(total_posedge_count_IBUF[2]));
  IBUF \total_posedge_count_IBUF[3]_inst 
       (.I(total_posedge_count[3]),
        .O(total_posedge_count_IBUF[3]));
  IBUF \total_posedge_count_IBUF[4]_inst 
       (.I(total_posedge_count[4]),
        .O(total_posedge_count_IBUF[4]));
  IBUF \total_posedge_count_IBUF[5]_inst 
       (.I(total_posedge_count[5]),
        .O(total_posedge_count_IBUF[5]));
  IBUF \total_posedge_count_IBUF[6]_inst 
       (.I(total_posedge_count[6]),
        .O(total_posedge_count_IBUF[6]));
  IBUF \total_posedge_count_IBUF[7]_inst 
       (.I(total_posedge_count[7]),
        .O(total_posedge_count_IBUF[7]));
  IBUF \total_posedge_count_IBUF[8]_inst 
       (.I(total_posedge_count[8]),
        .O(total_posedge_count_IBUF[8]));
  IBUF \total_posedge_count_IBUF[9]_inst 
       (.I(total_posedge_count[9]),
        .O(total_posedge_count_IBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
