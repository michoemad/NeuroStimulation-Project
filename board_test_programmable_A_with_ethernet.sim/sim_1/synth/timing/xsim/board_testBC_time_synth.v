// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jun  8 12:29:10 2018
// Host        : LAPTOP-HPTS9AFJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {D:/Neurostimulation/Mike
//               Copy/board_test_programmable_A_with_ethernet.sim/sim_1/synth/timing/xsim/board_testBC_time_synth.v}
// Design      : board_testBC
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module PSI_stem
   (load_spi_stem_OBUF,
    spi_clk_out_stem_OBUF,
    CLK,
    set_up_start_stem_reg,
    reset_control_IBUF,
    temp_clk);
  output load_spi_stem_OBUF;
  output spi_clk_out_stem_OBUF;
  input CLK;
  input set_up_start_stem_reg;
  input reset_control_IBUF;
  input temp_clk;

  wire CLK;
  wire [31:1]data0;
  wire done_i_1_n_0;
  wire [31:0]i;
  wire i0_carry__0_n_0;
  wire i0_carry__0_n_1;
  wire i0_carry__0_n_2;
  wire i0_carry__0_n_3;
  wire i0_carry__1_n_0;
  wire i0_carry__1_n_1;
  wire i0_carry__1_n_2;
  wire i0_carry__1_n_3;
  wire i0_carry__2_n_0;
  wire i0_carry__2_n_1;
  wire i0_carry__2_n_2;
  wire i0_carry__2_n_3;
  wire i0_carry__3_n_0;
  wire i0_carry__3_n_1;
  wire i0_carry__3_n_2;
  wire i0_carry__3_n_3;
  wire i0_carry__4_n_0;
  wire i0_carry__4_n_1;
  wire i0_carry__4_n_2;
  wire i0_carry__4_n_3;
  wire i0_carry__5_n_0;
  wire i0_carry__5_n_1;
  wire i0_carry__5_n_2;
  wire i0_carry__5_n_3;
  wire i0_carry__6_n_2;
  wire i0_carry__6_n_3;
  wire i0_carry_n_0;
  wire i0_carry_n_1;
  wire i0_carry_n_2;
  wire i0_carry_n_3;
  wire \i[0]_i_1_n_0 ;
  wire \i[0]_i_2_n_0 ;
  wire \i[10]_i_1_n_0 ;
  wire \i[11]_i_1_n_0 ;
  wire \i[12]_i_1_n_0 ;
  wire \i[13]_i_1_n_0 ;
  wire \i[14]_i_1_n_0 ;
  wire \i[15]_i_1_n_0 ;
  wire \i[16]_i_1_n_0 ;
  wire \i[17]_i_1_n_0 ;
  wire \i[18]_i_1_n_0 ;
  wire \i[19]_i_1_n_0 ;
  wire \i[1]_i_1_n_0 ;
  wire \i[20]_i_1_n_0 ;
  wire \i[21]_i_1_n_0 ;
  wire \i[22]_i_1_n_0 ;
  wire \i[23]_i_1_n_0 ;
  wire \i[24]_i_1_n_0 ;
  wire \i[25]_i_1_n_0 ;
  wire \i[26]_i_1_n_0 ;
  wire \i[27]_i_1_n_0 ;
  wire \i[28]_i_1_n_0 ;
  wire \i[29]_i_1_n_0 ;
  wire \i[2]_i_1_n_0 ;
  wire \i[30]_i_1_n_0 ;
  wire \i[31]_i_10_n_0 ;
  wire \i[31]_i_11_n_0 ;
  wire \i[31]_i_1_n_0 ;
  wire \i[31]_i_3_n_0 ;
  wire \i[31]_i_4_n_0 ;
  wire \i[31]_i_5_n_0 ;
  wire \i[31]_i_6_n_0 ;
  wire \i[31]_i_7_n_0 ;
  wire \i[31]_i_8_n_0 ;
  wire \i[31]_i_9_n_0 ;
  wire \i[3]_i_1_n_0 ;
  wire \i[4]_i_1_n_0 ;
  wire \i[5]_i_1_n_0 ;
  wire \i[6]_i_1_n_0 ;
  wire \i[7]_i_1_n_0 ;
  wire \i[8]_i_1_n_0 ;
  wire \i[9]_i_1_n_0 ;
  wire load_i_1_n_0;
  wire load_i_2_n_0;
  wire load_i_3_n_0;
  wire load_spi_stem_OBUF;
  wire load_stem;
  wire reset_control_IBUF;
  wire set_up_start_stem_reg;
  wire spi_clk_out_stem_OBUF;
  wire temp_clk;
  wire [3:2]NLW_i0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_i0_carry__6_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h22000200)) 
    done_i_1
       (.I0(set_up_start_stem_reg),
        .I1(reset_control_IBUF),
        .I2(\i[31]_i_3_n_0 ),
        .I3(load_i_2_n_0),
        .I4(load_spi_stem_OBUF),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(CLK),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(load_spi_stem_OBUF),
        .R(1'b0));
  CARRY4 i0_carry
       (.CI(1'b0),
        .CO({i0_carry_n_0,i0_carry_n_1,i0_carry_n_2,i0_carry_n_3}),
        .CYINIT(i[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(i[4:1]));
  CARRY4 i0_carry__0
       (.CI(i0_carry_n_0),
        .CO({i0_carry__0_n_0,i0_carry__0_n_1,i0_carry__0_n_2,i0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(i[8:5]));
  CARRY4 i0_carry__1
       (.CI(i0_carry__0_n_0),
        .CO({i0_carry__1_n_0,i0_carry__1_n_1,i0_carry__1_n_2,i0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(i[12:9]));
  CARRY4 i0_carry__2
       (.CI(i0_carry__1_n_0),
        .CO({i0_carry__2_n_0,i0_carry__2_n_1,i0_carry__2_n_2,i0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(i[16:13]));
  CARRY4 i0_carry__3
       (.CI(i0_carry__2_n_0),
        .CO({i0_carry__3_n_0,i0_carry__3_n_1,i0_carry__3_n_2,i0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(i[20:17]));
  CARRY4 i0_carry__4
       (.CI(i0_carry__3_n_0),
        .CO({i0_carry__4_n_0,i0_carry__4_n_1,i0_carry__4_n_2,i0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(i[24:21]));
  CARRY4 i0_carry__5
       (.CI(i0_carry__4_n_0),
        .CO({i0_carry__5_n_0,i0_carry__5_n_1,i0_carry__5_n_2,i0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(i[28:25]));
  CARRY4 i0_carry__6
       (.CI(i0_carry__5_n_0),
        .CO({NLW_i0_carry__6_CO_UNCONNECTED[3:2],i0_carry__6_n_2,i0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,i[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FF007F)) 
    \i[0]_i_1 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(\i[0]_i_2_n_0 ),
        .O(\i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \i[0]_i_2 
       (.I0(\i[31]_i_5_n_0 ),
        .I1(\i[31]_i_6_n_0 ),
        .I2(\i[31]_i_7_n_0 ),
        .O(\i[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[10]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[10]),
        .O(\i[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[11]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[11]),
        .O(\i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[12]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[12]),
        .O(\i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[13]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[13]),
        .O(\i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[14]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[14]),
        .O(\i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[15]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[15]),
        .O(\i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[16]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[16]),
        .O(\i[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[17]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[17]),
        .O(\i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[18]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[18]),
        .O(\i[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[19]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[19]),
        .O(\i[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[1]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[1]),
        .O(\i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[20]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[20]),
        .O(\i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[21]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[21]),
        .O(\i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[22]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[22]),
        .O(\i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[23]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[23]),
        .O(\i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[24]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[24]),
        .O(\i[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[25]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[25]),
        .O(\i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[26]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[26]),
        .O(\i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[27]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[27]),
        .O(\i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[28]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[28]),
        .O(\i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[29]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[29]),
        .O(\i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[2]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[2]),
        .O(\i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[30]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[30]),
        .O(\i[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i[31]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[31]),
        .O(\i[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i[31]_i_10 
       (.I0(i[29]),
        .I1(i[28]),
        .I2(i[31]),
        .I3(i[30]),
        .O(\i[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i[31]_i_11 
       (.I0(i[5]),
        .I1(i[4]),
        .I2(i[7]),
        .I3(i[6]),
        .O(\i[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \i[31]_i_3 
       (.I0(\i[31]_i_4_n_0 ),
        .I1(i[0]),
        .I2(\i[31]_i_5_n_0 ),
        .I3(\i[31]_i_6_n_0 ),
        .I4(\i[31]_i_7_n_0 ),
        .O(\i[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \i[31]_i_4 
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .O(\i[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \i[31]_i_5 
       (.I0(i[18]),
        .I1(i[19]),
        .I2(i[16]),
        .I3(i[17]),
        .I4(\i[31]_i_8_n_0 ),
        .O(\i[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \i[31]_i_6 
       (.I0(i[10]),
        .I1(i[11]),
        .I2(i[8]),
        .I3(i[9]),
        .I4(\i[31]_i_9_n_0 ),
        .O(\i[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i[31]_i_7 
       (.I0(\i[31]_i_10_n_0 ),
        .I1(i[25]),
        .I2(i[24]),
        .I3(i[27]),
        .I4(i[26]),
        .I5(\i[31]_i_11_n_0 ),
        .O(\i[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i[31]_i_8 
       (.I0(i[21]),
        .I1(i[20]),
        .I2(i[23]),
        .I3(i[22]),
        .O(\i[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i[31]_i_9 
       (.I0(i[13]),
        .I1(i[12]),
        .I2(i[15]),
        .I3(i[14]),
        .O(\i[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[3]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[3]),
        .O(\i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[4]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[4]),
        .O(\i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[5]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[5]),
        .O(\i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[6]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[6]),
        .O(\i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[7]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[7]),
        .O(\i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[8]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[8]),
        .O(\i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i[9]_i_1 
       (.I0(\i[31]_i_3_n_0 ),
        .I1(data0[9]),
        .O(\i[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[10]_i_1_n_0 ),
        .Q(i[10]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[11]_i_1_n_0 ),
        .Q(i[11]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[12]_i_1_n_0 ),
        .Q(i[12]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[13]_i_1_n_0 ),
        .Q(i[13]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[14]_i_1_n_0 ),
        .Q(i[14]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[15]_i_1_n_0 ),
        .Q(i[15]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[16]_i_1_n_0 ),
        .Q(i[16]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[17]_i_1_n_0 ),
        .Q(i[17]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[18]_i_1_n_0 ),
        .Q(i[18]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[19]_i_1_n_0 ),
        .Q(i[19]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[20]_i_1_n_0 ),
        .Q(i[20]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[21]_i_1_n_0 ),
        .Q(i[21]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[22]_i_1_n_0 ),
        .Q(i[22]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[23]_i_1_n_0 ),
        .Q(i[23]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[24]_i_1_n_0 ),
        .Q(i[24]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[25]_i_1_n_0 ),
        .Q(i[25]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[26]_i_1_n_0 ),
        .Q(i[26]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[27]_i_1_n_0 ),
        .Q(i[27]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[28]_i_1_n_0 ),
        .Q(i[28]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[29]_i_1_n_0 ),
        .Q(i[29]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[2]_i_1_n_0 ),
        .Q(i[2]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[30]_i_1_n_0 ),
        .Q(i[30]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[31]_i_1_n_0 ),
        .Q(i[31]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[3]_i_1_n_0 ),
        .Q(i[3]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[4]_i_1_n_0 ),
        .Q(i[4]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[5]_i_1_n_0 ),
        .Q(i[5]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[6]_i_1_n_0 ),
        .Q(i[6]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[7]_i_1_n_0 ),
        .Q(i[7]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[8]_i_1_n_0 ),
        .Q(i[8]),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(CLK),
        .CE(set_up_start_stem_reg),
        .D(\i[9]_i_1_n_0 ),
        .Q(i[9]),
        .R(reset_control_IBUF));
  LUT5 #(
    .INIT(32'h0000AE2E)) 
    load_i_1
       (.I0(load_stem),
        .I1(set_up_start_stem_reg),
        .I2(load_i_2_n_0),
        .I3(\i[31]_i_3_n_0 ),
        .I4(reset_control_IBUF),
        .O(load_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    load_i_2
       (.I0(load_i_3_n_0),
        .I1(i[0]),
        .I2(\i[31]_i_5_n_0 ),
        .I3(\i[31]_i_6_n_0 ),
        .I4(\i[31]_i_7_n_0 ),
        .O(load_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    load_i_3
       (.I0(i[3]),
        .I1(i[2]),
        .I2(i[1]),
        .O(load_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    load_reg
       (.C(CLK),
        .CE(1'b1),
        .D(load_i_1_n_0),
        .Q(load_stem),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    spi_clk_out_stem_OBUF_inst_i_1
       (.I0(temp_clk),
        .I1(load_stem),
        .O(spi_clk_out_stem_OBUF));
endmodule

module add_crc32
   (data_enable_out,
    data_valid_out,
    Q,
    \crc_reg[19]_0 ,
    v_crc1,
    \crc_reg[13]_0 ,
    \crc_reg[15]_0 ,
    \crc_reg[12]_0 ,
    \crc_reg[11]_0 ,
    \crc_reg[10]_0 ,
    \delay_data_reg[63] ,
    E,
    clk125Mhz_OBUF_BUFG,
    data_valid,
    \data_reg[7] ,
    v_crc17_out,
    v_crc14_out,
    \crc_reg[5]_0 ,
    v_crc11_out,
    SS,
    data_enable_reg,
    crc,
    D,
    data_enable_reg_0,
    \data_reg[7]_0 ,
    \data_reg[5] ,
    \data_reg[2] ,
    \data_reg[5]_0 ,
    \data_reg[4] ,
    \crc_reg[24]_0 ,
    \crc_reg[30]_0 ,
    \data_reg[7]_1 );
  output data_enable_out;
  output data_valid_out;
  output [0:0]Q;
  output [18:0]\crc_reg[19]_0 ;
  output v_crc1;
  output \crc_reg[13]_0 ;
  output \crc_reg[15]_0 ;
  output \crc_reg[12]_0 ;
  output \crc_reg[11]_0 ;
  output \crc_reg[10]_0 ;
  output [7:0]\delay_data_reg[63] ;
  input [0:0]E;
  input clk125Mhz_OBUF_BUFG;
  input data_valid;
  input [5:0]\data_reg[7] ;
  input v_crc17_out;
  input v_crc14_out;
  input \crc_reg[5]_0 ;
  input v_crc11_out;
  input [0:0]SS;
  input [0:0]data_enable_reg;
  input crc;
  input [15:0]D;
  input data_enable_reg_0;
  input \data_reg[7]_0 ;
  input \data_reg[5] ;
  input \data_reg[2] ;
  input \data_reg[5]_0 ;
  input \data_reg[4] ;
  input \crc_reg[24]_0 ;
  input \crc_reg[30]_0 ;
  input [7:0]\data_reg[7]_1 ;

  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire clk125Mhz_OBUF_BUFG;
  wire crc;
  wire \crc[13]_i_1_n_0 ;
  wire \crc[14]_i_1_n_0 ;
  wire \crc[14]_i_2_n_0 ;
  wire \crc[18]_i_1_n_0 ;
  wire \crc[19]_i_1_n_0 ;
  wire \crc[22]_i_1_n_0 ;
  wire \crc[25]_i_1_n_0 ;
  wire \crc[29]_i_1_n_0 ;
  wire \crc[30]_i_1_n_0 ;
  wire \crc[9]_i_1_n_0 ;
  wire \crc[9]_i_2_n_0 ;
  wire \crc_reg[10]_0 ;
  wire \crc_reg[11]_0 ;
  wire \crc_reg[12]_0 ;
  wire \crc_reg[13]_0 ;
  wire \crc_reg[15]_0 ;
  wire [18:0]\crc_reg[19]_0 ;
  wire \crc_reg[24]_0 ;
  wire \crc_reg[30]_0 ;
  wire \crc_reg[5]_0 ;
  wire \crc_reg_n_0_[10] ;
  wire \crc_reg_n_0_[11] ;
  wire \crc_reg_n_0_[14] ;
  wire \crc_reg_n_0_[17] ;
  wire \crc_reg_n_0_[1] ;
  wire \crc_reg_n_0_[21] ;
  wire \crc_reg_n_0_[22] ;
  wire \crc_reg_n_0_[6] ;
  wire data_enable_out;
  wire [0:0]data_enable_reg;
  wire data_enable_reg_0;
  wire \data_reg[2] ;
  wire \data_reg[4] ;
  wire \data_reg[5] ;
  wire \data_reg[5]_0 ;
  wire [5:0]\data_reg[7] ;
  wire \data_reg[7]_0 ;
  wire [7:0]\data_reg[7]_1 ;
  wire data_valid;
  wire data_valid_out;
  wire data_valid_out_i_1__0_n_0;
  wire [7:0]\delay_data_reg[63] ;
  wire [2:0]trailer_left;
  wire v_crc1;
  wire v_crc11_out;
  wire v_crc14_out;
  wire v_crc17_out;

  LUT6 #(
    .INIT(64'hC33C3CC3AAAAAAAA)) 
    \crc[13]_i_1 
       (.I0(\crc_reg[13]_0 ),
        .I1(\crc_reg[5]_0 ),
        .I2(\crc_reg[19]_0 [12]),
        .I3(v_crc1),
        .I4(\data_reg[7] [4]),
        .I5(data_valid),
        .O(\crc[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC33CAAAA)) 
    \crc[14]_i_1 
       (.I0(\crc_reg_n_0_[6] ),
        .I1(\crc[14]_i_2_n_0 ),
        .I2(\crc_reg[19]_0 [13]),
        .I3(\data_reg[7] [3]),
        .I4(data_valid),
        .O(\crc[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc[14]_i_2 
       (.I0(v_crc1),
        .I1(\crc_reg_n_0_[6] ),
        .I2(v_crc11_out),
        .I3(v_crc17_out),
        .I4(\crc_reg[19]_0 [14]),
        .I5(\data_reg[7] [2]),
        .O(\crc[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h96696996CCCCCCCC)) 
    \crc[18]_i_1 
       (.I0(v_crc1),
        .I1(\crc_reg_n_0_[10] ),
        .I2(v_crc11_out),
        .I3(\crc_reg[19]_0 [13]),
        .I4(\data_reg[7] [3]),
        .I5(data_valid),
        .O(\crc[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96696996AAAAAAAA)) 
    \crc[19]_i_1 
       (.I0(\crc_reg_n_0_[11] ),
        .I1(\data_reg[7] [0]),
        .I2(\crc_reg[19]_0 [18]),
        .I3(\crc_reg[19]_0 [14]),
        .I4(\data_reg[7] [2]),
        .I5(data_valid),
        .O(\crc[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9F60)) 
    \crc[22]_i_1 
       (.I0(\crc_reg[19]_0 [11]),
        .I1(\data_reg[7] [5]),
        .I2(data_valid),
        .I3(\crc_reg_n_0_[14] ),
        .O(\crc[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96696996F0F0F0F0)) 
    \crc[25]_i_1 
       (.I0(\crc_reg[19]_0 [14]),
        .I1(\data_reg[7] [2]),
        .I2(\crc_reg_n_0_[17] ),
        .I3(\crc_reg[19]_0 [13]),
        .I4(\data_reg[7] [3]),
        .I5(data_valid),
        .O(\crc[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96696996CCCCCCCC)) 
    \crc[29]_i_1 
       (.I0(v_crc1),
        .I1(\crc_reg_n_0_[21] ),
        .I2(v_crc11_out),
        .I3(\crc_reg[19]_0 [14]),
        .I4(\data_reg[7] [2]),
        .I5(data_valid),
        .O(\crc[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \crc[29]_i_2 
       (.I0(\crc_reg[19]_0 [18]),
        .I1(\data_reg[7] [0]),
        .O(v_crc1));
  LUT6 #(
    .INIT(64'h96696996AAAAAAAA)) 
    \crc[30]_i_1 
       (.I0(\crc_reg_n_0_[22] ),
        .I1(\data_reg[7] [0]),
        .I2(\crc_reg[19]_0 [18]),
        .I3(\crc_reg[19]_0 [15]),
        .I4(\data_reg[7] [1]),
        .I5(data_valid),
        .O(\crc[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC33C3CC3AAAAAAAA)) 
    \crc[9]_i_1 
       (.I0(\crc_reg_n_0_[1] ),
        .I1(\crc[9]_i_2_n_0 ),
        .I2(\crc_reg[19]_0 [12]),
        .I3(v_crc1),
        .I4(\data_reg[7] [4]),
        .I5(data_valid),
        .O(\crc[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc[9]_i_2 
       (.I0(\crc_reg[19]_0 [13]),
        .I1(\data_reg[7] [3]),
        .I2(v_crc17_out),
        .I3(v_crc14_out),
        .I4(v_crc1),
        .I5(\crc_reg_n_0_[1] ),
        .O(\crc[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[0]),
        .Q(\crc_reg[19]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[10] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[2]),
        .Q(\crc_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[11] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[3]),
        .Q(\crc_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[12] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[4]),
        .Q(\crc_reg[19]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[13] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[13]_i_1_n_0 ),
        .Q(\crc_reg[19]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[14] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[14]_i_1_n_0 ),
        .Q(\crc_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[15] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[5]),
        .Q(\crc_reg[19]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[16] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[6]),
        .Q(\crc_reg[19]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[17] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[7]),
        .Q(\crc_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[18] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[18]_i_1_n_0 ),
        .Q(\crc_reg[19]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[19] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[19]_i_1_n_0 ),
        .Q(\crc_reg[19]_0 [8]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \crc_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc_reg[30]_0 ),
        .Q(\crc_reg_n_0_[1] ),
        .S(data_enable_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[20] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[8]),
        .Q(\crc_reg[19]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[21] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[9]),
        .Q(\crc_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[22] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[22]_i_1_n_0 ),
        .Q(\crc_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[23] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[10]),
        .Q(\crc_reg[19]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[24] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[11]),
        .Q(\crc_reg[19]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[25] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[25]_i_1_n_0 ),
        .Q(\crc_reg[19]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[26] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[12]),
        .Q(\crc_reg[19]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[27] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[13]),
        .Q(\crc_reg[19]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[28] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[14]),
        .Q(\crc_reg[19]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[29] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[29]_i_1_n_0 ),
        .Q(\crc_reg[19]_0 [16]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \crc_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc_reg[24]_0 ),
        .Q(\crc_reg[10]_0 ),
        .S(data_enable_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[30] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[30]_i_1_n_0 ),
        .Q(\crc_reg[19]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[31] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[15]),
        .Q(\crc_reg[19]_0 [18]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \crc_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\data_reg[4] ),
        .Q(\crc_reg[11]_0 ),
        .S(data_enable_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \crc_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\data_reg[5]_0 ),
        .Q(\crc_reg[12]_0 ),
        .S(data_enable_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \crc_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\data_reg[2] ),
        .Q(\crc_reg[13]_0 ),
        .S(data_enable_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \crc_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\data_reg[5] ),
        .Q(\crc_reg_n_0_[6] ),
        .S(data_enable_reg_0));
  FDSE #(
    .INIT(1'b1)) 
    \crc_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\data_reg[7]_0 ),
        .Q(\crc_reg[15]_0 ),
        .S(data_enable_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[8] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(D[1]),
        .Q(\crc_reg[19]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \crc_reg[9] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(crc),
        .D(\crc[9]_i_1_n_0 ),
        .Q(\crc_reg[19]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    data_enable_out_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(E),
        .Q(data_enable_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(E),
        .D(\data_reg[7]_1 [0]),
        .Q(\delay_data_reg[63] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(E),
        .D(\data_reg[7]_1 [1]),
        .Q(\delay_data_reg[63] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(E),
        .D(\data_reg[7]_1 [2]),
        .Q(\delay_data_reg[63] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(E),
        .D(\data_reg[7]_1 [3]),
        .Q(\delay_data_reg[63] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(E),
        .D(\data_reg[7]_1 [4]),
        .Q(\delay_data_reg[63] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(E),
        .D(\data_reg[7]_1 [5]),
        .Q(\delay_data_reg[63] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(E),
        .D(\data_reg[7]_1 [6]),
        .Q(\delay_data_reg[63] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(E),
        .D(\data_reg[7]_1 [7]),
        .Q(\delay_data_reg[63] [7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFCAA)) 
    data_valid_out_i_1__0
       (.I0(data_valid_out),
        .I1(Q),
        .I2(data_valid),
        .I3(E),
        .O(data_valid_out_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_out_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(data_valid_out_i_1__0_n_0),
        .Q(data_valid_out),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \trailer_left_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_reg),
        .D(1'b0),
        .Q(trailer_left[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \trailer_left_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_reg),
        .D(trailer_left[0]),
        .Q(trailer_left[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \trailer_left_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_reg),
        .D(trailer_left[1]),
        .Q(trailer_left[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b0)) 
    \trailer_left_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_reg),
        .D(trailer_left[2]),
        .Q(Q),
        .S(SS));
endmodule

module add_preamble
   (fully_framed_enable,
    D,
    fully_framed_valid,
    \dout_reg[7] ,
    ok_to_send_reg,
    \doutctl_reg[1] ,
    data_enable_out,
    clk125Mhz_OBUF_BUFG,
    data_valid_out,
    \data_out_reg[7]_0 ,
    Q,
    \enable_frequency_reg[0] ,
    ok_to_send,
    hold_valid);
  output fully_framed_enable;
  output [3:0]D;
  output fully_framed_valid;
  output [7:0]\dout_reg[7] ;
  output ok_to_send_reg;
  output [0:0]\doutctl_reg[1] ;
  input data_enable_out;
  input clk125Mhz_OBUF_BUFG;
  input data_valid_out;
  input [7:0]\data_out_reg[7]_0 ;
  input [3:0]Q;
  input \enable_frequency_reg[0] ;
  input ok_to_send;
  input hold_valid;

  wire [3:0]D;
  wire [3:0]Q;
  wire clk125Mhz_OBUF_BUFG;
  wire data_enable_out;
  wire \data_out[0]_i_1__0_n_0 ;
  wire \data_out[1]_i_1__0_n_0 ;
  wire \data_out[2]_i_1__0_n_0 ;
  wire \data_out[3]_i_1__0_n_0 ;
  wire \data_out[4]_i_1__0_n_0 ;
  wire \data_out[5]_i_1__0_n_0 ;
  wire \data_out[6]_i_1__0_n_0 ;
  wire \data_out[7]_i_1__0_n_0 ;
  wire data_out_n_0;
  wire [7:0]\data_out_reg[7]_0 ;
  wire \data_out_reg_n_0_[0] ;
  wire \data_out_reg_n_0_[1] ;
  wire \data_out_reg_n_0_[2] ;
  wire \data_out_reg_n_0_[3] ;
  wire data_valid_out;
  wire data_valid_out_i_1_n_0;
  wire [63:56]delay_data;
  wire \delay_data_reg[48]_srl7_n_0 ;
  wire \delay_data_reg[49]_srl7_n_0 ;
  wire \delay_data_reg[50]_srl7_n_0 ;
  wire \delay_data_reg[51]_srl7_n_0 ;
  wire \delay_data_reg[52]_srl7_n_0 ;
  wire \delay_data_reg[53]_srl7_n_0 ;
  wire \delay_data_reg[54]_srl7_n_0 ;
  wire \delay_data_reg[55]_srl7_n_0 ;
  wire \delay_data_valid_reg[5]_srl6_n_0 ;
  wire [7:0]\dout_reg[7] ;
  wire [0:0]\doutctl_reg[1] ;
  wire \enable_frequency_reg[0] ;
  wire fully_framed_enable;
  wire fully_framed_valid;
  wire hold_valid;
  wire ok_to_send;
  wire ok_to_send_reg;
  wire p_0_in;
  wire p_1_in;

  FDRE #(
    .INIT(1'b0)) 
    data_enable_out_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(data_enable_out),
        .Q(fully_framed_enable),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2220)) 
    data_out
       (.I0(data_enable_out),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(data_valid_out),
        .O(data_out_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[0]_i_1__0 
       (.I0(delay_data[56]),
        .I1(p_0_in),
        .O(\data_out[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hC0AA)) 
    \data_out[1]_i_1__0 
       (.I0(\data_out_reg_n_0_[1] ),
        .I1(delay_data[57]),
        .I2(p_0_in),
        .I3(data_enable_out),
        .O(\data_out[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[2]_i_1__0 
       (.I0(delay_data[58]),
        .I1(p_0_in),
        .O(\data_out[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hC0AA)) 
    \data_out[3]_i_1__0 
       (.I0(\data_out_reg_n_0_[3] ),
        .I1(delay_data[59]),
        .I2(p_0_in),
        .I3(data_enable_out),
        .O(\data_out[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[4]_i_1__0 
       (.I0(delay_data[60]),
        .I1(p_0_in),
        .O(\data_out[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hC0AA)) 
    \data_out[5]_i_1__0 
       (.I0(D[1]),
        .I1(delay_data[61]),
        .I2(p_0_in),
        .I3(data_enable_out),
        .O(\data_out[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[6]_i_1__0 
       (.I0(delay_data[62]),
        .I1(p_0_in),
        .O(\data_out[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hCCF0AAAA)) 
    \data_out[7]_i_1__0 
       (.I0(D[3]),
        .I1(delay_data[63]),
        .I2(p_1_in),
        .I3(p_0_in),
        .I4(data_enable_out),
        .O(\data_out[7]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\data_out[0]_i_1__0_n_0 ),
        .Q(\data_out_reg_n_0_[0] ),
        .S(data_out_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data_out[1]_i_1__0_n_0 ),
        .Q(\data_out_reg_n_0_[1] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\data_out[2]_i_1__0_n_0 ),
        .Q(\data_out_reg_n_0_[2] ),
        .S(data_out_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data_out[3]_i_1__0_n_0 ),
        .Q(\data_out_reg_n_0_[3] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\data_out[4]_i_1__0_n_0 ),
        .Q(D[0]),
        .S(data_out_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data_out[5]_i_1__0_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\data_out[6]_i_1__0_n_0 ),
        .Q(D[2]),
        .S(data_out_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data_out[7]_i_1__0_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFCAAAA)) 
    data_valid_out_i_1
       (.I0(fully_framed_valid),
        .I1(data_valid_out),
        .I2(p_0_in),
        .I3(p_1_in),
        .I4(data_enable_out),
        .O(data_valid_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_out_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(data_valid_out_i_1_n_0),
        .Q(fully_framed_valid),
        .R(1'b0));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_reg[48]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_reg[48]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(\data_out_reg[7]_0 [0]),
        .Q(\delay_data_reg[48]_srl7_n_0 ));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_reg[49]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_reg[49]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(\data_out_reg[7]_0 [1]),
        .Q(\delay_data_reg[49]_srl7_n_0 ));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_reg[50]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_reg[50]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(\data_out_reg[7]_0 [2]),
        .Q(\delay_data_reg[50]_srl7_n_0 ));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_reg[51]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_reg[51]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(\data_out_reg[7]_0 [3]),
        .Q(\delay_data_reg[51]_srl7_n_0 ));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_reg[52]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_reg[52]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(\data_out_reg[7]_0 [4]),
        .Q(\delay_data_reg[52]_srl7_n_0 ));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_reg[53]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_reg[53]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(\data_out_reg[7]_0 [5]),
        .Q(\delay_data_reg[53]_srl7_n_0 ));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_reg[54]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_reg[54]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(\data_out_reg[7]_0 [6]),
        .Q(\delay_data_reg[54]_srl7_n_0 ));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_reg[55]_srl7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_reg[55]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(\data_out_reg[7]_0 [7]),
        .Q(\delay_data_reg[55]_srl7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_reg[56] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_reg[48]_srl7_n_0 ),
        .Q(delay_data[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_reg[57] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_reg[49]_srl7_n_0 ),
        .Q(delay_data[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_reg[58] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_reg[50]_srl7_n_0 ),
        .Q(delay_data[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_reg[59] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_reg[51]_srl7_n_0 ),
        .Q(delay_data[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_reg[60] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_reg[52]_srl7_n_0 ),
        .Q(delay_data[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_reg[61] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_reg[53]_srl7_n_0 ),
        .Q(delay_data[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_reg[62] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_reg[54]_srl7_n_0 ),
        .Q(delay_data[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_reg[63] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_reg[55]_srl7_n_0 ),
        .Q(delay_data[63]),
        .R(1'b0));
  (* srl_bus_name = "\nolabel_line181/i_add_preamble/delay_data_valid_reg " *) 
  (* srl_name = "\nolabel_line181/i_add_preamble/delay_data_valid_reg[5]_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \delay_data_valid_reg[5]_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(data_enable_out),
        .CLK(clk125Mhz_OBUF_BUFG),
        .D(data_valid_out),
        .Q(\delay_data_valid_reg[5]_srl6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_valid_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(\delay_data_valid_reg[5]_srl6_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \delay_data_valid_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(data_enable_out),
        .D(p_1_in),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[0]_i_1 
       (.I0(\data_out_reg_n_0_[0] ),
        .I1(fully_framed_enable),
        .I2(Q[0]),
        .O(\dout_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[1]_i_1 
       (.I0(\data_out_reg_n_0_[1] ),
        .I1(fully_framed_enable),
        .I2(Q[1]),
        .O(\dout_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[2]_i_1 
       (.I0(\data_out_reg_n_0_[2] ),
        .I1(fully_framed_enable),
        .I2(Q[2]),
        .O(\dout_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dout[3]_i_1 
       (.I0(\data_out_reg_n_0_[3] ),
        .I1(fully_framed_enable),
        .I2(Q[3]),
        .O(\dout_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hCCAAF0AA)) 
    \dout[4]_i_1 
       (.I0(Q[0]),
        .I1(\data_out_reg_n_0_[0] ),
        .I2(D[0]),
        .I3(fully_framed_enable),
        .I4(\enable_frequency_reg[0] ),
        .O(\dout_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hCCAAF0AA)) 
    \dout[5]_i_1 
       (.I0(Q[1]),
        .I1(\data_out_reg_n_0_[1] ),
        .I2(D[1]),
        .I3(fully_framed_enable),
        .I4(\enable_frequency_reg[0] ),
        .O(\dout_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hCCAAF0AA)) 
    \dout[6]_i_1 
       (.I0(Q[2]),
        .I1(\data_out_reg_n_0_[2] ),
        .I2(D[2]),
        .I3(fully_framed_enable),
        .I4(\enable_frequency_reg[0] ),
        .O(\dout_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hCCAAF0AA)) 
    \dout[7]_i_2 
       (.I0(Q[3]),
        .I1(\data_out_reg_n_0_[3] ),
        .I2(D[3]),
        .I3(fully_framed_enable),
        .I4(\enable_frequency_reg[0] ),
        .O(\dout_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h88C0)) 
    \doutctl[1]_i_2 
       (.I0(fully_framed_valid),
        .I1(ok_to_send),
        .I2(hold_valid),
        .I3(fully_framed_enable),
        .O(\doutctl_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    ok_to_send_i_1
       (.I0(fully_framed_valid),
        .I1(fully_framed_enable),
        .I2(ok_to_send),
        .O(ok_to_send_reg));
endmodule

(* NotValidForBitStream *)
module board_testBC
   (D,
    D_bar,
    start,
    reset_control,
    frequency_select_1,
    frequency_select_2,
    D_program_flag,
    PHI3_flag,
    PHI12_B_flag,
    mannul_change,
    PHI2,
    PHI1,
    CLK_LATCH,
    CLK_CH,
    CLK_DEC,
    CLK_D,
    state_indicator,
    serial,
    load_spi,
    serial_stem,
    load_spi_stem,
    chip_spi_clk,
    spi_clk_out_stem,
    shift_1_write_0,
    SDI,
    SYNC_bar,
    LDAC_bar,
    SCLK,
    CLEAR_bar,
    DATA_SELECT,
    DATA_OUT,
    sys_clk_100M,
    eth_int_b,
    eth_pme_b,
    eth_rst_b,
    eth_mdc,
    eth_mdio,
    eth_rxck,
    eth_rxctl,
    eth_rxd,
    eth_txck,
    eth_txctl,
    eth_txd,
    xa_p,
    xa_n,
    clk125Mhz);
  input D;
  input D_bar;
  input start;
  input reset_control;
  input [1:0]frequency_select_1;
  input [1:0]frequency_select_2;
  input D_program_flag;
  input PHI3_flag;
  input PHI12_B_flag;
  input mannul_change;
  output PHI2;
  output PHI1;
  output CLK_LATCH;
  output CLK_CH;
  output CLK_DEC;
  output CLK_D;
  output [7:0]state_indicator;
  output serial;
  output load_spi;
  output serial_stem;
  output load_spi_stem;
  output chip_spi_clk;
  output spi_clk_out_stem;
  output shift_1_write_0;
  output SDI;
  output SYNC_bar;
  output LDAC_bar;
  output SCLK;
  output CLEAR_bar;
  output [5:0]DATA_SELECT;
  input [11:0]DATA_OUT;
  input sys_clk_100M;
  input eth_int_b;
  input eth_pme_b;
  output eth_rst_b;
  output eth_mdc;
  inout eth_mdio;
  input eth_rxck;
  input eth_rxctl;
  input [3:0]eth_rxd;
  output eth_txck;
  output eth_txctl;
  output [3:0]eth_txd;
  input [3:0]xa_p;
  input [3:0]xa_n;
  output clk125Mhz;

  wire CLEAR_bar;
  wire CLK_CH;
  wire CLK_D;
  wire CLK_DEC;
  wire CLK_LATCH;
  wire [5:0]DATA_SELECT;
  wire [5:0]DATA_SELECT_OBUF;
  wire LDAC_bar;
  wire PHI1;
  wire PHI2;
  wire SCLK;
  wire SDI;
  wire SYNC_bar;
  wire chip_spi_clk;
  wire clk125Mhz;
  wire clk125Mhz_OBUF;
  wire clk125Mhz_OBUF_BUFG;
  wire eth_mdc;
  wire eth_rst_b;
  wire eth_rst_b_OBUF;
  wire eth_rxck;
  wire eth_rxck_IBUF;
  wire eth_rxck_IBUF_BUFG;
  wire eth_rxctl;
  wire eth_rxctl_IBUF;
  wire [3:0]eth_rxd;
  wire [3:0]eth_rxd_IBUF;
  wire eth_txck;
  wire eth_txck_OBUF;
  wire eth_txctl;
  wire eth_txctl_OBUF;
  wire [3:0]eth_txd;
  wire [3:0]eth_txd_OBUF;
  wire [11:0]ethernet_out;
  wire generatorBC_n_1;
  wire generatorBC_n_10;
  wire generatorBC_n_11;
  wire generatorBC_n_12;
  wire generatorBC_n_13;
  wire generatorBC_n_14;
  wire generatorBC_n_2;
  wire load_spi;
  wire load_spi_stem;
  wire load_spi_stem_OBUF;
  wire nolabel_line181_n_9;
  wire psi_clk;
  wire raw_data_user;
  wire reset_control;
  wire reset_control_IBUF;
  wire serial;
  wire serial_stem;
  wire shift_1_write_0;
  wire spi_clk_out_stem;
  wire spi_clk_out_stem_OBUF;
  wire start;
  wire start_IBUF;
  wire start_IBUF_BUFG;
  wire [7:0]state_indicator;
  wire sys_clk_100M;
  wire sys_clk_100M_IBUF;

initial begin
 $sdf_annotate("board_testBC_time_synth.sdf",,,,"tool_control");
end
  OBUFT CLEAR_bar_OBUF_inst
       (.I(1'b0),
        .O(CLEAR_bar),
        .T(1'b1));
  OBUF CLK_CH_OBUF_inst
       (.I(1'b0),
        .O(CLK_CH));
  OBUF CLK_DEC_OBUF_inst
       (.I(1'b0),
        .O(CLK_DEC));
  OBUF CLK_D_OBUF_inst
       (.I(1'b0),
        .O(CLK_D));
  OBUF CLK_LATCH_OBUF_inst
       (.I(1'b0),
        .O(CLK_LATCH));
  OBUF \DATA_SELECT_OBUF[0]_inst 
       (.I(DATA_SELECT_OBUF[0]),
        .O(DATA_SELECT[0]));
  OBUF \DATA_SELECT_OBUF[1]_inst 
       (.I(DATA_SELECT_OBUF[1]),
        .O(DATA_SELECT[1]));
  OBUF \DATA_SELECT_OBUF[2]_inst 
       (.I(DATA_SELECT_OBUF[2]),
        .O(DATA_SELECT[2]));
  OBUF \DATA_SELECT_OBUF[3]_inst 
       (.I(DATA_SELECT_OBUF[3]),
        .O(DATA_SELECT[3]));
  OBUF \DATA_SELECT_OBUF[4]_inst 
       (.I(DATA_SELECT_OBUF[4]),
        .O(DATA_SELECT[4]));
  OBUF \DATA_SELECT_OBUF[5]_inst 
       (.I(DATA_SELECT_OBUF[5]),
        .O(DATA_SELECT[5]));
  OBUFT LDAC_bar_OBUF_inst
       (.I(1'b0),
        .O(LDAC_bar),
        .T(1'b1));
  OBUF PHI1_OBUF_inst
       (.I(1'b0),
        .O(PHI1));
  OBUF PHI2_OBUF_inst
       (.I(1'b0),
        .O(PHI2));
  OBUFT SCLK_OBUF_inst
       (.I(1'b0),
        .O(SCLK),
        .T(1'b1));
  OBUFT SDI_OBUF_inst
       (.I(1'b0),
        .O(SDI),
        .T(1'b1));
  OBUFT SYNC_bar_OBUF_inst
       (.I(1'b0),
        .O(SYNC_bar),
        .T(1'b1));
  OBUF chip_spi_clk_OBUF_inst
       (.I(1'b0),
        .O(chip_spi_clk));
  BUFG clk125Mhz_OBUF_BUFG_inst
       (.I(clk125Mhz_OBUF),
        .O(clk125Mhz_OBUF_BUFG));
  OBUF clk125Mhz_OBUF_inst
       (.I(clk125Mhz_OBUF_BUFG),
        .O(clk125Mhz));
  OBUF eth_mdc_OBUF_inst
       (.I(1'b0),
        .O(eth_mdc));
  OBUF eth_rst_b_OBUF_inst
       (.I(eth_rst_b_OBUF),
        .O(eth_rst_b));
  BUFG eth_rxck_IBUF_BUFG_inst
       (.I(eth_rxck_IBUF),
        .O(eth_rxck_IBUF_BUFG));
  IBUF eth_rxck_IBUF_inst
       (.I(eth_rxck),
        .O(eth_rxck_IBUF));
  IBUF eth_rxctl_IBUF_inst
       (.I(eth_rxctl),
        .O(eth_rxctl_IBUF));
  IBUF \eth_rxd_IBUF[0]_inst 
       (.I(eth_rxd[0]),
        .O(eth_rxd_IBUF[0]));
  IBUF \eth_rxd_IBUF[1]_inst 
       (.I(eth_rxd[1]),
        .O(eth_rxd_IBUF[1]));
  IBUF \eth_rxd_IBUF[2]_inst 
       (.I(eth_rxd[2]),
        .O(eth_rxd_IBUF[2]));
  IBUF \eth_rxd_IBUF[3]_inst 
       (.I(eth_rxd[3]),
        .O(eth_rxd_IBUF[3]));
  OBUF eth_txck_OBUF_inst
       (.I(eth_txck_OBUF),
        .O(eth_txck));
  OBUF eth_txctl_OBUF_inst
       (.I(eth_txctl_OBUF),
        .O(eth_txctl));
  OBUF \eth_txd_OBUF[0]_inst 
       (.I(eth_txd_OBUF[0]),
        .O(eth_txd[0]));
  OBUF \eth_txd_OBUF[1]_inst 
       (.I(eth_txd_OBUF[1]),
        .O(eth_txd[1]));
  OBUF \eth_txd_OBUF[2]_inst 
       (.I(eth_txd_OBUF[2]),
        .O(eth_txd[2]));
  OBUF \eth_txd_OBUF[3]_inst 
       (.I(eth_txd_OBUF[3]),
        .O(eth_txd[3]));
  starterBC generatorBC
       (.CLK(psi_clk),
        .DATA_SELECT_OBUF(DATA_SELECT_OBUF),
        .Q(nolabel_line181_n_9),
        .clk125Mhz_OBUF_BUFG(clk125Mhz_OBUF_BUFG),
        .\data_reg[0] (generatorBC_n_14),
        .\data_reg[1] (generatorBC_n_13),
        .\data_reg[2] (generatorBC_n_12),
        .\data_reg[3] (generatorBC_n_11),
        .\data_reg[4] (generatorBC_n_10),
        .\data_reg[5] (generatorBC_n_2),
        .done_reg(generatorBC_n_1),
        .ethernet_out({ethernet_out[11],ethernet_out[5:0]}),
        .load_spi_stem_OBUF(load_spi_stem_OBUF),
        .raw_data_user(raw_data_user),
        .reset_control_IBUF(reset_control_IBUF),
        .spi_clk_out_stem_OBUF(spi_clk_out_stem_OBUF),
        .start_IBUF_BUFG(start_IBUF_BUFG));
  BUFG \i_reg[31]_i_2 
       (.I(generatorBC_n_1),
        .O(psi_clk));
  OBUF load_spi_OBUF_inst
       (.I(1'b0),
        .O(load_spi));
  OBUF load_spi_stem_OBUF_inst
       (.I(load_spi_stem_OBUF),
        .O(load_spi_stem));
  gigabit_test nolabel_line181
       (.Q(nolabel_line181_n_9),
        .clk125Mhz_OBUF(clk125Mhz_OBUF),
        .clk125Mhz_OBUF_BUFG(clk125Mhz_OBUF_BUFG),
        .eth_rst_b_OBUF(eth_rst_b_OBUF),
        .eth_rxck_IBUF_BUFG(eth_rxck_IBUF_BUFG),
        .eth_rxctl_IBUF(eth_rxctl_IBUF),
        .eth_rxd_IBUF(eth_rxd_IBUF),
        .eth_txck_OBUF(eth_txck_OBUF),
        .eth_txctl_OBUF(eth_txctl_OBUF),
        .eth_txd_OBUF(eth_txd_OBUF),
        .ethernet_out({ethernet_out[11],ethernet_out[5:0]}),
        .\ethernet_out_reg[11] (generatorBC_n_14),
        .\ethernet_out_reg[11]_0 (generatorBC_n_13),
        .\ethernet_out_reg[11]_1 (generatorBC_n_12),
        .\ethernet_out_reg[11]_2 (generatorBC_n_11),
        .\ethernet_out_reg[11]_3 (generatorBC_n_10),
        .\ethernet_out_reg[11]_4 (generatorBC_n_2),
        .raw_data_user(raw_data_user),
        .sys_clk_100M_IBUF(sys_clk_100M_IBUF));
  IBUF reset_control_IBUF_inst
       (.I(reset_control),
        .O(reset_control_IBUF));
  OBUF serial_OBUF_inst
       (.I(1'b0),
        .O(serial));
  OBUF serial_stem_OBUF_inst
       (.I(1'b0),
        .O(serial_stem));
  OBUF shift_1_write_0_OBUF_inst
       (.I(1'b0),
        .O(shift_1_write_0));
  OBUF spi_clk_out_stem_OBUF_inst
       (.I(spi_clk_out_stem_OBUF),
        .O(spi_clk_out_stem));
  BUFG start_IBUF_BUFG_inst
       (.I(start_IBUF),
        .O(start_IBUF_BUFG));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  OBUF \state_indicator_OBUF[0]_inst 
       (.I(1'b0),
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
  OBUFT \state_indicator_OBUF[6]_inst 
       (.I(1'b0),
        .O(state_indicator[6]),
        .T(1'b1));
  OBUF \state_indicator_OBUF[7]_inst 
       (.I(1'b0),
        .O(state_indicator[7]));
  IBUF sys_clk_100M_IBUF_inst
       (.I(sys_clk_100M),
        .O(sys_clk_100M_IBUF));
endmodule

module byte_data
   (data_enable,
    raw_data_user,
    data_valid,
    Q,
    \crc_reg[1] ,
    crc,
    E,
    SS,
    \crc_reg[5] ,
    v_crc17_out,
    \crc_reg[6] ,
    v_crc11_out,
    v_crc14_out,
    \crc_reg[10] ,
    \crc_reg[7] ,
    D,
    \crc_reg[13] ,
    \crc_reg[1]_0 ,
    \crc_reg[2] ,
    \crc_reg[3] ,
    \crc_reg[4] ,
    \data_out_reg[7] ,
    adv_data_reg,
    clk125Mhz_OBUF_BUFG,
    \ethernet_out_reg[11] ,
    ethernet_out,
    \ethernet_out_reg[11]_0 ,
    \ethernet_out_reg[11]_1 ,
    \ethernet_out_reg[11]_2 ,
    \ethernet_out_reg[11]_3 ,
    \ethernet_out_reg[11]_4 ,
    start,
    \trailer_left_reg[3] ,
    \crc_reg[31] ,
    v_crc1,
    \crc_reg[2]_0 ,
    \crc_reg[4]_0 ,
    \crc_reg[5]_0 ,
    \crc_reg[7]_0 ,
    \crc_reg[3]_0 );
  output data_enable;
  output raw_data_user;
  output data_valid;
  output [0:0]Q;
  output \crc_reg[1] ;
  output crc;
  output [0:0]E;
  output [0:0]SS;
  output \crc_reg[5] ;
  output v_crc17_out;
  output \crc_reg[6] ;
  output v_crc11_out;
  output v_crc14_out;
  output [5:0]\crc_reg[10] ;
  output \crc_reg[7] ;
  output [15:0]D;
  output \crc_reg[13] ;
  output \crc_reg[1]_0 ;
  output \crc_reg[2] ;
  output \crc_reg[3] ;
  output \crc_reg[4] ;
  output [7:0]\data_out_reg[7] ;
  input adv_data_reg;
  input clk125Mhz_OBUF_BUFG;
  input \ethernet_out_reg[11] ;
  input [6:0]ethernet_out;
  input \ethernet_out_reg[11]_0 ;
  input \ethernet_out_reg[11]_1 ;
  input \ethernet_out_reg[11]_2 ;
  input \ethernet_out_reg[11]_3 ;
  input \ethernet_out_reg[11]_4 ;
  input start;
  input [0:0]\trailer_left_reg[3] ;
  input [18:0]\crc_reg[31] ;
  input v_crc1;
  input \crc_reg[2]_0 ;
  input \crc_reg[4]_0 ;
  input \crc_reg[5]_0 ;
  input \crc_reg[7]_0 ;
  input \crc_reg[3]_0 ;

  wire [15:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire adv_data_reg;
  wire clk125Mhz_OBUF_BUFG;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_10_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[11]_i_2_n_0 ;
  wire \counter[11]_i_3_n_0 ;
  wire \counter[11]_i_4_n_0 ;
  wire \counter[11]_i_5_n_0 ;
  wire \counter[11]_i_7_n_0 ;
  wire \counter[11]_i_8_n_0 ;
  wire \counter[11]_i_9_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg[11]_i_6_n_2 ;
  wire \counter_reg[11]_i_6_n_3 ;
  wire \counter_reg[11]_i_6_n_5 ;
  wire \counter_reg[11]_i_6_n_6 ;
  wire \counter_reg[11]_i_6_n_7 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[4]_i_2_n_4 ;
  wire \counter_reg[4]_i_2_n_5 ;
  wire \counter_reg[4]_i_2_n_6 ;
  wire \counter_reg[4]_i_2_n_7 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_4 ;
  wire \counter_reg[8]_i_2_n_5 ;
  wire \counter_reg[8]_i_2_n_6 ;
  wire \counter_reg[8]_i_2_n_7 ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire crc;
  wire \crc[10]_i_2_n_0 ;
  wire \crc[11]_i_2_n_0 ;
  wire \crc[12]_i_2_n_0 ;
  wire \crc[8]_i_2_n_0 ;
  wire [5:0]\crc_reg[10] ;
  wire \crc_reg[13] ;
  wire \crc_reg[1] ;
  wire \crc_reg[1]_0 ;
  wire \crc_reg[2] ;
  wire \crc_reg[2]_0 ;
  wire [18:0]\crc_reg[31] ;
  wire \crc_reg[3] ;
  wire \crc_reg[3]_0 ;
  wire \crc_reg[4] ;
  wire \crc_reg[4]_0 ;
  wire \crc_reg[5] ;
  wire \crc_reg[5]_0 ;
  wire \crc_reg[6] ;
  wire \crc_reg[7] ;
  wire \crc_reg[7]_0 ;
  wire \data[0]_i_1_n_0 ;
  wire \data[0]_i_4_n_0 ;
  wire \data[0]_i_5_n_0 ;
  wire \data[0]_i_7_n_0 ;
  wire \data[0]_i_8_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[1]_i_4_n_0 ;
  wire \data[1]_i_5_n_0 ;
  wire \data[1]_i_7_n_0 ;
  wire \data[1]_i_8_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[2]_i_4_n_0 ;
  wire \data[2]_i_5_n_0 ;
  wire \data[2]_i_7_n_0 ;
  wire \data[2]_i_8_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[3]_i_4_n_0 ;
  wire \data[3]_i_5_n_0 ;
  wire \data[3]_i_7_n_0 ;
  wire \data[3]_i_8_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[4]_i_4_n_0 ;
  wire \data[4]_i_5_n_0 ;
  wire \data[4]_i_7_n_0 ;
  wire \data[4]_i_8_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[5]_i_4_n_0 ;
  wire \data[5]_i_5_n_0 ;
  wire \data[5]_i_7_n_0 ;
  wire \data[5]_i_8_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[6]_i_4_n_0 ;
  wire \data[6]_i_5_n_0 ;
  wire \data[7]_i_10_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[7]_i_3_n_0 ;
  wire \data[7]_i_4_n_0 ;
  wire \data[7]_i_6_n_0 ;
  wire \data[7]_i_7_n_0 ;
  wire \data[7]_i_8_n_0 ;
  wire \data[7]_i_9_n_0 ;
  wire data_enable;
  wire [7:0]\data_out_reg[7] ;
  wire \data_reg[0]_i_3_n_0 ;
  wire \data_reg[0]_i_6_n_0 ;
  wire \data_reg[1]_i_3_n_0 ;
  wire \data_reg[1]_i_6_n_0 ;
  wire \data_reg[2]_i_3_n_0 ;
  wire \data_reg[2]_i_6_n_0 ;
  wire \data_reg[3]_i_3_n_0 ;
  wire \data_reg[3]_i_6_n_0 ;
  wire \data_reg[4]_i_3_n_0 ;
  wire \data_reg[4]_i_6_n_0 ;
  wire \data_reg[5]_i_3_n_0 ;
  wire \data_reg[5]_i_6_n_0 ;
  wire \data_reg[6]_i_3_n_0 ;
  wire \data_reg[7]_i_5_n_0 ;
  wire data_user_i_1_n_0;
  wire data_user_i_2_n_0;
  wire data_user_i_3_n_0;
  wire data_user_i_4_n_0;
  wire data_valid;
  wire data_valid_i_1_n_0;
  wire data_valid_i_2_n_0;
  wire data_valid_i_3_n_0;
  wire data_valid_i_4_n_0;
  wire [6:0]ethernet_out;
  wire \ethernet_out_reg[11] ;
  wire \ethernet_out_reg[11]_0 ;
  wire \ethernet_out_reg[11]_1 ;
  wire \ethernet_out_reg[11]_2 ;
  wire \ethernet_out_reg[11]_3 ;
  wire \ethernet_out_reg[11]_4 ;
  wire p_1_in;
  wire p_1_in3_in;
  wire raw_data_user;
  wire start;
  wire start_internal_i_1_n_0;
  wire start_internal_reg_n_0;
  wire [0:0]\trailer_left_reg[3] ;
  wire v_crc1;
  wire v_crc110_out;
  wire v_crc113_out;
  wire v_crc116_out;
  wire v_crc119_out;
  wire v_crc11_out;
  wire v_crc14_out;
  wire v_crc17_out;
  wire [3:2]\NLW_counter_reg[11]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_6_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(Q),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[10]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[11]_i_6_n_6 ),
        .O(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE00FEFFFE00)) 
    \counter[11]_i_1 
       (.I0(start_internal_reg_n_0),
        .I1(\counter[11]_i_3_n_0 ),
        .I2(start),
        .I3(adv_data_reg),
        .I4(\counter[11]_i_4_n_0 ),
        .I5(\counter_reg_n_0_[11] ),
        .O(\counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[11]_i_10 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\counter[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[11]_i_2 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[11]_i_6_n_5 ),
        .O(\counter[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[11]_i_3 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter[11]_i_7_n_0 ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[11] ),
        .O(\counter[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \counter[11]_i_4 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter[11]_i_8_n_0 ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\counter_reg_n_0_[7] ),
        .O(\counter[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \counter[11]_i_5 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter[11]_i_9_n_0 ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\counter_reg_n_0_[7] ),
        .O(\counter[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \counter[11]_i_7 
       (.I0(Q),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter[11]_i_10_n_0 ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[5] ),
        .I5(\counter_reg_n_0_[10] ),
        .O(\counter[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \counter[11]_i_8 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(Q),
        .O(\counter[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \counter[11]_i_9 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(Q),
        .O(\counter[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[4]_i_2_n_7 ),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[2]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[4]_i_2_n_6 ),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[3]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[4]_i_2_n_5 ),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[4]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[4]_i_2_n_4 ),
        .O(\counter[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[5]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[8]_i_2_n_7 ),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[6]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[8]_i_2_n_6 ),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[7]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[8]_i_2_n_5 ),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[8]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[8]_i_2_n_4 ),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter[9]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[11]_i_5_n_0 ),
        .I2(\counter_reg[11]_i_6_n_7 ),
        .O(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[10]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[11]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[11] ),
        .R(1'b0));
  CARRY4 \counter_reg[11]_i_6 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\NLW_counter_reg[11]_i_6_CO_UNCONNECTED [3:2],\counter_reg[11]_i_6_n_2 ,\counter_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[11]_i_6_O_UNCONNECTED [3],\counter_reg[11]_i_6_n_5 ,\counter_reg[11]_i_6_n_6 ,\counter_reg[11]_i_6_n_7 }),
        .S({1'b0,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[3]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(Q),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_2_n_4 ,\counter_reg[4]_i_2_n_5 ,\counter_reg[4]_i_2_n_6 ,\counter_reg[4]_i_2_n_7 }),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[5]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[7]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_2_n_4 ,\counter_reg[8]_i_2_n_5 ,\counter_reg[8]_i_2_n_6 ,\counter_reg[8]_i_2_n_7 }),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\counter[11]_i_1_n_0 ),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h6996FFFF)) 
    \crc[0]_i_1 
       (.I0(\crc_reg[31] [17]),
        .I1(p_1_in),
        .I2(\crc_reg[31] [11]),
        .I3(\crc_reg[10] [5]),
        .I4(data_valid),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hC33CAAAA3CC3AAAA)) 
    \crc[10]_i_1 
       (.I0(\crc_reg[2]_0 ),
        .I1(v_crc11_out),
        .I2(\crc_reg[31] [11]),
        .I3(\crc_reg[10] [5]),
        .I4(data_valid),
        .I5(\crc[10]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc[10]_i_2 
       (.I0(\crc_reg[2]_0 ),
        .I1(v_crc11_out),
        .I2(v_crc14_out),
        .I3(v_crc110_out),
        .I4(\crc_reg[31] [13]),
        .I5(\crc_reg[10] [3]),
        .O(\crc[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3ACACA3ACA3A3ACA)) 
    \crc[11]_i_1 
       (.I0(\crc_reg[3]_0 ),
        .I1(\crc[11]_i_2_n_0 ),
        .I2(data_valid),
        .I3(v_crc11_out),
        .I4(\crc_reg[31] [11]),
        .I5(\crc_reg[10] [5]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc[11]_i_2 
       (.I0(v_crc116_out),
        .I1(v_crc110_out),
        .I2(v_crc17_out),
        .I3(v_crc11_out),
        .I4(\crc_reg[3]_0 ),
        .I5(v_crc1),
        .O(\crc[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3ACACA3ACA3A3ACA)) 
    \crc[12]_i_1 
       (.I0(\crc_reg[4]_0 ),
        .I1(\crc[12]_i_2_n_0 ),
        .I2(data_valid),
        .I3(v_crc11_out),
        .I4(\crc_reg[31] [11]),
        .I5(\crc_reg[10] [5]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc[12]_i_2 
       (.I0(\crc_reg[4]_0 ),
        .I1(v_crc1),
        .I2(v_crc14_out),
        .I3(v_crc17_out),
        .I4(v_crc113_out),
        .I5(v_crc116_out),
        .O(\crc[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc[13]_i_2 
       (.I0(\crc_reg[5]_0 ),
        .I1(v_crc11_out),
        .I2(v_crc14_out),
        .I3(v_crc110_out),
        .I4(\crc_reg[31] [13]),
        .I5(\crc_reg[10] [3]),
        .O(\crc_reg[13] ));
  LUT6 #(
    .INIT(64'h96696996AAAAAAAA)) 
    \crc[15]_i_1 
       (.I0(\crc_reg[7]_0 ),
        .I1(v_crc1),
        .I2(v_crc14_out),
        .I3(v_crc17_out),
        .I4(v_crc110_out),
        .I5(data_valid),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \crc[15]_i_2 
       (.I0(\crc_reg[10] [2]),
        .I1(\crc_reg[31] [14]),
        .O(v_crc110_out));
  LUT6 #(
    .INIT(64'hB77B48847BB78448)) 
    \crc[16]_i_1 
       (.I0(v_crc119_out),
        .I1(data_valid),
        .I2(v_crc14_out),
        .I3(v_crc11_out),
        .I4(\crc_reg[31] [1]),
        .I5(v_crc17_out),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h96696996CCCCCCCC)) 
    \crc[17]_i_1 
       (.I0(v_crc11_out),
        .I1(\crc_reg[31] [2]),
        .I2(v_crc1),
        .I3(v_crc14_out),
        .I4(v_crc116_out),
        .I5(data_valid),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \crc[1]_i_1 
       (.I0(\crc_reg[31] [17]),
        .I1(p_1_in),
        .I2(\crc_reg[31] [11]),
        .I3(\crc_reg[10] [5]),
        .I4(v_crc116_out),
        .O(\crc_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \crc[20]_i_1 
       (.I0(data_valid),
        .I1(\crc_reg[10] [1]),
        .I2(\crc_reg[31] [15]),
        .I3(\crc_reg[31] [3]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \crc[21]_i_1 
       (.I0(data_valid),
        .I1(p_1_in3_in),
        .I2(\crc_reg[31] [16]),
        .I3(\crc_reg[31] [4]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h96F069F0)) 
    \crc[23]_i_1 
       (.I0(\crc_reg[31] [12]),
        .I1(\crc_reg[10] [4]),
        .I2(\crc_reg[31] [5]),
        .I3(data_valid),
        .I4(v_crc119_out),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h9669F0F0)) 
    \crc[24]_i_1 
       (.I0(\crc_reg[31] [13]),
        .I1(\crc_reg[10] [3]),
        .I2(\crc_reg[31] [6]),
        .I3(v_crc116_out),
        .I4(data_valid),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hB47878B478B4B478)) 
    \crc[26]_i_1 
       (.I0(v_crc119_out),
        .I1(data_valid),
        .I2(\crc_reg[31] [7]),
        .I3(v_crc17_out),
        .I4(\crc_reg[31] [14]),
        .I5(\crc_reg[10] [2]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc[26]_i_2 
       (.I0(\crc_reg[10] [5]),
        .I1(\crc_reg[31] [11]),
        .I2(p_1_in),
        .I3(\crc_reg[31] [17]),
        .O(v_crc119_out));
  LUT6 #(
    .INIT(64'h96696996AAAAAAAA)) 
    \crc[27]_i_1 
       (.I0(\crc_reg[31] [8]),
        .I1(p_1_in3_in),
        .I2(\crc_reg[31] [16]),
        .I3(v_crc17_out),
        .I4(v_crc116_out),
        .I5(data_valid),
        .O(D[13]));
  LUT2 #(
    .INIT(4'h9)) 
    \crc[27]_i_2 
       (.I0(\crc_reg[10] [1]),
        .I1(\crc_reg[31] [15]),
        .O(v_crc17_out));
  LUT4 #(
    .INIT(16'h9669)) 
    \crc[27]_i_3 
       (.I0(\crc_reg[10] [4]),
        .I1(\crc_reg[31] [18]),
        .I2(\crc_reg[10] [0]),
        .I3(\crc_reg[31] [12]),
        .O(v_crc116_out));
  LUT6 #(
    .INIT(64'h96696996AAAAAAAA)) 
    \crc[28]_i_1 
       (.I0(\crc_reg[31] [9]),
        .I1(v_crc11_out),
        .I2(v_crc14_out),
        .I3(\crc_reg[31] [13]),
        .I4(\crc_reg[10] [3]),
        .I5(data_valid),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \crc[28]_i_2 
       (.I0(p_1_in3_in),
        .I1(\crc_reg[31] [16]),
        .O(v_crc14_out));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \crc[29]_i_3 
       (.I0(p_1_in),
        .I1(\crc_reg[31] [17]),
        .O(v_crc11_out));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc[2]_i_1 
       (.I0(v_crc11_out),
        .I1(\crc_reg[31] [11]),
        .I2(\crc_reg[10] [5]),
        .I3(\crc_reg[10] [3]),
        .I4(\crc_reg[31] [13]),
        .I5(v_crc116_out),
        .O(\crc_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \crc[31]_i_1 
       (.I0(data_valid),
        .I1(\trailer_left_reg[3] ),
        .I2(data_enable),
        .O(crc));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hD728)) 
    \crc[31]_i_2 
       (.I0(data_valid),
        .I1(p_1_in3_in),
        .I2(\crc_reg[31] [16]),
        .I3(\crc_reg[31] [10]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \crc[3]_i_1 
       (.I0(\crc_reg[10] [2]),
        .I1(\crc_reg[31] [14]),
        .I2(\crc_reg[10] [3]),
        .I3(\crc_reg[31] [13]),
        .I4(v_crc116_out),
        .O(\crc_reg[3] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc[4]_i_1 
       (.I0(v_crc119_out),
        .I1(\crc_reg[10] [3]),
        .I2(\crc_reg[31] [13]),
        .I3(\crc_reg[31] [14]),
        .I4(\crc_reg[10] [2]),
        .I5(v_crc17_out),
        .O(\crc_reg[4] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc[5]_i_1 
       (.I0(v_crc119_out),
        .I1(p_1_in3_in),
        .I2(\crc_reg[31] [16]),
        .I3(v_crc17_out),
        .I4(v_crc110_out),
        .I5(v_crc116_out),
        .O(\crc_reg[5] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc[6]_i_1 
       (.I0(v_crc11_out),
        .I1(v_crc14_out),
        .I2(v_crc17_out),
        .I3(\crc_reg[10] [3]),
        .I4(\crc_reg[31] [13]),
        .I5(v_crc116_out),
        .O(\crc_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \crc[7]_i_1 
       (.I0(data_enable),
        .I1(\trailer_left_reg[3] ),
        .I2(data_valid),
        .O(\crc_reg[1] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc[7]_i_2 
       (.I0(v_crc119_out),
        .I1(v_crc113_out),
        .I2(v_crc110_out),
        .I3(v_crc14_out),
        .I4(v_crc11_out),
        .I5(v_crc1),
        .O(\crc_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \crc[7]_i_3 
       (.I0(\crc_reg[10] [3]),
        .I1(\crc_reg[31] [13]),
        .O(v_crc113_out));
  LUT6 #(
    .INIT(64'h3ACACA3ACA3A3ACA)) 
    \crc[8]_i_1 
       (.I0(\crc_reg[31] [0]),
        .I1(\crc[8]_i_2_n_0 ),
        .I2(data_valid),
        .I3(v_crc11_out),
        .I4(\crc_reg[31] [11]),
        .I5(\crc_reg[10] [5]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc[8]_i_2 
       (.I0(v_crc116_out),
        .I1(v_crc110_out),
        .I2(v_crc17_out),
        .I3(v_crc11_out),
        .I4(\crc_reg[31] [0]),
        .I5(v_crc1),
        .O(\crc[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data[0]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\ethernet_out_reg[11] ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\data_reg[0]_i_3_n_0 ),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \data[0]_i_4 
       (.I0(\data[7]_i_7_n_0 ),
        .I1(Q),
        .I2(\data[7]_i_8_n_0 ),
        .I3(ethernet_out[0]),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\data_reg[0]_i_6_n_0 ),
        .O(\data[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data[0]_i_5 
       (.I0(\data[7]_i_6_n_0 ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(ethernet_out[6]),
        .I3(Q),
        .I4(ethernet_out[0]),
        .O(\data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA00000303CFE)) 
    \data[0]_i_7 
       (.I0(ethernet_out[0]),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8B80B8808B83B08C)) 
    \data[0]_i_8 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\data[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data[1]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\ethernet_out_reg[11]_0 ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\data_reg[1]_i_3_n_0 ),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \data[1]_i_4 
       (.I0(\data[7]_i_7_n_0 ),
        .I1(Q),
        .I2(\data[7]_i_8_n_0 ),
        .I3(ethernet_out[1]),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\data_reg[1]_i_6_n_0 ),
        .O(\data[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data[1]_i_5 
       (.I0(\data[7]_i_6_n_0 ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(ethernet_out[6]),
        .I3(Q),
        .I4(ethernet_out[1]),
        .O(\data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA888A88803333002)) 
    \data[1]_i_7 
       (.I0(ethernet_out[1]),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA800030003FC)) 
    \data[1]_i_8 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data[2]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\ethernet_out_reg[11]_1 ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\data_reg[2]_i_3_n_0 ),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \data[2]_i_4 
       (.I0(\data[7]_i_7_n_0 ),
        .I1(Q),
        .I2(\data[7]_i_8_n_0 ),
        .I3(ethernet_out[2]),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\data_reg[2]_i_6_n_0 ),
        .O(\data[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data[2]_i_5 
       (.I0(\data[7]_i_6_n_0 ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(ethernet_out[6]),
        .I3(Q),
        .I4(ethernet_out[2]),
        .O(\data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAA80AA8003300032)) 
    \data[2]_i_7 
       (.I0(ethernet_out[2]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8B888F83888380B0)) 
    \data[2]_i_8 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[1] ),
        .O(\data[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data[3]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\ethernet_out_reg[11]_2 ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\data_reg[3]_i_3_n_0 ),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \data[3]_i_4 
       (.I0(\data[7]_i_7_n_0 ),
        .I1(Q),
        .I2(\data[7]_i_8_n_0 ),
        .I3(ethernet_out[3]),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\data_reg[3]_i_6_n_0 ),
        .O(\data[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data[3]_i_5 
       (.I0(\data[7]_i_6_n_0 ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(ethernet_out[6]),
        .I3(Q),
        .I4(ethernet_out[3]),
        .O(\data[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8880B88383B38F8E)) 
    \data[3]_i_7 
       (.I0(ethernet_out[3]),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\data[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A88803300033)) 
    \data[3]_i_8 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data[4]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\ethernet_out_reg[11]_3 ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\data_reg[4]_i_3_n_0 ),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \data[4]_i_4 
       (.I0(\data[7]_i_7_n_0 ),
        .I1(Q),
        .I2(\data[7]_i_8_n_0 ),
        .I3(ethernet_out[4]),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\data_reg[4]_i_6_n_0 ),
        .O(\data[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data[4]_i_5 
       (.I0(\data[7]_i_6_n_0 ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(ethernet_out[6]),
        .I3(Q),
        .I4(ethernet_out[4]),
        .O(\data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888880BC80838C82)) 
    \data[4]_i_7 
       (.I0(ethernet_out[4]),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\data[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8883888C888FB383)) 
    \data[4]_i_8 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\data[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data[5]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\ethernet_out_reg[11]_4 ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\data_reg[5]_i_3_n_0 ),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \data[5]_i_4 
       (.I0(\data[7]_i_7_n_0 ),
        .I1(Q),
        .I2(\data[7]_i_8_n_0 ),
        .I3(ethernet_out[5]),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\data_reg[5]_i_6_n_0 ),
        .O(\data[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data[5]_i_5 
       (.I0(\data[7]_i_6_n_0 ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(ethernet_out[6]),
        .I3(Q),
        .I4(ethernet_out[5]),
        .O(\data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8880BB83B3B3838E)) 
    \data[5]_i_7 
       (.I0(ethernet_out[5]),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA80003000330)) 
    \data[5]_i_8 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data[6]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(ethernet_out[6]),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\data[6]_i_2_n_0 ),
        .O(\data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data[6]_i_2 
       (.I0(\data[7]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\data[7]_i_4_n_0 ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\data_reg[6]_i_3_n_0 ),
        .O(\data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA000C0000CCE)) 
    \data[6]_i_4 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA800CC00C0F3)) 
    \data[6]_i_5 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data[7]_i_1 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(ethernet_out[6]),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\data[7]_i_2_n_0 ),
        .O(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8880FC0C333F)) 
    \data[7]_i_10 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\data[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data[7]_i_2 
       (.I0(\data[7]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\data[7]_i_4_n_0 ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\data_reg[7]_i_5_n_0 ),
        .O(\data[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data[7]_i_3 
       (.I0(\data[7]_i_6_n_0 ),
        .I1(Q),
        .I2(\counter_reg_n_0_[10] ),
        .I3(ethernet_out[6]),
        .O(\data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \data[7]_i_4 
       (.I0(\data[7]_i_7_n_0 ),
        .I1(Q),
        .I2(\data[7]_i_8_n_0 ),
        .I3(ethernet_out[6]),
        .O(\data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00000000)) 
    \data[7]_i_6 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(ethernet_out[6]),
        .O(\data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF77FFFFF00000000)) 
    \data[7]_i_7 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(ethernet_out[6]),
        .O(\data[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \data[7]_i_8 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[5] ),
        .O(\data[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8880B8838383838E)) 
    \data[7]_i_9 
       (.I0(ethernet_out[6]),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\data[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    data_enable_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(adv_data_reg),
        .Q(data_enable),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA30)) 
    \data_out[0]_i_1 
       (.I0(\crc_reg[10] [0]),
        .I1(\crc_reg[31] [18]),
        .I2(\trailer_left_reg[3] ),
        .I3(data_valid),
        .O(\data_out_reg[7] [0]));
  LUT4 #(
    .INIT(16'hAA30)) 
    \data_out[1]_i_1 
       (.I0(p_1_in),
        .I1(\crc_reg[31] [17]),
        .I2(\trailer_left_reg[3] ),
        .I3(data_valid),
        .O(\data_out_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \data_out[2]_i_1 
       (.I0(p_1_in3_in),
        .I1(\crc_reg[31] [16]),
        .I2(\trailer_left_reg[3] ),
        .I3(data_valid),
        .O(\data_out_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \data_out[3]_i_1 
       (.I0(\crc_reg[10] [1]),
        .I1(\crc_reg[31] [15]),
        .I2(\trailer_left_reg[3] ),
        .I3(data_valid),
        .O(\data_out_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \data_out[4]_i_1 
       (.I0(\crc_reg[10] [2]),
        .I1(\crc_reg[31] [14]),
        .I2(\trailer_left_reg[3] ),
        .I3(data_valid),
        .O(\data_out_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \data_out[5]_i_1 
       (.I0(\crc_reg[10] [3]),
        .I1(\crc_reg[31] [13]),
        .I2(\trailer_left_reg[3] ),
        .I3(data_valid),
        .O(\data_out_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \data_out[6]_i_1 
       (.I0(\crc_reg[10] [4]),
        .I1(\crc_reg[31] [12]),
        .I2(\trailer_left_reg[3] ),
        .I3(data_valid),
        .O(\data_out_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hAA30)) 
    \data_out[7]_i_1 
       (.I0(\crc_reg[10] [5]),
        .I1(\crc_reg[31] [11]),
        .I2(\trailer_left_reg[3] ),
        .I3(data_valid),
        .O(\data_out_reg[7] [7]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data[0]_i_1_n_0 ),
        .Q(\crc_reg[10] [0]),
        .R(1'b0));
  MUXF7 \data_reg[0]_i_3 
       (.I0(\data[0]_i_4_n_0 ),
        .I1(\data[0]_i_5_n_0 ),
        .O(\data_reg[0]_i_3_n_0 ),
        .S(\counter_reg_n_0_[6] ));
  MUXF7 \data_reg[0]_i_6 
       (.I0(\data[0]_i_7_n_0 ),
        .I1(\data[0]_i_8_n_0 ),
        .O(\data_reg[0]_i_6_n_0 ),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  MUXF7 \data_reg[1]_i_3 
       (.I0(\data[1]_i_4_n_0 ),
        .I1(\data[1]_i_5_n_0 ),
        .O(\data_reg[1]_i_3_n_0 ),
        .S(\counter_reg_n_0_[6] ));
  MUXF7 \data_reg[1]_i_6 
       (.I0(\data[1]_i_7_n_0 ),
        .I1(\data[1]_i_8_n_0 ),
        .O(\data_reg[1]_i_6_n_0 ),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data[2]_i_1_n_0 ),
        .Q(p_1_in3_in),
        .R(1'b0));
  MUXF7 \data_reg[2]_i_3 
       (.I0(\data[2]_i_4_n_0 ),
        .I1(\data[2]_i_5_n_0 ),
        .O(\data_reg[2]_i_3_n_0 ),
        .S(\counter_reg_n_0_[6] ));
  MUXF7 \data_reg[2]_i_6 
       (.I0(\data[2]_i_7_n_0 ),
        .I1(\data[2]_i_8_n_0 ),
        .O(\data_reg[2]_i_6_n_0 ),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data[3]_i_1_n_0 ),
        .Q(\crc_reg[10] [1]),
        .R(1'b0));
  MUXF7 \data_reg[3]_i_3 
       (.I0(\data[3]_i_4_n_0 ),
        .I1(\data[3]_i_5_n_0 ),
        .O(\data_reg[3]_i_3_n_0 ),
        .S(\counter_reg_n_0_[6] ));
  MUXF7 \data_reg[3]_i_6 
       (.I0(\data[3]_i_7_n_0 ),
        .I1(\data[3]_i_8_n_0 ),
        .O(\data_reg[3]_i_6_n_0 ),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data[4]_i_1_n_0 ),
        .Q(\crc_reg[10] [2]),
        .R(1'b0));
  MUXF7 \data_reg[4]_i_3 
       (.I0(\data[4]_i_4_n_0 ),
        .I1(\data[4]_i_5_n_0 ),
        .O(\data_reg[4]_i_3_n_0 ),
        .S(\counter_reg_n_0_[6] ));
  MUXF7 \data_reg[4]_i_6 
       (.I0(\data[4]_i_7_n_0 ),
        .I1(\data[4]_i_8_n_0 ),
        .O(\data_reg[4]_i_6_n_0 ),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data[5]_i_1_n_0 ),
        .Q(\crc_reg[10] [3]),
        .R(1'b0));
  MUXF7 \data_reg[5]_i_3 
       (.I0(\data[5]_i_4_n_0 ),
        .I1(\data[5]_i_5_n_0 ),
        .O(\data_reg[5]_i_3_n_0 ),
        .S(\counter_reg_n_0_[6] ));
  MUXF7 \data_reg[5]_i_6 
       (.I0(\data[5]_i_7_n_0 ),
        .I1(\data[5]_i_8_n_0 ),
        .O(\data_reg[5]_i_6_n_0 ),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data[6]_i_1_n_0 ),
        .Q(\crc_reg[10] [4]),
        .R(1'b0));
  MUXF7 \data_reg[6]_i_3 
       (.I0(\data[6]_i_4_n_0 ),
        .I1(\data[6]_i_5_n_0 ),
        .O(\data_reg[6]_i_3_n_0 ),
        .S(Q));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\data[7]_i_1_n_0 ),
        .Q(\crc_reg[10] [5]),
        .R(1'b0));
  MUXF7 \data_reg[7]_i_5 
       (.I0(\data[7]_i_9_n_0 ),
        .I1(\data[7]_i_10_n_0 ),
        .O(\data_reg[7]_i_5_n_0 ),
        .S(Q));
  LUT3 #(
    .INIT(8'h74)) 
    data_user_i_1
       (.I0(\counter_reg_n_0_[10] ),
        .I1(data_user_i_2_n_0),
        .I2(raw_data_user),
        .O(data_user_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    data_user_i_2
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(data_user_i_3_n_0),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[11] ),
        .O(data_user_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000004000)) 
    data_user_i_3
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(data_user_i_4_n_0),
        .I4(\counter_reg_n_0_[4] ),
        .I5(Q),
        .O(data_user_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    data_user_i_4
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .O(data_user_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_user_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(data_user_i_1_n_0),
        .Q(raw_data_user),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFDF0010)) 
    data_valid_i_1
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(data_valid_i_2_n_0),
        .I3(\counter_reg_n_0_[11] ),
        .I4(data_valid),
        .O(data_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    data_valid_i_2
       (.I0(\counter_reg_n_0_[9] ),
        .I1(data_valid_i_3_n_0),
        .I2(\counter_reg_n_0_[10] ),
        .I3(data_valid_i_4_n_0),
        .I4(\counter_reg_n_0_[6] ),
        .I5(\counter_reg_n_0_[8] ),
        .O(data_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    data_valid_i_3
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(Q),
        .O(data_valid_i_3_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    data_valid_i_4
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(Q),
        .O(data_valid_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(data_valid_i_1_n_0),
        .Q(data_valid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBBB0)) 
    start_internal_i_1
       (.I0(\counter[11]_i_3_n_0 ),
        .I1(adv_data_reg),
        .I2(start),
        .I3(start_internal_reg_n_0),
        .O(start_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_internal_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(start_internal_i_1_n_0),
        .Q(start_internal_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \trailer_left[3]_i_1 
       (.I0(data_enable),
        .I1(data_valid),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \trailer_left[3]_i_2 
       (.I0(data_enable),
        .I1(\trailer_left_reg[3] ),
        .O(E));
endmodule

module clk_booster
   (clk125Mhz_OBUF_BUFG);
  input clk125Mhz_OBUF_BUFG;

  wire bost1_n_0;
  wire clk125Mhz_OBUF_BUFG;
  wire locked;

  clk_wiz_100M_to_400M bost1
       (.clk_in1(clk125Mhz_OBUF_BUFG),
        .clk_out1(bost1_n_0),
        .locked(locked));
endmodule

module clk_wiz_100M_to_400M
   (clk_out1,
    locked,
    clk_in1);
  output clk_out1;
  output locked;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;
  wire locked;

  clk_wiz_100M_to_400M_clk_wiz_100M_to_400M_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked));
endmodule

(* ORIG_REF_NAME = "clk_wiz_100M_to_400M_clk_wiz" *) 
module clk_wiz_100M_to_400M_clk_wiz_100M_to_400M_clk_wiz
   (clk_out1,
    locked,
    clk_in1);
  output clk_out1;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_100M_to_400M;
  wire clkfbout_buf_clk_wiz_100M_to_400M;
  wire clkfbout_clk_wiz_100M_to_400M;
  wire locked;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_100M_to_400M),
        .O(clkfbout_buf_clk_wiz_100M_to_400M));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_100M_to_400M),
        .O(clk_out1));
  (* box_type = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(12),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(3),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("BUF_IN"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_100M_to_400M),
        .CLKFBOUT(clkfbout_clk_wiz_100M_to_400M),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_out1_clk_wiz_100M_to_400M),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module gigabit_test
   (eth_txd_OBUF,
    eth_txctl_OBUF,
    eth_txck_OBUF,
    clk125Mhz_OBUF,
    eth_rst_b_OBUF,
    raw_data_user,
    Q,
    clk125Mhz_OBUF_BUFG,
    eth_rxck_IBUF_BUFG,
    eth_rxctl_IBUF,
    eth_rxd_IBUF,
    sys_clk_100M_IBUF,
    \ethernet_out_reg[11] ,
    ethernet_out,
    \ethernet_out_reg[11]_0 ,
    \ethernet_out_reg[11]_1 ,
    \ethernet_out_reg[11]_2 ,
    \ethernet_out_reg[11]_3 ,
    \ethernet_out_reg[11]_4 );
  output [3:0]eth_txd_OBUF;
  output eth_txctl_OBUF;
  output eth_txck_OBUF;
  output clk125Mhz_OBUF;
  output eth_rst_b_OBUF;
  output raw_data_user;
  output [0:0]Q;
  input clk125Mhz_OBUF_BUFG;
  input eth_rxck_IBUF_BUFG;
  input eth_rxctl_IBUF;
  input [3:0]eth_rxd_IBUF;
  input sys_clk_100M_IBUF;
  input \ethernet_out_reg[11] ;
  input [6:0]ethernet_out;
  input \ethernet_out_reg[11]_0 ;
  input \ethernet_out_reg[11]_1 ;
  input \ethernet_out_reg[11]_2 ;
  input \ethernet_out_reg[11]_3 ;
  input \ethernet_out_reg[11]_4 ;

  wire CLK100MHz_buffered;
  wire CLKFBIN;
  wire [0:0]Q;
  wire adv_data_i_1_n_0;
  wire adv_data_i_2_n_0;
  wire adv_data_reg_n_0;
  wire clear;
  wire clk125MHz90;
  wire clk125Mhz_OBUF;
  wire clk125Mhz_OBUF_BUFG;
  wire count0_carry__0_i_1_n_0;
  wire count0_carry__0_i_2_n_0;
  wire count0_carry__0_i_3_n_0;
  wire count0_carry__0_i_4_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_i_1_n_0;
  wire count0_carry_i_1_n_0;
  wire count0_carry_i_2_n_0;
  wire count0_carry_i_3_n_0;
  wire count0_carry_i_4_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_2_n_0 ;
  wire [26:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire crc;
  wire data_enable;
  wire data_enable_out;
  wire data_n_10;
  wire data_n_18;
  wire data_n_19;
  wire data_n_20;
  wire data_n_21;
  wire data_n_22;
  wire data_n_23;
  wire data_n_24;
  wire data_n_25;
  wire data_n_26;
  wire data_n_27;
  wire data_n_28;
  wire data_n_29;
  wire data_n_30;
  wire data_n_31;
  wire data_n_32;
  wire data_n_33;
  wire data_n_34;
  wire data_n_35;
  wire data_n_36;
  wire data_n_37;
  wire data_n_38;
  wire data_n_39;
  wire data_n_4;
  wire data_n_40;
  wire data_n_41;
  wire data_n_42;
  wire data_n_43;
  wire data_n_44;
  wire data_n_45;
  wire data_n_46;
  wire data_n_47;
  wire data_n_48;
  wire data_n_7;
  wire data_n_8;
  wire data_valid;
  wire data_valid_out;
  wire \de_count[0]_i_1_n_0 ;
  wire \de_count[0]_i_2_n_0 ;
  wire \de_count[0]_i_3_n_0 ;
  wire \de_count[1]_i_1_n_0 ;
  wire \de_count[1]_i_2_n_0 ;
  wire \de_count[1]_i_3_n_0 ;
  wire \de_count[1]_i_4_n_0 ;
  wire \de_count[2]_i_1_n_0 ;
  wire \de_count[2]_i_2_n_0 ;
  wire \de_count[2]_i_3_n_0 ;
  wire \de_count[3]_i_1_n_0 ;
  wire \de_count[3]_i_2_n_0 ;
  wire \de_count[3]_i_3_n_0 ;
  wire \de_count[4]_i_1_n_0 ;
  wire \de_count[4]_i_2_n_0 ;
  wire \de_count[5]_i_1_n_0 ;
  wire \de_count[5]_i_2_n_0 ;
  wire \de_count[5]_i_3_n_0 ;
  wire \de_count[6]_i_1_n_0 ;
  wire \de_count[6]_i_2_n_0 ;
  wire \de_count[6]_i_3_n_0 ;
  wire \de_count_reg_n_0_[0] ;
  wire \de_count_reg_n_0_[1] ;
  wire \de_count_reg_n_0_[2] ;
  wire \de_count_reg_n_0_[3] ;
  wire \de_count_reg_n_0_[4] ;
  wire \de_count_reg_n_0_[5] ;
  wire \de_count_reg_n_0_[6] ;
  wire eth_rst_b_OBUF;
  wire eth_rst_b_i_1_n_0;
  wire eth_rxck_IBUF_BUFG;
  wire eth_rxctl_IBUF;
  wire [3:0]eth_rxd_IBUF;
  wire eth_txck_OBUF;
  wire eth_txctl_OBUF;
  wire [3:0]eth_txd_OBUF;
  wire [6:0]ethernet_out;
  wire \ethernet_out_reg[11] ;
  wire \ethernet_out_reg[11]_0 ;
  wire \ethernet_out_reg[11]_1 ;
  wire \ethernet_out_reg[11]_2 ;
  wire \ethernet_out_reg[11]_3 ;
  wire \ethernet_out_reg[11]_4 ;
  wire fully_framed_enable;
  wire fully_framed_valid;
  wire [7:4]hold_data;
  wire hold_valid;
  wire i_add_crc32_n_10;
  wire i_add_crc32_n_11;
  wire i_add_crc32_n_12;
  wire i_add_crc32_n_13;
  wire i_add_crc32_n_14;
  wire i_add_crc32_n_15;
  wire i_add_crc32_n_16;
  wire i_add_crc32_n_17;
  wire i_add_crc32_n_18;
  wire i_add_crc32_n_19;
  wire i_add_crc32_n_20;
  wire i_add_crc32_n_21;
  wire i_add_crc32_n_23;
  wire i_add_crc32_n_24;
  wire i_add_crc32_n_25;
  wire i_add_crc32_n_26;
  wire i_add_crc32_n_27;
  wire i_add_crc32_n_28;
  wire i_add_crc32_n_29;
  wire i_add_crc32_n_3;
  wire i_add_crc32_n_30;
  wire i_add_crc32_n_31;
  wire i_add_crc32_n_32;
  wire i_add_crc32_n_33;
  wire i_add_crc32_n_34;
  wire i_add_crc32_n_35;
  wire i_add_preamble_n_1;
  wire i_add_preamble_n_10;
  wire i_add_preamble_n_11;
  wire i_add_preamble_n_12;
  wire i_add_preamble_n_13;
  wire i_add_preamble_n_14;
  wire i_add_preamble_n_15;
  wire i_add_preamble_n_2;
  wire i_add_preamble_n_3;
  wire i_add_preamble_n_4;
  wire i_add_preamble_n_6;
  wire i_add_preamble_n_7;
  wire i_add_preamble_n_8;
  wire i_add_preamble_n_9;
  wire i_rgmii_rx_n_0;
  wire i_rgmii_rx_n_1;
  wire i_rgmii_rx_n_2;
  wire i_rgmii_tx_n_8;
  wire [26:26]max_count;
  wire ok_to_send;
  wire p_0_in;
  wire p_0_in_0;
  wire p_1_in;
  wire p_1_in12_in;
  wire p_1_in15_in;
  wire p_1_in18_in;
  wire p_1_in6_in;
  wire p_1_in9_in;
  wire p_1_in_0;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire raw_data_user;
  wire \reset_counter[0]_i_1_n_0 ;
  wire \reset_counter[0]_i_3_n_0 ;
  wire \reset_counter_reg[0]_i_2_n_0 ;
  wire \reset_counter_reg[0]_i_2_n_1 ;
  wire \reset_counter_reg[0]_i_2_n_2 ;
  wire \reset_counter_reg[0]_i_2_n_3 ;
  wire \reset_counter_reg[0]_i_2_n_4 ;
  wire \reset_counter_reg[0]_i_2_n_5 ;
  wire \reset_counter_reg[0]_i_2_n_6 ;
  wire \reset_counter_reg[0]_i_2_n_7 ;
  wire \reset_counter_reg[12]_i_1_n_0 ;
  wire \reset_counter_reg[12]_i_1_n_1 ;
  wire \reset_counter_reg[12]_i_1_n_2 ;
  wire \reset_counter_reg[12]_i_1_n_3 ;
  wire \reset_counter_reg[12]_i_1_n_4 ;
  wire \reset_counter_reg[12]_i_1_n_5 ;
  wire \reset_counter_reg[12]_i_1_n_6 ;
  wire \reset_counter_reg[12]_i_1_n_7 ;
  wire \reset_counter_reg[16]_i_1_n_0 ;
  wire \reset_counter_reg[16]_i_1_n_1 ;
  wire \reset_counter_reg[16]_i_1_n_2 ;
  wire \reset_counter_reg[16]_i_1_n_3 ;
  wire \reset_counter_reg[16]_i_1_n_4 ;
  wire \reset_counter_reg[16]_i_1_n_5 ;
  wire \reset_counter_reg[16]_i_1_n_6 ;
  wire \reset_counter_reg[16]_i_1_n_7 ;
  wire \reset_counter_reg[20]_i_1_n_0 ;
  wire \reset_counter_reg[20]_i_1_n_1 ;
  wire \reset_counter_reg[20]_i_1_n_2 ;
  wire \reset_counter_reg[20]_i_1_n_3 ;
  wire \reset_counter_reg[20]_i_1_n_4 ;
  wire \reset_counter_reg[20]_i_1_n_5 ;
  wire \reset_counter_reg[20]_i_1_n_6 ;
  wire \reset_counter_reg[20]_i_1_n_7 ;
  wire \reset_counter_reg[24]_i_1_n_7 ;
  wire \reset_counter_reg[4]_i_1_n_0 ;
  wire \reset_counter_reg[4]_i_1_n_1 ;
  wire \reset_counter_reg[4]_i_1_n_2 ;
  wire \reset_counter_reg[4]_i_1_n_3 ;
  wire \reset_counter_reg[4]_i_1_n_4 ;
  wire \reset_counter_reg[4]_i_1_n_5 ;
  wire \reset_counter_reg[4]_i_1_n_6 ;
  wire \reset_counter_reg[4]_i_1_n_7 ;
  wire \reset_counter_reg[8]_i_1_n_0 ;
  wire \reset_counter_reg[8]_i_1_n_1 ;
  wire \reset_counter_reg[8]_i_1_n_2 ;
  wire \reset_counter_reg[8]_i_1_n_3 ;
  wire \reset_counter_reg[8]_i_1_n_4 ;
  wire \reset_counter_reg[8]_i_1_n_5 ;
  wire \reset_counter_reg[8]_i_1_n_6 ;
  wire \reset_counter_reg[8]_i_1_n_7 ;
  wire \reset_counter_reg_n_0_[0] ;
  wire \reset_counter_reg_n_0_[10] ;
  wire \reset_counter_reg_n_0_[11] ;
  wire \reset_counter_reg_n_0_[12] ;
  wire \reset_counter_reg_n_0_[13] ;
  wire \reset_counter_reg_n_0_[14] ;
  wire \reset_counter_reg_n_0_[15] ;
  wire \reset_counter_reg_n_0_[16] ;
  wire \reset_counter_reg_n_0_[17] ;
  wire \reset_counter_reg_n_0_[18] ;
  wire \reset_counter_reg_n_0_[19] ;
  wire \reset_counter_reg_n_0_[1] ;
  wire \reset_counter_reg_n_0_[20] ;
  wire \reset_counter_reg_n_0_[21] ;
  wire \reset_counter_reg_n_0_[22] ;
  wire \reset_counter_reg_n_0_[2] ;
  wire \reset_counter_reg_n_0_[3] ;
  wire \reset_counter_reg_n_0_[4] ;
  wire \reset_counter_reg_n_0_[5] ;
  wire \reset_counter_reg_n_0_[6] ;
  wire \reset_counter_reg_n_0_[7] ;
  wire \reset_counter_reg_n_0_[8] ;
  wire \reset_counter_reg_n_0_[9] ;
  wire \speed[0]_i_1_n_0 ;
  wire \speed[1]_i_1_n_0 ;
  wire \speed_reg_n_0_[0] ;
  wire \speed_reg_n_0_[1] ;
  wire start;
  wire sys_clk_100M_IBUF;
  wire trailer_left;
  wire v_crc1;
  wire v_crc11_out;
  wire v_crc14_out;
  wire v_crc17_out;
  wire NLW_clocking_CLKOUT1_UNCONNECTED;
  wire NLW_clocking_CLKOUT2_UNCONNECTED;
  wire NLW_clocking_CLKOUT4_UNCONNECTED;
  wire NLW_clocking_CLKOUT5_UNCONNECTED;
  wire NLW_clocking_DRDY_UNCONNECTED;
  wire NLW_clocking_LOCKED_UNCONNECTED;
  wire [15:0]NLW_clocking_DO_UNCONNECTED;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_reset_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_reset_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00000010)) 
    adv_data_i_1
       (.I0(\de_count_reg_n_0_[5] ),
        .I1(\de_count_reg_n_0_[3] ),
        .I2(adv_data_i_2_n_0),
        .I3(\de_count_reg_n_0_[4] ),
        .I4(\de_count_reg_n_0_[6] ),
        .O(adv_data_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h01)) 
    adv_data_i_2
       (.I0(\de_count_reg_n_0_[0] ),
        .I1(\de_count_reg_n_0_[1] ),
        .I2(\de_count_reg_n_0_[2] ),
        .O(adv_data_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    adv_data_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(adv_data_i_1_n_0),
        .Q(adv_data_reg_n_0),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_100
       (.I(sys_clk_100M_IBUF),
        .O(CLK100MHz_buffered));
  (* XILINX_LEGACY_PRIM = "PLLE2_BASE" *) 
  (* box_type = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(10),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE(8),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(20),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(40),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(8),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(-270.000000),
    .CLKOUT4_DIVIDE(16),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(16),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    clocking
       (.CLKFBIN(CLKFBIN),
        .CLKFBOUT(CLKFBIN),
        .CLKIN1(CLK100MHz_buffered),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk125Mhz_OBUF),
        .CLKOUT1(NLW_clocking_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_clocking_CLKOUT2_UNCONNECTED),
        .CLKOUT3(clk125MHz90),
        .CLKOUT4(NLW_clocking_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_clocking_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_clocking_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_clocking_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_clocking_LOCKED_UNCONNECTED),
        .PWRDWN(1'b0),
        .RST(1'b0));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_1_n_0,count0_carry_i_2_n_0,count0_carry_i_3_n_0,count0_carry_i_4_n_0}));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({count0_carry__0_i_1_n_0,count0_carry__0_i_2_n_0,count0_carry__0_i_3_n_0,count0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2001)) 
    count0_carry__0_i_1
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .I2(max_count),
        .I3(count_reg[21]),
        .O(count0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    count0_carry__0_i_2
       (.I0(count_reg[19]),
        .I1(count_reg[18]),
        .I2(max_count),
        .I3(count_reg[20]),
        .O(count0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0081)) 
    count0_carry__0_i_3
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .I2(max_count),
        .I3(count_reg[15]),
        .O(count0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h4001)) 
    count0_carry__0_i_4
       (.I0(count_reg[13]),
        .I1(count_reg[14]),
        .I2(max_count),
        .I3(count_reg[12]),
        .O(count0_carry__0_i_4_n_0));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({NLW_count0_carry__1_CO_UNCONNECTED[3:1],clear}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,count0_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h8001)) 
    count0_carry__1_i_1
       (.I0(count_reg[25]),
        .I1(count_reg[26]),
        .I2(max_count),
        .I3(count_reg[24]),
        .O(count0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    count0_carry_i_1
       (.I0(count_reg[10]),
        .I1(count_reg[9]),
        .I2(max_count),
        .I3(count_reg[11]),
        .O(count0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    count0_carry_i_2
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(max_count),
        .I3(count_reg[8]),
        .O(count0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    count0_carry_i_3
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(max_count),
        .I3(count_reg[3]),
        .O(count0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h8001)) 
    count0_carry_i_4
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(max_count),
        .I3(count_reg[0]),
        .O(count0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(clear));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(clear));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\NLW_count_reg[24]_i_1_CO_UNCONNECTED [3:2],\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[24]_i_1_O_UNCONNECTED [3],\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({1'b0,count_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
  byte_data data
       (.D({data_n_20,data_n_21,data_n_22,data_n_23,data_n_24,data_n_25,data_n_26,data_n_27,data_n_28,data_n_29,data_n_30,data_n_31,data_n_32,data_n_33,data_n_34,data_n_35}),
        .E(trailer_left),
        .Q(Q),
        .SS(data_n_7),
        .adv_data_reg(adv_data_reg_n_0),
        .clk125Mhz_OBUF_BUFG(clk125Mhz_OBUF_BUFG),
        .crc(crc),
        .\crc_reg[10] ({p_1_in18_in,p_1_in15_in,p_1_in12_in,p_1_in9_in,p_1_in6_in,data_n_18}),
        .\crc_reg[13] (data_n_36),
        .\crc_reg[1] (data_n_4),
        .\crc_reg[1]_0 (data_n_37),
        .\crc_reg[2] (data_n_38),
        .\crc_reg[2]_0 (i_add_crc32_n_27),
        .\crc_reg[31] ({i_add_crc32_n_3,p_1_in,p_2_in,p_3_in,p_4_in,p_5_in,p_6_in,i_add_crc32_n_10,i_add_crc32_n_11,i_add_crc32_n_12,i_add_crc32_n_13,i_add_crc32_n_14,i_add_crc32_n_15,i_add_crc32_n_16,i_add_crc32_n_17,i_add_crc32_n_18,i_add_crc32_n_19,i_add_crc32_n_20,i_add_crc32_n_21}),
        .\crc_reg[3] (data_n_39),
        .\crc_reg[3]_0 (i_add_crc32_n_26),
        .\crc_reg[4] (data_n_40),
        .\crc_reg[4]_0 (i_add_crc32_n_25),
        .\crc_reg[5] (data_n_8),
        .\crc_reg[5]_0 (i_add_crc32_n_23),
        .\crc_reg[6] (data_n_10),
        .\crc_reg[7] (data_n_19),
        .\crc_reg[7]_0 (i_add_crc32_n_24),
        .data_enable(data_enable),
        .\data_out_reg[7] ({data_n_41,data_n_42,data_n_43,data_n_44,data_n_45,data_n_46,data_n_47,data_n_48}),
        .data_valid(data_valid),
        .ethernet_out(ethernet_out),
        .\ethernet_out_reg[11] (\ethernet_out_reg[11] ),
        .\ethernet_out_reg[11]_0 (\ethernet_out_reg[11]_0 ),
        .\ethernet_out_reg[11]_1 (\ethernet_out_reg[11]_1 ),
        .\ethernet_out_reg[11]_2 (\ethernet_out_reg[11]_2 ),
        .\ethernet_out_reg[11]_3 (\ethernet_out_reg[11]_3 ),
        .\ethernet_out_reg[11]_4 (\ethernet_out_reg[11]_4 ),
        .raw_data_user(raw_data_user),
        .start(start),
        .\trailer_left_reg[3] (p_0_in_0),
        .v_crc1(v_crc1),
        .v_crc11_out(v_crc11_out),
        .v_crc14_out(v_crc14_out),
        .v_crc17_out(v_crc17_out));
  LUT5 #(
    .INIT(32'h0300BBBB)) 
    \de_count[0]_i_1 
       (.I0(\de_count[0]_i_2_n_0 ),
        .I1(\speed_reg_n_0_[0] ),
        .I2(\de_count_reg_n_0_[6] ),
        .I3(\de_count[0]_i_3_n_0 ),
        .I4(\speed_reg_n_0_[1] ),
        .O(\de_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FFFFFF)) 
    \de_count[0]_i_2 
       (.I0(\de_count_reg_n_0_[3] ),
        .I1(\de_count_reg_n_0_[2] ),
        .I2(\de_count_reg_n_0_[4] ),
        .I3(\de_count_reg_n_0_[5] ),
        .I4(\de_count_reg_n_0_[6] ),
        .I5(\de_count_reg_n_0_[0] ),
        .O(\de_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000155)) 
    \de_count[0]_i_3 
       (.I0(\de_count_reg_n_0_[4] ),
        .I1(\de_count_reg_n_0_[1] ),
        .I2(\de_count_reg_n_0_[2] ),
        .I3(\de_count_reg_n_0_[3] ),
        .I4(\de_count_reg_n_0_[0] ),
        .I5(\de_count_reg_n_0_[5] ),
        .O(\de_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0000E2FFE2FF)) 
    \de_count[1]_i_1 
       (.I0(\de_count[1]_i_2_n_0 ),
        .I1(\de_count_reg_n_0_[6] ),
        .I2(\de_count[1]_i_3_n_0 ),
        .I3(\speed_reg_n_0_[0] ),
        .I4(\de_count[1]_i_4_n_0 ),
        .I5(\speed_reg_n_0_[1] ),
        .O(\de_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \de_count[1]_i_2 
       (.I0(\de_count_reg_n_0_[0] ),
        .I1(\de_count_reg_n_0_[1] ),
        .O(\de_count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000001FF01FF0000)) 
    \de_count[1]_i_3 
       (.I0(\de_count_reg_n_0_[3] ),
        .I1(\de_count_reg_n_0_[2] ),
        .I2(\de_count_reg_n_0_[4] ),
        .I3(\de_count_reg_n_0_[5] ),
        .I4(\de_count_reg_n_0_[0] ),
        .I5(\de_count_reg_n_0_[1] ),
        .O(\de_count[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000110)) 
    \de_count[1]_i_4 
       (.I0(\de_count_reg_n_0_[5] ),
        .I1(\de_count_reg_n_0_[3] ),
        .I2(\de_count_reg_n_0_[0] ),
        .I3(\de_count_reg_n_0_[1] ),
        .I4(\de_count_reg_n_0_[4] ),
        .I5(\de_count_reg_n_0_[6] ),
        .O(\de_count[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000F00002FAF2FAF)) 
    \de_count[2]_i_1 
       (.I0(\de_count[2]_i_2_n_0 ),
        .I1(\de_count_reg_n_0_[5] ),
        .I2(\speed_reg_n_0_[0] ),
        .I3(\de_count_reg_n_0_[6] ),
        .I4(\de_count[2]_i_3_n_0 ),
        .I5(\speed_reg_n_0_[1] ),
        .O(\de_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \de_count[2]_i_2 
       (.I0(\de_count_reg_n_0_[2] ),
        .I1(\de_count_reg_n_0_[0] ),
        .I2(\de_count_reg_n_0_[1] ),
        .O(\de_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001540)) 
    \de_count[2]_i_3 
       (.I0(\de_count_reg_n_0_[4] ),
        .I1(\de_count_reg_n_0_[1] ),
        .I2(\de_count_reg_n_0_[0] ),
        .I3(\de_count_reg_n_0_[2] ),
        .I4(\de_count_reg_n_0_[3] ),
        .I5(\de_count_reg_n_0_[5] ),
        .O(\de_count[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000F00002FAF2FAF)) 
    \de_count[3]_i_1 
       (.I0(\de_count[3]_i_2_n_0 ),
        .I1(\de_count_reg_n_0_[5] ),
        .I2(\speed_reg_n_0_[0] ),
        .I3(\de_count_reg_n_0_[6] ),
        .I4(\de_count[3]_i_3_n_0 ),
        .I5(\speed_reg_n_0_[1] ),
        .O(\de_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \de_count[3]_i_2 
       (.I0(\de_count_reg_n_0_[3] ),
        .I1(\de_count_reg_n_0_[0] ),
        .I2(\de_count_reg_n_0_[1] ),
        .I3(\de_count_reg_n_0_[2] ),
        .O(\de_count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000004)) 
    \de_count[3]_i_3 
       (.I0(\de_count_reg_n_0_[4] ),
        .I1(\de_count_reg_n_0_[3] ),
        .I2(\de_count_reg_n_0_[0] ),
        .I3(\de_count_reg_n_0_[1] ),
        .I4(\de_count_reg_n_0_[2] ),
        .I5(\de_count_reg_n_0_[5] ),
        .O(\de_count[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00002AFF)) 
    \de_count[4]_i_1 
       (.I0(\de_count[4]_i_2_n_0 ),
        .I1(\de_count_reg_n_0_[6] ),
        .I2(\de_count_reg_n_0_[5] ),
        .I3(\speed_reg_n_0_[0] ),
        .I4(\speed_reg_n_0_[1] ),
        .O(\de_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \de_count[4]_i_2 
       (.I0(\de_count_reg_n_0_[4] ),
        .I1(\de_count_reg_n_0_[2] ),
        .I2(\de_count_reg_n_0_[1] ),
        .I3(\de_count_reg_n_0_[0] ),
        .I4(\de_count_reg_n_0_[3] ),
        .O(\de_count[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \de_count[5]_i_1 
       (.I0(\de_count[5]_i_2_n_0 ),
        .I1(\speed_reg_n_0_[0] ),
        .I2(\speed_reg_n_0_[1] ),
        .O(\de_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h344444444444444C)) 
    \de_count[5]_i_2 
       (.I0(\de_count_reg_n_0_[6] ),
        .I1(\de_count_reg_n_0_[5] ),
        .I2(\de_count_reg_n_0_[3] ),
        .I3(\de_count[5]_i_3_n_0 ),
        .I4(\de_count_reg_n_0_[2] ),
        .I5(\de_count_reg_n_0_[4] ),
        .O(\de_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \de_count[5]_i_3 
       (.I0(\de_count_reg_n_0_[1] ),
        .I1(\de_count_reg_n_0_[0] ),
        .O(\de_count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F858FFFF)) 
    \de_count[6]_i_1 
       (.I0(\de_count_reg_n_0_[5] ),
        .I1(\de_count[6]_i_2_n_0 ),
        .I2(\de_count_reg_n_0_[6] ),
        .I3(\de_count[6]_i_3_n_0 ),
        .I4(\speed_reg_n_0_[0] ),
        .I5(\speed_reg_n_0_[1] ),
        .O(\de_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \de_count[6]_i_2 
       (.I0(\de_count_reg_n_0_[3] ),
        .I1(\de_count_reg_n_0_[0] ),
        .I2(\de_count_reg_n_0_[1] ),
        .I3(\de_count_reg_n_0_[2] ),
        .I4(\de_count_reg_n_0_[4] ),
        .O(\de_count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h00000015)) 
    \de_count[6]_i_3 
       (.I0(\de_count_reg_n_0_[3] ),
        .I1(\de_count_reg_n_0_[1] ),
        .I2(\de_count_reg_n_0_[0] ),
        .I3(\de_count_reg_n_0_[2] ),
        .I4(\de_count_reg_n_0_[4] ),
        .O(\de_count[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \de_count_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\de_count[0]_i_1_n_0 ),
        .Q(\de_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \de_count_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\de_count[1]_i_1_n_0 ),
        .Q(\de_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \de_count_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\de_count[2]_i_1_n_0 ),
        .Q(\de_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \de_count_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\de_count[3]_i_1_n_0 ),
        .Q(\de_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \de_count_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\de_count[4]_i_1_n_0 ),
        .Q(\de_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \de_count_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\de_count[5]_i_1_n_0 ),
        .Q(\de_count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \de_count_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\de_count[6]_i_1_n_0 ),
        .Q(\de_count_reg_n_0_[6] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    eth_rst_b_i_1
       (.I0(p_1_in_0),
        .I1(p_0_in),
        .O(eth_rst_b_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    eth_rst_b_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(eth_rst_b_i_1_n_0),
        .Q(eth_rst_b_OBUF),
        .R(1'b0));
  add_crc32 i_add_crc32
       (.D({data_n_20,data_n_21,data_n_22,data_n_23,data_n_24,data_n_25,data_n_26,data_n_27,data_n_28,data_n_29,data_n_30,data_n_31,data_n_32,data_n_33,data_n_34,data_n_35}),
        .E(data_enable),
        .Q(p_0_in_0),
        .SS(data_n_7),
        .clk125Mhz_OBUF_BUFG(clk125Mhz_OBUF_BUFG),
        .crc(crc),
        .\crc_reg[10]_0 (i_add_crc32_n_27),
        .\crc_reg[11]_0 (i_add_crc32_n_26),
        .\crc_reg[12]_0 (i_add_crc32_n_25),
        .\crc_reg[13]_0 (i_add_crc32_n_23),
        .\crc_reg[15]_0 (i_add_crc32_n_24),
        .\crc_reg[19]_0 ({i_add_crc32_n_3,p_1_in,p_2_in,p_3_in,p_4_in,p_5_in,p_6_in,i_add_crc32_n_10,i_add_crc32_n_11,i_add_crc32_n_12,i_add_crc32_n_13,i_add_crc32_n_14,i_add_crc32_n_15,i_add_crc32_n_16,i_add_crc32_n_17,i_add_crc32_n_18,i_add_crc32_n_19,i_add_crc32_n_20,i_add_crc32_n_21}),
        .\crc_reg[24]_0 (data_n_38),
        .\crc_reg[30]_0 (data_n_37),
        .\crc_reg[5]_0 (data_n_36),
        .data_enable_out(data_enable_out),
        .data_enable_reg(trailer_left),
        .data_enable_reg_0(data_n_4),
        .\data_reg[2] (data_n_8),
        .\data_reg[4] (data_n_39),
        .\data_reg[5] (data_n_10),
        .\data_reg[5]_0 (data_n_40),
        .\data_reg[7] ({p_1_in18_in,p_1_in15_in,p_1_in12_in,p_1_in9_in,p_1_in6_in,data_n_18}),
        .\data_reg[7]_0 (data_n_19),
        .\data_reg[7]_1 ({data_n_41,data_n_42,data_n_43,data_n_44,data_n_45,data_n_46,data_n_47,data_n_48}),
        .data_valid(data_valid),
        .data_valid_out(data_valid_out),
        .\delay_data_reg[63] ({i_add_crc32_n_28,i_add_crc32_n_29,i_add_crc32_n_30,i_add_crc32_n_31,i_add_crc32_n_32,i_add_crc32_n_33,i_add_crc32_n_34,i_add_crc32_n_35}),
        .v_crc1(v_crc1),
        .v_crc11_out(v_crc11_out),
        .v_crc14_out(v_crc14_out),
        .v_crc17_out(v_crc17_out));
  add_preamble i_add_preamble
       (.D({i_add_preamble_n_1,i_add_preamble_n_2,i_add_preamble_n_3,i_add_preamble_n_4}),
        .Q(hold_data),
        .clk125Mhz_OBUF_BUFG(clk125Mhz_OBUF_BUFG),
        .data_enable_out(data_enable_out),
        .\data_out_reg[7]_0 ({i_add_crc32_n_28,i_add_crc32_n_29,i_add_crc32_n_30,i_add_crc32_n_31,i_add_crc32_n_32,i_add_crc32_n_33,i_add_crc32_n_34,i_add_crc32_n_35}),
        .data_valid_out(data_valid_out),
        .\dout_reg[7] ({i_add_preamble_n_6,i_add_preamble_n_7,i_add_preamble_n_8,i_add_preamble_n_9,i_add_preamble_n_10,i_add_preamble_n_11,i_add_preamble_n_12,i_add_preamble_n_13}),
        .\doutctl_reg[1] (i_add_preamble_n_15),
        .\enable_frequency_reg[0] (i_rgmii_tx_n_8),
        .fully_framed_enable(fully_framed_enable),
        .fully_framed_valid(fully_framed_valid),
        .hold_valid(hold_valid),
        .ok_to_send(ok_to_send),
        .ok_to_send_reg(i_add_preamble_n_14));
  rgmii_rx i_rgmii_rx
       (.eth_rxck_IBUF_BUFG(eth_rxck_IBUF_BUFG),
        .eth_rxctl_IBUF(eth_rxctl_IBUF),
        .eth_rxd_IBUF(eth_rxd_IBUF),
        .link_1000mb_reg_0(i_rgmii_rx_n_2),
        .link_100mb_reg_0(i_rgmii_rx_n_1),
        .link_10mb_reg_0(i_rgmii_rx_n_0));
  rgmii_tx i_rgmii_tx
       (.D(i_add_preamble_n_15),
        .Q(hold_data),
        .clk125MHz90(clk125MHz90),
        .clk125Mhz_OBUF_BUFG(clk125Mhz_OBUF_BUFG),
        .\data_out_reg[7] ({i_add_preamble_n_1,i_add_preamble_n_2,i_add_preamble_n_3,i_add_preamble_n_4}),
        .data_valid_out_reg(i_add_preamble_n_14),
        .\doutclk_reg[1]_0 (i_rgmii_tx_n_8),
        .eth_txck_OBUF(eth_txck_OBUF),
        .eth_txctl_OBUF(eth_txctl_OBUF),
        .eth_txd_OBUF(eth_txd_OBUF),
        .fully_framed_enable(fully_framed_enable),
        .fully_framed_valid(fully_framed_valid),
        .\hold_data_reg[7]_0 ({i_add_preamble_n_6,i_add_preamble_n_7,i_add_preamble_n_8,i_add_preamble_n_9,i_add_preamble_n_10,i_add_preamble_n_11,i_add_preamble_n_12,i_add_preamble_n_13}),
        .hold_valid(hold_valid),
        .ok_to_send(ok_to_send));
  FDRE #(
    .INIT(1'b0)) 
    \max_count_reg[26] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(1'b1),
        .Q(max_count),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_counter[0]_i_1 
       (.I0(p_1_in_0),
        .O(\reset_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_counter[0]_i_3 
       (.I0(\reset_counter_reg_n_0_[0] ),
        .O(\reset_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[0]_i_2_n_7 ),
        .Q(\reset_counter_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \reset_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\reset_counter_reg[0]_i_2_n_0 ,\reset_counter_reg[0]_i_2_n_1 ,\reset_counter_reg[0]_i_2_n_2 ,\reset_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\reset_counter_reg[0]_i_2_n_4 ,\reset_counter_reg[0]_i_2_n_5 ,\reset_counter_reg[0]_i_2_n_6 ,\reset_counter_reg[0]_i_2_n_7 }),
        .S({\reset_counter_reg_n_0_[3] ,\reset_counter_reg_n_0_[2] ,\reset_counter_reg_n_0_[1] ,\reset_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[10] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[8]_i_1_n_5 ),
        .Q(\reset_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[11] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[8]_i_1_n_4 ),
        .Q(\reset_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[12] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[12]_i_1_n_7 ),
        .Q(\reset_counter_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \reset_counter_reg[12]_i_1 
       (.CI(\reset_counter_reg[8]_i_1_n_0 ),
        .CO({\reset_counter_reg[12]_i_1_n_0 ,\reset_counter_reg[12]_i_1_n_1 ,\reset_counter_reg[12]_i_1_n_2 ,\reset_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_counter_reg[12]_i_1_n_4 ,\reset_counter_reg[12]_i_1_n_5 ,\reset_counter_reg[12]_i_1_n_6 ,\reset_counter_reg[12]_i_1_n_7 }),
        .S({\reset_counter_reg_n_0_[15] ,\reset_counter_reg_n_0_[14] ,\reset_counter_reg_n_0_[13] ,\reset_counter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[13] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[12]_i_1_n_6 ),
        .Q(\reset_counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[14] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[12]_i_1_n_5 ),
        .Q(\reset_counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[15] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[12]_i_1_n_4 ),
        .Q(\reset_counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[16] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[16]_i_1_n_7 ),
        .Q(\reset_counter_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \reset_counter_reg[16]_i_1 
       (.CI(\reset_counter_reg[12]_i_1_n_0 ),
        .CO({\reset_counter_reg[16]_i_1_n_0 ,\reset_counter_reg[16]_i_1_n_1 ,\reset_counter_reg[16]_i_1_n_2 ,\reset_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_counter_reg[16]_i_1_n_4 ,\reset_counter_reg[16]_i_1_n_5 ,\reset_counter_reg[16]_i_1_n_6 ,\reset_counter_reg[16]_i_1_n_7 }),
        .S({\reset_counter_reg_n_0_[19] ,\reset_counter_reg_n_0_[18] ,\reset_counter_reg_n_0_[17] ,\reset_counter_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[17] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[16]_i_1_n_6 ),
        .Q(\reset_counter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[18] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[16]_i_1_n_5 ),
        .Q(\reset_counter_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[19] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[16]_i_1_n_4 ),
        .Q(\reset_counter_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[0]_i_2_n_6 ),
        .Q(\reset_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[20] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[20]_i_1_n_7 ),
        .Q(\reset_counter_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \reset_counter_reg[20]_i_1 
       (.CI(\reset_counter_reg[16]_i_1_n_0 ),
        .CO({\reset_counter_reg[20]_i_1_n_0 ,\reset_counter_reg[20]_i_1_n_1 ,\reset_counter_reg[20]_i_1_n_2 ,\reset_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_counter_reg[20]_i_1_n_4 ,\reset_counter_reg[20]_i_1_n_5 ,\reset_counter_reg[20]_i_1_n_6 ,\reset_counter_reg[20]_i_1_n_7 }),
        .S({p_0_in,\reset_counter_reg_n_0_[22] ,\reset_counter_reg_n_0_[21] ,\reset_counter_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[21] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[20]_i_1_n_6 ),
        .Q(\reset_counter_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[22] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[20]_i_1_n_5 ),
        .Q(\reset_counter_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[23] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[20]_i_1_n_4 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[24] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[24]_i_1_n_7 ),
        .Q(p_1_in_0),
        .R(1'b0));
  CARRY4 \reset_counter_reg[24]_i_1 
       (.CI(\reset_counter_reg[20]_i_1_n_0 ),
        .CO(\NLW_reset_counter_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_reset_counter_reg[24]_i_1_O_UNCONNECTED [3:1],\reset_counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,p_1_in_0}));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[0]_i_2_n_5 ),
        .Q(\reset_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[0]_i_2_n_4 ),
        .Q(\reset_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[4]_i_1_n_7 ),
        .Q(\reset_counter_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \reset_counter_reg[4]_i_1 
       (.CI(\reset_counter_reg[0]_i_2_n_0 ),
        .CO({\reset_counter_reg[4]_i_1_n_0 ,\reset_counter_reg[4]_i_1_n_1 ,\reset_counter_reg[4]_i_1_n_2 ,\reset_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_counter_reg[4]_i_1_n_4 ,\reset_counter_reg[4]_i_1_n_5 ,\reset_counter_reg[4]_i_1_n_6 ,\reset_counter_reg[4]_i_1_n_7 }),
        .S({\reset_counter_reg_n_0_[7] ,\reset_counter_reg_n_0_[6] ,\reset_counter_reg_n_0_[5] ,\reset_counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[4]_i_1_n_6 ),
        .Q(\reset_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[4]_i_1_n_5 ),
        .Q(\reset_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[4]_i_1_n_4 ),
        .Q(\reset_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[8] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[8]_i_1_n_7 ),
        .Q(\reset_counter_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \reset_counter_reg[8]_i_1 
       (.CI(\reset_counter_reg[4]_i_1_n_0 ),
        .CO({\reset_counter_reg[8]_i_1_n_0 ,\reset_counter_reg[8]_i_1_n_1 ,\reset_counter_reg[8]_i_1_n_2 ,\reset_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reset_counter_reg[8]_i_1_n_4 ,\reset_counter_reg[8]_i_1_n_5 ,\reset_counter_reg[8]_i_1_n_6 ,\reset_counter_reg[8]_i_1_n_7 }),
        .S({\reset_counter_reg_n_0_[11] ,\reset_counter_reg_n_0_[10] ,\reset_counter_reg_n_0_[9] ,\reset_counter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \reset_counter_reg[9] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\reset_counter[0]_i_1_n_0 ),
        .D(\reset_counter_reg[8]_i_1_n_6 ),
        .Q(\reset_counter_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hAFAE)) 
    \speed[0]_i_1 
       (.I0(i_rgmii_rx_n_2),
        .I1(i_rgmii_rx_n_0),
        .I2(i_rgmii_rx_n_1),
        .I3(\speed_reg_n_0_[0] ),
        .O(\speed[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFBFA)) 
    \speed[1]_i_1 
       (.I0(i_rgmii_rx_n_2),
        .I1(i_rgmii_rx_n_0),
        .I2(i_rgmii_rx_n_1),
        .I3(\speed_reg_n_0_[1] ),
        .O(\speed[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \speed_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\speed[0]_i_1_n_0 ),
        .Q(\speed_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \speed_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\speed[1]_i_1_n_0 ),
        .Q(\speed_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_sending_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(clear),
        .Q(start),
        .R(1'b0));
endmodule

module rgmii_rx
   (link_10mb_reg_0,
    link_100mb_reg_0,
    link_1000mb_reg_0,
    eth_rxck_IBUF_BUFG,
    eth_rxctl_IBUF,
    eth_rxd_IBUF);
  output link_10mb_reg_0;
  output link_100mb_reg_0;
  output link_1000mb_reg_0;
  input eth_rxck_IBUF_BUFG;
  input eth_rxctl_IBUF;
  input [3:0]eth_rxd_IBUF;

  wire Q1;
  wire Q2;
  wire ddr_rxd0_n_0;
  wire ddr_rxd1_n_0;
  wire eth_rxck_IBUF_BUFG;
  wire eth_rxctl_IBUF;
  wire [3:0]eth_rxd_IBUF;
  wire link_1000mb_i_1_n_0;
  wire link_1000mb_reg_0;
  wire link_100mb_i_1_n_0;
  wire link_100mb_reg_0;
  wire link_10mb_i_1_n_0;
  wire link_10mb_i_2_n_0;
  wire link_10mb_i_3_n_0;
  wire link_10mb_reg_0;
  wire [2:0]p_0_in;
  wire raw_ctl_0;
  wire raw_ctl_1;
  wire raw_data_3;

  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ddr_rx_ctl
       (.C(eth_rxck_IBUF_BUFG),
        .CE(1'b1),
        .D(eth_rxctl_IBUF),
        .Q1(raw_ctl_0),
        .Q2(raw_ctl_1),
        .R(1'b0),
        .S(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ddr_rxd0
       (.C(eth_rxck_IBUF_BUFG),
        .CE(1'b1),
        .D(eth_rxd_IBUF[0]),
        .Q1(ddr_rxd0_n_0),
        .Q2(p_0_in[0]),
        .R(1'b0),
        .S(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ddr_rxd1
       (.C(eth_rxck_IBUF_BUFG),
        .CE(1'b1),
        .D(eth_rxd_IBUF[1]),
        .Q1(ddr_rxd1_n_0),
        .Q2(p_0_in[1]),
        .R(1'b0),
        .S(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ddr_rxd2
       (.C(eth_rxck_IBUF_BUFG),
        .CE(1'b1),
        .D(eth_rxd_IBUF[2]),
        .Q1(Q1),
        .Q2(p_0_in[2]),
        .R(1'b0),
        .S(1'b0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ddr_rxd3
       (.C(eth_rxck_IBUF_BUFG),
        .CE(1'b1),
        .D(eth_rxd_IBUF[3]),
        .Q1(raw_data_3),
        .Q2(Q2),
        .R(1'b0),
        .S(1'b0));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    link_1000mb_i_1
       (.I0(ddr_rxd1_n_0),
        .I1(ddr_rxd0_n_0),
        .I2(Q1),
        .I3(link_10mb_i_2_n_0),
        .I4(link_1000mb_reg_0),
        .O(link_1000mb_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    link_1000mb_reg
       (.C(eth_rxck_IBUF_BUFG),
        .CE(1'b1),
        .D(link_1000mb_i_1_n_0),
        .Q(link_1000mb_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    link_100mb_i_1
       (.I0(Q1),
        .I1(ddr_rxd0_n_0),
        .I2(ddr_rxd1_n_0),
        .I3(link_10mb_i_2_n_0),
        .I4(link_100mb_reg_0),
        .O(link_100mb_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    link_100mb_reg
       (.C(eth_rxck_IBUF_BUFG),
        .CE(1'b1),
        .D(link_100mb_i_1_n_0),
        .Q(link_100mb_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    link_10mb_i_1
       (.I0(ddr_rxd0_n_0),
        .I1(Q1),
        .I2(ddr_rxd1_n_0),
        .I3(link_10mb_i_2_n_0),
        .I4(link_10mb_reg_0),
        .O(link_10mb_i_1_n_0));
  LUT5 #(
    .INIT(32'h10000010)) 
    link_10mb_i_2
       (.I0(raw_ctl_1),
        .I1(raw_ctl_0),
        .I2(link_10mb_i_3_n_0),
        .I3(Q2),
        .I4(raw_data_3),
        .O(link_10mb_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    link_10mb_i_3
       (.I0(ddr_rxd0_n_0),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(Q1),
        .I4(p_0_in[1]),
        .I5(ddr_rxd1_n_0),
        .O(link_10mb_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    link_10mb_reg
       (.C(eth_rxck_IBUF_BUFG),
        .CE(1'b1),
        .D(link_10mb_i_1_n_0),
        .Q(link_10mb_reg_0),
        .R(1'b0));
endmodule

module rgmii_tx
   (eth_txd_OBUF,
    eth_txctl_OBUF,
    eth_txck_OBUF,
    hold_valid,
    ok_to_send,
    \doutclk_reg[1]_0 ,
    Q,
    clk125Mhz_OBUF_BUFG,
    clk125MHz90,
    fully_framed_enable,
    fully_framed_valid,
    data_valid_out_reg,
    D,
    \data_out_reg[7] ,
    \hold_data_reg[7]_0 );
  output [3:0]eth_txd_OBUF;
  output eth_txctl_OBUF;
  output eth_txck_OBUF;
  output hold_valid;
  output ok_to_send;
  output \doutclk_reg[1]_0 ;
  output [3:0]Q;
  input clk125Mhz_OBUF_BUFG;
  input clk125MHz90;
  input fully_framed_enable;
  input fully_framed_valid;
  input data_valid_out_reg;
  input [0:0]D;
  input [3:0]\data_out_reg[7] ;
  input [7:0]\hold_data_reg[7]_0 ;

  wire [0:0]D;
  wire D1;
  wire D2;
  wire [3:0]Q;
  wire clk125MHz90;
  wire clk125Mhz_OBUF_BUFG;
  wire [3:0]\data_out_reg[7] ;
  wire data_valid_out_reg;
  wire dout0__12;
  wire dout12_out;
  wire dout1__12;
  wire \dout[7]_i_10_n_0 ;
  wire \dout[7]_i_1_n_0 ;
  wire \dout[7]_i_3_n_0 ;
  wire \dout[7]_i_4_n_0 ;
  wire \dout[7]_i_5_n_0 ;
  wire \dout[7]_i_7_n_0 ;
  wire \dout[7]_i_8_n_0 ;
  wire \dout[7]_i_9_n_0 ;
  wire \dout_reg_n_0_[1] ;
  wire \dout_reg_n_0_[2] ;
  wire \dout_reg_n_0_[3] ;
  wire \dout_reg_n_0_[5] ;
  wire \dout_reg_n_0_[6] ;
  wire \dout_reg_n_0_[7] ;
  wire \doutclk[0]_i_1_n_0 ;
  wire \doutclk[0]_i_2_n_0 ;
  wire \doutclk[0]_i_3_n_0 ;
  wire \doutclk[0]_i_4_n_0 ;
  wire \doutclk[1]_i_1_n_0 ;
  wire \doutclk[1]_i_2_n_0 ;
  wire \doutclk[1]_i_3_n_0 ;
  wire \doutclk[1]_i_4_n_0 ;
  wire \doutclk[1]_i_5_n_0 ;
  wire \doutclk_reg[1]_0 ;
  wire \doutclk_reg_n_0_[0] ;
  wire \doutclk_reg_n_0_[1] ;
  wire doutctl1__12;
  wire \doutctl[0]_i_1_n_0 ;
  wire \doutctl[0]_i_2_n_0 ;
  wire \doutctl[0]_i_3_n_0 ;
  wire \doutctl[0]_i_4_n_0 ;
  wire \doutctl[0]_i_5_n_0 ;
  wire \doutctl[1]_i_10_n_0 ;
  wire \doutctl[1]_i_11_n_0 ;
  wire \doutctl[1]_i_12_n_0 ;
  wire \doutctl[1]_i_13_n_0 ;
  wire \doutctl[1]_i_14_n_0 ;
  wire \doutctl[1]_i_15_n_0 ;
  wire \doutctl[1]_i_16_n_0 ;
  wire \doutctl[1]_i_17_n_0 ;
  wire \doutctl[1]_i_18_n_0 ;
  wire \doutctl[1]_i_19_n_0 ;
  wire \doutctl[1]_i_1_n_0 ;
  wire \doutctl[1]_i_20_n_0 ;
  wire \doutctl[1]_i_7_n_0 ;
  wire \doutctl[1]_i_8_n_0 ;
  wire \doutctl[1]_i_9_n_0 ;
  wire \doutctl_reg_n_0_[0] ;
  wire \doutctl_reg_n_0_[1] ;
  wire [6:0]enable_count_reg__0;
  wire [6:0]enable_frequency;
  wire \enable_frequency[0]_i_1_n_0 ;
  wire \enable_frequency[1]_i_1_n_0 ;
  wire \enable_frequency[2]_i_1_n_0 ;
  wire \enable_frequency[3]_i_1_n_0 ;
  wire \enable_frequency[4]_i_1_n_0 ;
  wire \enable_frequency[5]_i_1_n_0 ;
  wire \enable_frequency[6]_i_1_n_0 ;
  wire \enable_frequency[6]_i_2_n_0 ;
  wire eth_txck_OBUF;
  wire eth_txctl_OBUF;
  wire [3:0]eth_txd_OBUF;
  wire [4:0]first_quarter;
  wire fully_framed_enable;
  wire fully_framed_valid;
  wire [7:0]\hold_data_reg[7]_0 ;
  wire hold_valid;
  wire [5:5]minusOp0_in;
  wire ok_to_send;
  wire p_0_in;
  wire [0:0]second_quarter;
  wire sel;
  wire [6:0]third_quarter;
  wire \third_quarter[1]_i_2_n_0 ;
  wire \third_quarter[1]_i_3_n_0 ;
  wire \third_quarter[1]_i_4_n_0 ;
  wire \third_quarter[5]_i_2_n_0 ;
  wire \third_quarter[5]_i_3_n_0 ;
  wire \third_quarter[5]_i_4_n_0 ;
  wire \third_quarter_reg[1]_i_1_n_0 ;
  wire \third_quarter_reg[1]_i_1_n_1 ;
  wire \third_quarter_reg[1]_i_1_n_2 ;
  wire \third_quarter_reg[1]_i_1_n_3 ;
  wire \third_quarter_reg[5]_i_1_n_0 ;
  wire \third_quarter_reg[5]_i_1_n_1 ;
  wire \third_quarter_reg[5]_i_1_n_2 ;
  wire \third_quarter_reg[5]_i_1_n_3 ;
  wire [8:2]times_3;
  wire [1:0]\NLW_third_quarter_reg[1]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_third_quarter_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_third_quarter_reg[6]_i_1_O_UNCONNECTED ;
  wire NLW_tx_c_R_UNCONNECTED;
  wire NLW_tx_c_S_UNCONNECTED;
  wire NLW_tx_ctl_R_UNCONNECTED;
  wire NLW_tx_ctl_S_UNCONNECTED;
  wire NLW_tx_d0_R_UNCONNECTED;
  wire NLW_tx_d0_S_UNCONNECTED;
  wire NLW_tx_d1_R_UNCONNECTED;
  wire NLW_tx_d1_S_UNCONNECTED;
  wire NLW_tx_d2_R_UNCONNECTED;
  wire NLW_tx_d2_S_UNCONNECTED;
  wire NLW_tx_d3_R_UNCONNECTED;
  wire NLW_tx_d3_S_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \dout[7]_i_1 
       (.I0(dout12_out),
        .I1(dout1__12),
        .I2(\dout[7]_i_3_n_0 ),
        .I3(\dout[7]_i_4_n_0 ),
        .I4(\dout[7]_i_5_n_0 ),
        .I5(fully_framed_enable),
        .O(\dout[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dout[7]_i_10 
       (.I0(enable_frequency[2]),
        .I1(enable_frequency[3]),
        .I2(enable_frequency[4]),
        .I3(enable_frequency[5]),
        .O(\dout[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hC936)) 
    \dout[7]_i_3 
       (.I0(first_quarter[3]),
        .I1(first_quarter[4]),
        .I2(\doutctl[1]_i_16_n_0 ),
        .I3(enable_count_reg__0[5]),
        .O(\dout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2800002800282800)) 
    \dout[7]_i_4 
       (.I0(\dout[7]_i_7_n_0 ),
        .I1(\dout[7]_i_8_n_0 ),
        .I2(enable_count_reg__0[6]),
        .I3(\dout[7]_i_9_n_0 ),
        .I4(first_quarter[2]),
        .I5(enable_count_reg__0[3]),
        .O(\dout[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \dout[7]_i_5 
       (.I0(first_quarter[3]),
        .I1(enable_count_reg__0[4]),
        .I2(first_quarter[2]),
        .I3(first_quarter[0]),
        .I4(first_quarter[1]),
        .I5(second_quarter),
        .O(\dout[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \dout[7]_i_6 
       (.I0(\dout[7]_i_10_n_0 ),
        .I1(enable_frequency[0]),
        .I2(enable_frequency[6]),
        .I3(p_0_in),
        .O(\doutclk_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4100002800824100)) 
    \dout[7]_i_7 
       (.I0(enable_count_reg__0[0]),
        .I1(first_quarter[1]),
        .I2(enable_count_reg__0[2]),
        .I3(second_quarter),
        .I4(first_quarter[0]),
        .I5(enable_count_reg__0[1]),
        .O(\dout[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \dout[7]_i_8 
       (.I0(first_quarter[3]),
        .I1(first_quarter[4]),
        .I2(first_quarter[2]),
        .I3(first_quarter[0]),
        .I4(first_quarter[1]),
        .I5(second_quarter),
        .O(\dout[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \dout[7]_i_9 
       (.I0(first_quarter[0]),
        .I1(first_quarter[1]),
        .I2(second_quarter),
        .O(\dout[7]_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\dout[7]_i_1_n_0 ),
        .D(\hold_data_reg[7]_0 [0]),
        .Q(D1),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\dout[7]_i_1_n_0 ),
        .D(\hold_data_reg[7]_0 [1]),
        .Q(\dout_reg_n_0_[1] ),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\dout[7]_i_1_n_0 ),
        .D(\hold_data_reg[7]_0 [2]),
        .Q(\dout_reg_n_0_[2] ),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\dout[7]_i_1_n_0 ),
        .D(\hold_data_reg[7]_0 [3]),
        .Q(\dout_reg_n_0_[3] ),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\dout[7]_i_1_n_0 ),
        .D(\hold_data_reg[7]_0 [4]),
        .Q(D2),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\dout[7]_i_1_n_0 ),
        .D(\hold_data_reg[7]_0 [5]),
        .Q(\dout_reg_n_0_[5] ),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\dout[7]_i_1_n_0 ),
        .D(\hold_data_reg[7]_0 [6]),
        .Q(\dout_reg_n_0_[6] ),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\dout[7]_i_1_n_0 ),
        .D(\hold_data_reg[7]_0 [7]),
        .Q(\dout_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0002)) 
    \doutclk[0]_i_1 
       (.I0(\doutclk_reg_n_0_[0] ),
        .I1(\doutclk[0]_i_2_n_0 ),
        .I2(\doutclk[0]_i_3_n_0 ),
        .I3(\doutctl[0]_i_2_n_0 ),
        .I4(\doutclk[0]_i_4_n_0 ),
        .I5(fully_framed_enable),
        .O(\doutclk[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \doutclk[0]_i_2 
       (.I0(p_0_in),
        .I1(dout1__12),
        .I2(dout12_out),
        .I3(fully_framed_enable),
        .I4(\doutctl[1]_i_15_n_0 ),
        .I5(\doutclk[1]_i_4_n_0 ),
        .O(\doutclk[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \doutclk[0]_i_3 
       (.I0(\doutctl[1]_i_7_n_0 ),
        .I1(dout1__12),
        .I2(dout12_out),
        .I3(fully_framed_enable),
        .I4(\doutctl[1]_i_15_n_0 ),
        .I5(\doutclk[1]_i_4_n_0 ),
        .O(\doutclk[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009600)) 
    \doutclk[0]_i_4 
       (.I0(first_quarter[3]),
        .I1(enable_count_reg__0[4]),
        .I2(\doutctl[1]_i_16_n_0 ),
        .I3(\doutctl[0]_i_4_n_0 ),
        .I4(dout1__12),
        .I5(dout12_out),
        .O(\doutclk[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0BBB0B0B000)) 
    \doutclk[1]_i_1 
       (.I0(\doutclk_reg[1]_0 ),
        .I1(fully_framed_enable),
        .I2(\dout[7]_i_1_n_0 ),
        .I3(\doutclk[1]_i_2_n_0 ),
        .I4(\doutclk[1]_i_3_n_0 ),
        .I5(\doutclk_reg_n_0_[1] ),
        .O(\doutclk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hEFEEEEEE)) 
    \doutclk[1]_i_2 
       (.I0(dout1__12),
        .I1(dout12_out),
        .I2(fully_framed_enable),
        .I3(\doutclk[1]_i_4_n_0 ),
        .I4(\doutctl[1]_i_15_n_0 ),
        .O(\doutclk[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF00FFD5)) 
    \doutclk[1]_i_3 
       (.I0(\doutctl[1]_i_7_n_0 ),
        .I1(\dout[7]_i_5_n_0 ),
        .I2(\doutctl[0]_i_4_n_0 ),
        .I3(fully_framed_enable),
        .I4(dout12_out),
        .I5(dout1__12),
        .O(\doutclk[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \doutclk[1]_i_4 
       (.I0(enable_count_reg__0[5]),
        .I1(enable_count_reg__0[6]),
        .I2(third_quarter[5]),
        .I3(\doutclk[1]_i_5_n_0 ),
        .I4(third_quarter[4]),
        .I5(third_quarter[6]),
        .O(\doutclk[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \doutclk[1]_i_5 
       (.I0(third_quarter[2]),
        .I1(third_quarter[0]),
        .I2(third_quarter[1]),
        .I3(third_quarter[3]),
        .O(\doutclk[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \doutclk_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\doutclk[0]_i_1_n_0 ),
        .Q(\doutclk_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \doutclk_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\doutclk[1]_i_1_n_0 ),
        .Q(\doutclk_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAABAFAB)) 
    \doutctl[0]_i_1 
       (.I0(\doutctl[0]_i_2_n_0 ),
        .I1(\doutctl[1]_i_7_n_0 ),
        .I2(\doutctl[0]_i_3_n_0 ),
        .I3(doutctl1__12),
        .I4(p_0_in),
        .O(\doutctl[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFF08FFFFFFF8)) 
    \doutctl[0]_i_2 
       (.I0(\doutctl[0]_i_4_n_0 ),
        .I1(\dout[7]_i_5_n_0 ),
        .I2(dout12_out),
        .I3(fully_framed_enable),
        .I4(dout1__12),
        .I5(p_0_in),
        .O(\doutctl[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \doutctl[0]_i_3 
       (.I0(dout1__12),
        .I1(dout12_out),
        .I2(fully_framed_enable),
        .O(\doutctl[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2800000000002800)) 
    \doutctl[0]_i_4 
       (.I0(\doutctl[0]_i_5_n_0 ),
        .I1(enable_count_reg__0[6]),
        .I2(\dout[7]_i_8_n_0 ),
        .I3(\dout[7]_i_7_n_0 ),
        .I4(enable_count_reg__0[5]),
        .I5(minusOp0_in),
        .O(\doutctl[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h99999996)) 
    \doutctl[0]_i_5 
       (.I0(enable_count_reg__0[3]),
        .I1(first_quarter[2]),
        .I2(first_quarter[0]),
        .I3(first_quarter[1]),
        .I4(second_quarter),
        .O(\doutctl[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0001)) 
    \doutctl[0]_i_6 
       (.I0(second_quarter),
        .I1(first_quarter[1]),
        .I2(first_quarter[0]),
        .I3(first_quarter[2]),
        .I4(first_quarter[4]),
        .I5(first_quarter[3]),
        .O(minusOp0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \doutctl[1]_i_1 
       (.I0(dout12_out),
        .I1(dout1__12),
        .I2(doutctl1__12),
        .I3(fully_framed_enable),
        .I4(dout0__12),
        .I5(\doutctl[1]_i_7_n_0 ),
        .O(\doutctl[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4100004100822800)) 
    \doutctl[1]_i_10 
       (.I0(enable_count_reg__0[0]),
        .I1(first_quarter[2]),
        .I2(enable_count_reg__0[2]),
        .I3(enable_count_reg__0[1]),
        .I4(first_quarter[1]),
        .I5(first_quarter[0]),
        .O(\doutctl[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFE0101FE)) 
    \doutctl[1]_i_11 
       (.I0(first_quarter[0]),
        .I1(first_quarter[1]),
        .I2(first_quarter[2]),
        .I3(first_quarter[3]),
        .I4(enable_count_reg__0[3]),
        .O(\doutctl[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \doutctl[1]_i_12 
       (.I0(enable_count_reg__0[3]),
        .I1(first_quarter[3]),
        .O(\doutctl[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \doutctl[1]_i_13 
       (.I0(first_quarter[0]),
        .I1(enable_count_reg__0[0]),
        .I2(enable_count_reg__0[1]),
        .I3(first_quarter[1]),
        .I4(first_quarter[2]),
        .I5(enable_count_reg__0[2]),
        .O(\doutctl[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \doutctl[1]_i_14 
       (.I0(third_quarter[3]),
        .I1(third_quarter[1]),
        .I2(third_quarter[0]),
        .I3(third_quarter[2]),
        .I4(third_quarter[4]),
        .O(\doutctl[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8220000800088220)) 
    \doutctl[1]_i_15 
       (.I0(\doutctl[1]_i_19_n_0 ),
        .I1(enable_count_reg__0[3]),
        .I2(\doutctl[1]_i_20_n_0 ),
        .I3(third_quarter[3]),
        .I4(enable_count_reg__0[4]),
        .I5(third_quarter[4]),
        .O(\doutctl[1]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \doutctl[1]_i_16 
       (.I0(second_quarter),
        .I1(first_quarter[1]),
        .I2(first_quarter[0]),
        .I3(first_quarter[2]),
        .O(\doutctl[1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \doutctl[1]_i_17 
       (.I0(enable_count_reg__0[2]),
        .I1(third_quarter[2]),
        .I2(enable_count_reg__0[6]),
        .I3(third_quarter[6]),
        .O(\doutctl[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \doutctl[1]_i_18 
       (.I0(third_quarter[0]),
        .I1(enable_count_reg__0[0]),
        .I2(third_quarter[1]),
        .I3(enable_count_reg__0[1]),
        .I4(enable_count_reg__0[5]),
        .I5(third_quarter[5]),
        .O(\doutctl[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4100002800824100)) 
    \doutctl[1]_i_19 
       (.I0(enable_count_reg__0[0]),
        .I1(third_quarter[2]),
        .I2(enable_count_reg__0[2]),
        .I3(third_quarter[0]),
        .I4(third_quarter[1]),
        .I5(enable_count_reg__0[1]),
        .O(\doutctl[1]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \doutctl[1]_i_20 
       (.I0(third_quarter[1]),
        .I1(third_quarter[0]),
        .I2(third_quarter[2]),
        .O(\doutctl[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0280000000000000)) 
    \doutctl[1]_i_3 
       (.I0(\doutctl[1]_i_8_n_0 ),
        .I1(enable_count_reg__0[6]),
        .I2(enable_count_reg__0[5]),
        .I3(\doutctl[1]_i_9_n_0 ),
        .I4(\doutctl[1]_i_10_n_0 ),
        .I5(\doutctl[1]_i_11_n_0 ),
        .O(dout12_out));
  LUT6 #(
    .INIT(64'h0200000200000000)) 
    \doutctl[1]_i_4 
       (.I0(\doutctl[1]_i_12_n_0 ),
        .I1(enable_count_reg__0[6]),
        .I2(enable_count_reg__0[5]),
        .I3(first_quarter[4]),
        .I4(enable_count_reg__0[4]),
        .I5(\doutctl[1]_i_13_n_0 ),
        .O(dout1__12));
  LUT6 #(
    .INIT(64'h8142281400000000)) 
    \doutctl[1]_i_5 
       (.I0(third_quarter[6]),
        .I1(\doutctl[1]_i_14_n_0 ),
        .I2(third_quarter[5]),
        .I3(enable_count_reg__0[6]),
        .I4(enable_count_reg__0[5]),
        .I5(\doutctl[1]_i_15_n_0 ),
        .O(doutctl1__12));
  LUT6 #(
    .INIT(64'h9000009000609000)) 
    \doutctl[1]_i_6 
       (.I0(first_quarter[4]),
        .I1(enable_count_reg__0[5]),
        .I2(\dout[7]_i_4_n_0 ),
        .I3(\doutctl[1]_i_16_n_0 ),
        .I4(enable_count_reg__0[4]),
        .I5(first_quarter[3]),
        .O(dout0__12));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \doutctl[1]_i_7 
       (.I0(\doutctl[1]_i_17_n_0 ),
        .I1(enable_count_reg__0[4]),
        .I2(third_quarter[4]),
        .I3(enable_count_reg__0[3]),
        .I4(third_quarter[3]),
        .I5(\doutctl[1]_i_18_n_0 ),
        .O(\doutctl[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE00010001FFFE)) 
    \doutctl[1]_i_8 
       (.I0(first_quarter[2]),
        .I1(first_quarter[1]),
        .I2(first_quarter[0]),
        .I3(first_quarter[3]),
        .I4(first_quarter[4]),
        .I5(enable_count_reg__0[4]),
        .O(\doutctl[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \doutctl[1]_i_9 
       (.I0(first_quarter[3]),
        .I1(first_quarter[4]),
        .I2(first_quarter[2]),
        .I3(first_quarter[1]),
        .I4(first_quarter[0]),
        .O(\doutctl[1]_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \doutctl_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\doutctl[0]_i_1_n_0 ),
        .D(D),
        .Q(\doutctl_reg_n_0_[0] ),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \doutctl_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\doutctl[1]_i_1_n_0 ),
        .D(D),
        .Q(\doutctl_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \enable_count[6]_i_1 
       (.I0(enable_count_reg__0[2]),
        .I1(enable_count_reg__0[3]),
        .I2(enable_count_reg__0[5]),
        .I3(enable_count_reg__0[4]),
        .I4(enable_count_reg__0[6]),
        .I5(\enable_frequency[6]_i_2_n_0 ),
        .O(sel));
  FDRE #(
    .INIT(1'b0)) 
    \enable_count_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(sel),
        .D(\enable_frequency[0]_i_1_n_0 ),
        .Q(enable_count_reg__0[0]),
        .R(fully_framed_enable));
  FDRE #(
    .INIT(1'b0)) 
    \enable_count_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(sel),
        .D(\enable_frequency[1]_i_1_n_0 ),
        .Q(enable_count_reg__0[1]),
        .R(fully_framed_enable));
  FDRE #(
    .INIT(1'b0)) 
    \enable_count_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(sel),
        .D(\enable_frequency[2]_i_1_n_0 ),
        .Q(enable_count_reg__0[2]),
        .R(fully_framed_enable));
  FDRE #(
    .INIT(1'b0)) 
    \enable_count_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(sel),
        .D(\enable_frequency[3]_i_1_n_0 ),
        .Q(enable_count_reg__0[3]),
        .R(fully_framed_enable));
  FDRE #(
    .INIT(1'b0)) 
    \enable_count_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(sel),
        .D(\enable_frequency[4]_i_1_n_0 ),
        .Q(enable_count_reg__0[4]),
        .R(fully_framed_enable));
  FDRE #(
    .INIT(1'b0)) 
    \enable_count_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(sel),
        .D(\enable_frequency[5]_i_1_n_0 ),
        .Q(enable_count_reg__0[5]),
        .R(fully_framed_enable));
  FDRE #(
    .INIT(1'b0)) 
    \enable_count_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(sel),
        .D(\enable_frequency[6]_i_1_n_0 ),
        .Q(enable_count_reg__0[6]),
        .R(fully_framed_enable));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \enable_frequency[0]_i_1 
       (.I0(enable_count_reg__0[0]),
        .O(\enable_frequency[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \enable_frequency[1]_i_1 
       (.I0(enable_count_reg__0[0]),
        .I1(enable_count_reg__0[1]),
        .O(\enable_frequency[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \enable_frequency[2]_i_1 
       (.I0(enable_count_reg__0[1]),
        .I1(enable_count_reg__0[0]),
        .I2(enable_count_reg__0[2]),
        .O(\enable_frequency[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \enable_frequency[3]_i_1 
       (.I0(enable_count_reg__0[0]),
        .I1(enable_count_reg__0[1]),
        .I2(enable_count_reg__0[2]),
        .I3(enable_count_reg__0[3]),
        .O(\enable_frequency[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \enable_frequency[4]_i_1 
       (.I0(enable_count_reg__0[3]),
        .I1(enable_count_reg__0[2]),
        .I2(enable_count_reg__0[1]),
        .I3(enable_count_reg__0[0]),
        .I4(enable_count_reg__0[4]),
        .O(\enable_frequency[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \enable_frequency[5]_i_1 
       (.I0(enable_count_reg__0[4]),
        .I1(enable_count_reg__0[0]),
        .I2(enable_count_reg__0[1]),
        .I3(enable_count_reg__0[2]),
        .I4(enable_count_reg__0[3]),
        .I5(enable_count_reg__0[5]),
        .O(\enable_frequency[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \enable_frequency[6]_i_1 
       (.I0(enable_count_reg__0[5]),
        .I1(enable_count_reg__0[3]),
        .I2(enable_count_reg__0[2]),
        .I3(\enable_frequency[6]_i_2_n_0 ),
        .I4(enable_count_reg__0[4]),
        .I5(enable_count_reg__0[6]),
        .O(\enable_frequency[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \enable_frequency[6]_i_2 
       (.I0(enable_count_reg__0[0]),
        .I1(enable_count_reg__0[1]),
        .O(\enable_frequency[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \enable_frequency_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\enable_frequency[0]_i_1_n_0 ),
        .Q(enable_frequency[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \enable_frequency_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\enable_frequency[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \enable_frequency_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\enable_frequency[2]_i_1_n_0 ),
        .Q(enable_frequency[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \enable_frequency_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\enable_frequency[3]_i_1_n_0 ),
        .Q(enable_frequency[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \enable_frequency_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\enable_frequency[4]_i_1_n_0 ),
        .Q(enable_frequency[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \enable_frequency_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\enable_frequency[5]_i_1_n_0 ),
        .Q(enable_frequency[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \enable_frequency_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\enable_frequency[6]_i_1_n_0 ),
        .Q(enable_frequency[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_quarter_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(enable_frequency[2]),
        .Q(first_quarter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_quarter_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(enable_frequency[3]),
        .Q(first_quarter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_quarter_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(enable_frequency[4]),
        .Q(first_quarter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_quarter_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(enable_frequency[5]),
        .Q(first_quarter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \first_quarter_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(enable_frequency[6]),
        .Q(first_quarter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_data_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\data_out_reg[7] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_data_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\data_out_reg[7] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_data_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\data_out_reg[7] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hold_data_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(\data_out_reg[7] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hold_valid_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(fully_framed_enable),
        .D(fully_framed_valid),
        .Q(hold_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ok_to_send_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(data_valid_out_reg),
        .Q(ok_to_send),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_quarter_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(second_quarter),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \third_quarter[1]_i_2 
       (.I0(enable_frequency[2]),
        .I1(enable_frequency[3]),
        .O(\third_quarter[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \third_quarter[1]_i_3 
       (.I0(p_0_in),
        .I1(enable_frequency[2]),
        .O(\third_quarter[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \third_quarter[1]_i_4 
       (.I0(enable_frequency[0]),
        .I1(p_0_in),
        .O(\third_quarter[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \third_quarter[5]_i_2 
       (.I0(enable_frequency[5]),
        .I1(enable_frequency[6]),
        .O(\third_quarter[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \third_quarter[5]_i_3 
       (.I0(enable_frequency[4]),
        .I1(enable_frequency[5]),
        .O(\third_quarter[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \third_quarter[5]_i_4 
       (.I0(enable_frequency[3]),
        .I1(enable_frequency[4]),
        .O(\third_quarter[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \third_quarter_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(times_3[2]),
        .Q(third_quarter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \third_quarter_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(times_3[3]),
        .Q(third_quarter[1]),
        .R(1'b0));
  CARRY4 \third_quarter_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\third_quarter_reg[1]_i_1_n_0 ,\third_quarter_reg[1]_i_1_n_1 ,\third_quarter_reg[1]_i_1_n_2 ,\third_quarter_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({enable_frequency[2],p_0_in,enable_frequency[0],1'b0}),
        .O({times_3[3:2],\NLW_third_quarter_reg[1]_i_1_O_UNCONNECTED [1:0]}),
        .S({\third_quarter[1]_i_2_n_0 ,\third_quarter[1]_i_3_n_0 ,\third_quarter[1]_i_4_n_0 ,enable_frequency[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \third_quarter_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(times_3[4]),
        .Q(third_quarter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \third_quarter_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(times_3[5]),
        .Q(third_quarter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \third_quarter_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(times_3[6]),
        .Q(third_quarter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \third_quarter_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(times_3[7]),
        .Q(third_quarter[5]),
        .R(1'b0));
  CARRY4 \third_quarter_reg[5]_i_1 
       (.CI(\third_quarter_reg[1]_i_1_n_0 ),
        .CO({\third_quarter_reg[5]_i_1_n_0 ,\third_quarter_reg[5]_i_1_n_1 ,\third_quarter_reg[5]_i_1_n_2 ,\third_quarter_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,enable_frequency[5:3]}),
        .O(times_3[7:4]),
        .S({enable_frequency[6],\third_quarter[5]_i_2_n_0 ,\third_quarter[5]_i_3_n_0 ,\third_quarter[5]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \third_quarter_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(times_3[8]),
        .Q(third_quarter[6]),
        .R(1'b0));
  CARRY4 \third_quarter_reg[6]_i_1 
       (.CI(\third_quarter_reg[5]_i_1_n_0 ),
        .CO({\NLW_third_quarter_reg[6]_i_1_CO_UNCONNECTED [3:1],times_3[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_third_quarter_reg[6]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    tx_c
       (.C(clk125MHz90),
        .CE(1'b1),
        .D1(\doutclk_reg_n_0_[0] ),
        .D2(\doutclk_reg_n_0_[1] ),
        .Q(eth_txck_OBUF),
        .R(NLW_tx_c_R_UNCONNECTED),
        .S(NLW_tx_c_S_UNCONNECTED));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    tx_ctl
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D1(\doutctl_reg_n_0_[0] ),
        .D2(\doutctl_reg_n_0_[1] ),
        .Q(eth_txctl_OBUF),
        .R(NLW_tx_ctl_R_UNCONNECTED),
        .S(NLW_tx_ctl_S_UNCONNECTED));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    tx_d0
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D1(D1),
        .D2(D2),
        .Q(eth_txd_OBUF[0]),
        .R(NLW_tx_d0_R_UNCONNECTED),
        .S(NLW_tx_d0_S_UNCONNECTED));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    tx_d1
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D1(\dout_reg_n_0_[1] ),
        .D2(\dout_reg_n_0_[5] ),
        .Q(eth_txd_OBUF[1]),
        .R(NLW_tx_d1_R_UNCONNECTED),
        .S(NLW_tx_d1_S_UNCONNECTED));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    tx_d2
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D1(\dout_reg_n_0_[2] ),
        .D2(\dout_reg_n_0_[6] ),
        .Q(eth_txd_OBUF[2]),
        .R(NLW_tx_d2_R_UNCONNECTED),
        .S(NLW_tx_d2_S_UNCONNECTED));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    tx_d3
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D1(\dout_reg_n_0_[3] ),
        .D2(\dout_reg_n_0_[7] ),
        .Q(eth_txd_OBUF[3]),
        .R(NLW_tx_d3_R_UNCONNECTED),
        .S(NLW_tx_d3_S_UNCONNECTED));
endmodule

module starterBC
   (load_spi_stem_OBUF,
    done_reg,
    \data_reg[5] ,
    ethernet_out,
    \data_reg[4] ,
    \data_reg[3] ,
    \data_reg[2] ,
    \data_reg[1] ,
    \data_reg[0] ,
    spi_clk_out_stem_OBUF,
    DATA_SELECT_OBUF,
    clk125Mhz_OBUF_BUFG,
    start_IBUF_BUFG,
    CLK,
    Q,
    reset_control_IBUF,
    raw_data_user);
  output load_spi_stem_OBUF;
  output done_reg;
  output \data_reg[5] ;
  output [6:0]ethernet_out;
  output \data_reg[4] ;
  output \data_reg[3] ;
  output \data_reg[2] ;
  output \data_reg[1] ;
  output \data_reg[0] ;
  output spi_clk_out_stem_OBUF;
  output [5:0]DATA_SELECT_OBUF;
  input clk125Mhz_OBUF_BUFG;
  input start_IBUF_BUFG;
  input CLK;
  input [0:0]Q;
  input reset_control_IBUF;
  input raw_data_user;

  wire A;
  wire CLK;
  wire [5:0]DATA_SELECT_OBUF;
  wire [0:0]Q;
  wire addr_delay_i_1_n_0;
  wire addr_delay_i_2_n_0;
  wire addr_delay_reg_n_0;
  wire \channel_selector[0]_i_1_n_0 ;
  wire \channel_selector[1]_i_1_n_0 ;
  wire \channel_selector[2]_i_1_n_0 ;
  wire \channel_selector[3]_i_1_n_0 ;
  wire \channel_selector[4]_i_1_n_0 ;
  wire \channel_selector[5]_i_10_n_0 ;
  wire \channel_selector[5]_i_11_n_0 ;
  wire \channel_selector[5]_i_12_n_0 ;
  wire \channel_selector[5]_i_13_n_0 ;
  wire \channel_selector[5]_i_1_n_0 ;
  wire \channel_selector[5]_i_2_n_0 ;
  wire \channel_selector[5]_i_3_n_0 ;
  wire \channel_selector[5]_i_4_n_0 ;
  wire \channel_selector[5]_i_5_n_0 ;
  wire \channel_selector[5]_i_6_n_0 ;
  wire \channel_selector[5]_i_7_n_0 ;
  wire \channel_selector[5]_i_8_n_0 ;
  wire \channel_selector[5]_i_9_n_0 ;
  wire channel_set_up_done;
  wire channel_set_up_done_i_1_n_0;
  wire clk125Mhz_OBUF_BUFG;
  wire [19:1]data0;
  wire \data_reg[0] ;
  wire \data_reg[1] ;
  wire \data_reg[2] ;
  wire \data_reg[3] ;
  wire \data_reg[4] ;
  wire \data_reg[5] ;
  wire delay;
  wire \delay[0]_i_1_n_0 ;
  wire \delay[19]_i_1_n_0 ;
  wire \delay_reg[12]_i_1_n_0 ;
  wire \delay_reg[12]_i_1_n_1 ;
  wire \delay_reg[12]_i_1_n_2 ;
  wire \delay_reg[12]_i_1_n_3 ;
  wire \delay_reg[16]_i_1_n_0 ;
  wire \delay_reg[16]_i_1_n_1 ;
  wire \delay_reg[16]_i_1_n_2 ;
  wire \delay_reg[16]_i_1_n_3 ;
  wire \delay_reg[19]_i_3_n_2 ;
  wire \delay_reg[19]_i_3_n_3 ;
  wire \delay_reg[4]_i_1_n_0 ;
  wire \delay_reg[4]_i_1_n_1 ;
  wire \delay_reg[4]_i_1_n_2 ;
  wire \delay_reg[4]_i_1_n_3 ;
  wire \delay_reg[8]_i_1_n_0 ;
  wire \delay_reg[8]_i_1_n_1 ;
  wire \delay_reg[8]_i_1_n_2 ;
  wire \delay_reg[8]_i_1_n_3 ;
  wire done_reg;
  wire [6:0]ethernet_out;
  wire \ethernet_out[3]_i_1_n_0 ;
  wire \ethernet_out[4]_i_1_n_0 ;
  wire \ethernet_out[5]_i_1_n_0 ;
  wire load_spi_stem_OBUF;
  wire [8:0]p_0_in;
  wire [10:0]p_0_in_0;
  wire [8:0]p_1_in0_in;
  wire \psi_clk_counter[8]_i_1_n_0 ;
  wire \psi_clk_counter[8]_i_3_n_0 ;
  wire [8:0]psi_clk_counter_reg__0;
  wire psi_clk_i_1_n_0;
  wire psi_clk_i_2_n_0;
  wire raw_data_user;
  wire reset_control_IBUF;
  wire [8:0]sel0;
  wire set_up_delay_done_i_1_n_0;
  wire set_up_delay_done_i_2_n_0;
  wire set_up_delay_done_i_3_n_0;
  wire set_up_delay_done_i_4_n_0;
  wire set_up_delay_done_i_5_n_0;
  wire set_up_delay_done_reg_n_0;
  wire set_up_start_stem_i_1_n_0;
  wire set_up_start_stem_reg_n_0;
  wire spi_clk_out_stem_OBUF;
  wire standby;
  wire start_IBUF_BUFG;
  wire [0:0]state0;
  wire \state[1]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire \state_reg_n_0_[5] ;
  wire temp_clk;
  wire [8:0]temp_clk_counter;
  wire \temp_clk_counter[8]_i_1_n_0 ;
  wire \temp_clk_counter[8]_i_3_n_0 ;
  wire temp_clk_i_1_n_0;
  wire temp_clk_i_2_n_0;
  wire [3:2]\NLW_delay_reg[19]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_delay_reg[19]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00000006)) 
    addr_delay_i_1
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(A),
        .O(addr_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h31)) 
    addr_delay_i_2
       (.I0(\state_reg_n_0_[4] ),
        .I1(addr_delay_reg_n_0),
        .I2(raw_data_user),
        .O(addr_delay_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    addr_delay_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(addr_delay_i_1_n_0),
        .D(addr_delay_i_2_n_0),
        .Q(addr_delay_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \channel_selector[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\channel_selector[5]_i_6_n_0 ),
        .I2(DATA_SELECT_OBUF[0]),
        .O(\channel_selector[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0DD0)) 
    \channel_selector[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\channel_selector[5]_i_6_n_0 ),
        .I2(DATA_SELECT_OBUF[1]),
        .I3(DATA_SELECT_OBUF[0]),
        .O(\channel_selector[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0DD0D0D0)) 
    \channel_selector[2]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\channel_selector[5]_i_6_n_0 ),
        .I2(DATA_SELECT_OBUF[2]),
        .I3(DATA_SELECT_OBUF[0]),
        .I4(DATA_SELECT_OBUF[1]),
        .O(\channel_selector[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0DD0D0D0D0D0D0D0)) 
    \channel_selector[3]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\channel_selector[5]_i_6_n_0 ),
        .I2(DATA_SELECT_OBUF[3]),
        .I3(DATA_SELECT_OBUF[1]),
        .I4(DATA_SELECT_OBUF[0]),
        .I5(DATA_SELECT_OBUF[2]),
        .O(\channel_selector[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0DD0D0D0)) 
    \channel_selector[4]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\channel_selector[5]_i_6_n_0 ),
        .I2(DATA_SELECT_OBUF[4]),
        .I3(\channel_selector[5]_i_7_n_0 ),
        .I4(DATA_SELECT_OBUF[3]),
        .O(\channel_selector[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888888C)) 
    \channel_selector[5]_i_1 
       (.I0(\channel_selector[5]_i_4_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(A),
        .I3(\state_reg_n_0_[3] ),
        .I4(\channel_selector[5]_i_5_n_0 ),
        .O(\channel_selector[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \channel_selector[5]_i_10 
       (.I0(\state_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(addr_delay_reg_n_0),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(A),
        .O(\channel_selector[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \channel_selector[5]_i_11 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(\channel_selector[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \channel_selector[5]_i_12 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(sel0[6]),
        .I5(sel0[5]),
        .O(\channel_selector[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \channel_selector[5]_i_13 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[5]),
        .I2(p_0_in_0[6]),
        .I3(p_0_in_0[7]),
        .O(\channel_selector[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00030020)) 
    \channel_selector[5]_i_2 
       (.I0(\channel_selector[5]_i_6_n_0 ),
        .I1(\channel_selector[5]_i_5_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(A),
        .I4(\state_reg_n_0_[0] ),
        .I5(\channel_selector[5]_i_4_n_0 ),
        .O(\channel_selector[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0DD0D0D0D0D0D0D0)) 
    \channel_selector[5]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\channel_selector[5]_i_6_n_0 ),
        .I2(DATA_SELECT_OBUF[5]),
        .I3(DATA_SELECT_OBUF[4]),
        .I4(DATA_SELECT_OBUF[3]),
        .I5(\channel_selector[5]_i_7_n_0 ),
        .O(\channel_selector[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \channel_selector[5]_i_4 
       (.I0(\channel_selector[5]_i_8_n_0 ),
        .I1(channel_set_up_done),
        .I2(\channel_selector[5]_i_9_n_0 ),
        .I3(set_up_delay_done_i_2_n_0),
        .I4(\channel_selector[5]_i_10_n_0 ),
        .O(\channel_selector[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \channel_selector[5]_i_5 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .O(\channel_selector[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \channel_selector[5]_i_6 
       (.I0(\channel_selector[5]_i_11_n_0 ),
        .I1(sel0[8]),
        .I2(\channel_selector[5]_i_8_n_0 ),
        .I3(sel0[0]),
        .O(\channel_selector[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \channel_selector[5]_i_7 
       (.I0(DATA_SELECT_OBUF[1]),
        .I1(DATA_SELECT_OBUF[0]),
        .I2(DATA_SELECT_OBUF[2]),
        .O(\channel_selector[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \channel_selector[5]_i_8 
       (.I0(\channel_selector[5]_i_12_n_0 ),
        .I1(\channel_selector[5]_i_13_n_0 ),
        .I2(p_0_in_0[8]),
        .I3(p_0_in_0[9]),
        .I4(p_0_in_0[10]),
        .I5(sel0[7]),
        .O(\channel_selector[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \channel_selector[5]_i_9 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(sel0[8]),
        .I5(sel0[4]),
        .O(\channel_selector[5]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \channel_selector_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\channel_selector[5]_i_2_n_0 ),
        .D(\channel_selector[0]_i_1_n_0 ),
        .Q(DATA_SELECT_OBUF[0]),
        .S(\channel_selector[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \channel_selector_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\channel_selector[5]_i_2_n_0 ),
        .D(\channel_selector[1]_i_1_n_0 ),
        .Q(DATA_SELECT_OBUF[1]),
        .S(\channel_selector[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \channel_selector_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\channel_selector[5]_i_2_n_0 ),
        .D(\channel_selector[2]_i_1_n_0 ),
        .Q(DATA_SELECT_OBUF[2]),
        .S(\channel_selector[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \channel_selector_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\channel_selector[5]_i_2_n_0 ),
        .D(\channel_selector[3]_i_1_n_0 ),
        .Q(DATA_SELECT_OBUF[3]),
        .S(\channel_selector[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \channel_selector_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\channel_selector[5]_i_2_n_0 ),
        .D(\channel_selector[4]_i_1_n_0 ),
        .Q(DATA_SELECT_OBUF[4]),
        .S(\channel_selector[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \channel_selector_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(\channel_selector[5]_i_2_n_0 ),
        .D(\channel_selector[5]_i_3_n_0 ),
        .Q(DATA_SELECT_OBUF[5]),
        .S(\channel_selector[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00008000)) 
    channel_set_up_done_i_1
       (.I0(\channel_selector[5]_i_7_n_0 ),
        .I1(DATA_SELECT_OBUF[4]),
        .I2(DATA_SELECT_OBUF[3]),
        .I3(DATA_SELECT_OBUF[5]),
        .I4(reset_control_IBUF),
        .I5(channel_set_up_done),
        .O(channel_set_up_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    channel_set_up_done_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(channel_set_up_done_i_1_n_0),
        .Q(channel_set_up_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[0]_i_2 
       (.I0(ethernet_out[6]),
        .I1(Q),
        .I2(ethernet_out[0]),
        .O(\data_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[1]_i_2 
       (.I0(ethernet_out[6]),
        .I1(Q),
        .I2(ethernet_out[1]),
        .O(\data_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[2]_i_2 
       (.I0(ethernet_out[6]),
        .I1(Q),
        .I2(ethernet_out[2]),
        .O(\data_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[3]_i_2 
       (.I0(ethernet_out[6]),
        .I1(Q),
        .I2(ethernet_out[3]),
        .O(\data_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[4]_i_2 
       (.I0(ethernet_out[6]),
        .I1(Q),
        .I2(ethernet_out[4]),
        .O(\data_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[5]_i_2 
       (.I0(ethernet_out[6]),
        .I1(Q),
        .I2(ethernet_out[5]),
        .O(\data_reg[5] ));
  LUT1 #(
    .INIT(2'h1)) 
    \delay[0]_i_1 
       (.I0(sel0[0]),
        .O(\delay[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE9)) 
    \delay[19]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(A),
        .I4(\state_reg_n_0_[0] ),
        .O(\delay[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEB)) 
    \delay[19]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .O(delay));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(\delay[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[10] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[10]),
        .Q(p_0_in_0[9]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[11] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[11]),
        .Q(p_0_in_0[8]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[12] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[12]),
        .Q(p_0_in_0[7]),
        .R(\delay[19]_i_1_n_0 ));
  CARRY4 \delay_reg[12]_i_1 
       (.CI(\delay_reg[8]_i_1_n_0 ),
        .CO({\delay_reg[12]_i_1_n_0 ,\delay_reg[12]_i_1_n_1 ,\delay_reg[12]_i_1_n_2 ,\delay_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({p_0_in_0[7],p_0_in_0[8],p_0_in_0[9],p_0_in_0[10]}));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[13] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[13]),
        .Q(p_0_in_0[6]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[14] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[14]),
        .Q(p_0_in_0[5]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[15] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[15]),
        .Q(p_0_in_0[4]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[16] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[16]),
        .Q(p_0_in_0[3]),
        .R(\delay[19]_i_1_n_0 ));
  CARRY4 \delay_reg[16]_i_1 
       (.CI(\delay_reg[12]_i_1_n_0 ),
        .CO({\delay_reg[16]_i_1_n_0 ,\delay_reg[16]_i_1_n_1 ,\delay_reg[16]_i_1_n_2 ,\delay_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({p_0_in_0[3],p_0_in_0[4],p_0_in_0[5],p_0_in_0[6]}));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[17] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[17]),
        .Q(p_0_in_0[2]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[18] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[18]),
        .Q(p_0_in_0[1]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[19] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[19]),
        .Q(p_0_in_0[0]),
        .R(\delay[19]_i_1_n_0 ));
  CARRY4 \delay_reg[19]_i_3 
       (.CI(\delay_reg[16]_i_1_n_0 ),
        .CO({\NLW_delay_reg[19]_i_3_CO_UNCONNECTED [3:2],\delay_reg[19]_i_3_n_2 ,\delay_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_delay_reg[19]_i_3_O_UNCONNECTED [3],data0[19:17]}),
        .S({1'b0,p_0_in_0[0],p_0_in_0[1],p_0_in_0[2]}));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[1]),
        .Q(sel0[1]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[2]),
        .Q(sel0[2]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[3]),
        .Q(sel0[3]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[4]),
        .Q(sel0[4]),
        .R(\delay[19]_i_1_n_0 ));
  CARRY4 \delay_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\delay_reg[4]_i_1_n_0 ,\delay_reg[4]_i_1_n_1 ,\delay_reg[4]_i_1_n_2 ,\delay_reg[4]_i_1_n_3 }),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sel0[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[5]),
        .Q(sel0[5]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[6]),
        .Q(sel0[6]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[7]),
        .Q(sel0[7]),
        .R(\delay[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[8] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[8]),
        .Q(sel0[8]),
        .R(\delay[19]_i_1_n_0 ));
  CARRY4 \delay_reg[8]_i_1 
       (.CI(\delay_reg[4]_i_1_n_0 ),
        .CO({\delay_reg[8]_i_1_n_0 ,\delay_reg[8]_i_1_n_1 ,\delay_reg[8]_i_1_n_2 ,\delay_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sel0[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \delay_reg[9] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(delay),
        .D(data0[9]),
        .Q(p_0_in_0[10]),
        .R(\delay[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ethernet_out[3]_i_1 
       (.I0(A),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .O(\ethernet_out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ethernet_out[4]_i_1 
       (.I0(DATA_SELECT_OBUF[4]),
        .I1(\state_reg_n_0_[4] ),
        .O(\ethernet_out[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ethernet_out[5]_i_1 
       (.I0(DATA_SELECT_OBUF[5]),
        .I1(\state_reg_n_0_[4] ),
        .O(\ethernet_out[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ethernet_out_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(addr_delay_i_1_n_0),
        .D(DATA_SELECT_OBUF[0]),
        .Q(ethernet_out[0]),
        .R(\ethernet_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ethernet_out_reg[11] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(addr_delay_i_1_n_0),
        .D(\state_reg_n_0_[5] ),
        .Q(ethernet_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ethernet_out_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(addr_delay_i_1_n_0),
        .D(DATA_SELECT_OBUF[1]),
        .Q(ethernet_out[1]),
        .R(\ethernet_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ethernet_out_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(addr_delay_i_1_n_0),
        .D(DATA_SELECT_OBUF[2]),
        .Q(ethernet_out[2]),
        .R(\ethernet_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ethernet_out_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(addr_delay_i_1_n_0),
        .D(DATA_SELECT_OBUF[3]),
        .Q(ethernet_out[3]),
        .R(\ethernet_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ethernet_out_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(addr_delay_i_1_n_0),
        .D(\ethernet_out[4]_i_1_n_0 ),
        .Q(ethernet_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ethernet_out_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(addr_delay_i_1_n_0),
        .D(\ethernet_out[5]_i_1_n_0 ),
        .Q(ethernet_out[5]),
        .R(1'b0));
  structure_clocks generator
       (.clk125Mhz_OBUF_BUFG(clk125Mhz_OBUF_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    \psi_clk_counter[0]_i_1 
       (.I0(psi_clk_counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \psi_clk_counter[1]_i_1 
       (.I0(psi_clk_counter_reg__0[0]),
        .I1(psi_clk_counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \psi_clk_counter[2]_i_1 
       (.I0(psi_clk_counter_reg__0[1]),
        .I1(psi_clk_counter_reg__0[0]),
        .I2(psi_clk_counter_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \psi_clk_counter[3]_i_1 
       (.I0(psi_clk_counter_reg__0[2]),
        .I1(psi_clk_counter_reg__0[0]),
        .I2(psi_clk_counter_reg__0[1]),
        .I3(psi_clk_counter_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \psi_clk_counter[4]_i_1 
       (.I0(psi_clk_counter_reg__0[3]),
        .I1(psi_clk_counter_reg__0[1]),
        .I2(psi_clk_counter_reg__0[0]),
        .I3(psi_clk_counter_reg__0[2]),
        .I4(psi_clk_counter_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \psi_clk_counter[5]_i_1 
       (.I0(psi_clk_counter_reg__0[2]),
        .I1(psi_clk_counter_reg__0[0]),
        .I2(psi_clk_counter_reg__0[1]),
        .I3(psi_clk_counter_reg__0[3]),
        .I4(psi_clk_counter_reg__0[4]),
        .I5(psi_clk_counter_reg__0[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \psi_clk_counter[6]_i_1 
       (.I0(\psi_clk_counter[8]_i_3_n_0 ),
        .I1(psi_clk_counter_reg__0[5]),
        .I2(psi_clk_counter_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \psi_clk_counter[7]_i_1 
       (.I0(psi_clk_counter_reg__0[6]),
        .I1(psi_clk_counter_reg__0[5]),
        .I2(\psi_clk_counter[8]_i_3_n_0 ),
        .I3(psi_clk_counter_reg__0[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \psi_clk_counter[8]_i_1 
       (.I0(psi_clk_counter_reg__0[6]),
        .I1(psi_clk_counter_reg__0[5]),
        .I2(\psi_clk_counter[8]_i_3_n_0 ),
        .I3(psi_clk_counter_reg__0[7]),
        .I4(psi_clk_counter_reg__0[8]),
        .O(\psi_clk_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \psi_clk_counter[8]_i_2 
       (.I0(psi_clk_counter_reg__0[7]),
        .I1(\psi_clk_counter[8]_i_3_n_0 ),
        .I2(psi_clk_counter_reg__0[5]),
        .I3(psi_clk_counter_reg__0[6]),
        .I4(psi_clk_counter_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \psi_clk_counter[8]_i_3 
       (.I0(psi_clk_counter_reg__0[4]),
        .I1(psi_clk_counter_reg__0[3]),
        .I2(psi_clk_counter_reg__0[1]),
        .I3(psi_clk_counter_reg__0[0]),
        .I4(psi_clk_counter_reg__0[2]),
        .O(\psi_clk_counter[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(psi_clk_counter_reg__0[0]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(psi_clk_counter_reg__0[1]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(psi_clk_counter_reg__0[2]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(psi_clk_counter_reg__0[3]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(psi_clk_counter_reg__0[4]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(psi_clk_counter_reg__0[5]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(psi_clk_counter_reg__0[6]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(psi_clk_counter_reg__0[7]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \psi_clk_counter_reg[8] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(psi_clk_counter_reg__0[8]),
        .R(\psi_clk_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3D3F3F3F3CB)) 
    psi_clk_i_1
       (.I0(psi_clk_i_2_n_0),
        .I1(psi_clk_counter_reg__0[7]),
        .I2(psi_clk_counter_reg__0[8]),
        .I3(psi_clk_counter_reg__0[5]),
        .I4(psi_clk_counter_reg__0[6]),
        .I5(psi_clk_counter_reg__0[4]),
        .O(psi_clk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    psi_clk_i_2
       (.I0(psi_clk_counter_reg__0[2]),
        .I1(psi_clk_counter_reg__0[0]),
        .I2(psi_clk_counter_reg__0[1]),
        .I3(psi_clk_counter_reg__0[3]),
        .O(psi_clk_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    psi_clk_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(psi_clk_i_1_n_0),
        .Q(done_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    set_up_delay_done_i_1
       (.I0(set_up_delay_done_i_2_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(set_up_delay_done_i_3_n_0),
        .I3(set_up_delay_done_i_4_n_0),
        .I4(set_up_delay_done_i_5_n_0),
        .I5(set_up_delay_done_reg_n_0),
        .O(set_up_delay_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    set_up_delay_done_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(A),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[5] ),
        .I4(\state_reg_n_0_[4] ),
        .O(set_up_delay_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    set_up_delay_done_i_3
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[8]),
        .I4(sel0[4]),
        .O(set_up_delay_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    set_up_delay_done_i_4
       (.I0(\channel_selector[5]_i_8_n_0 ),
        .I1(sel0[0]),
        .O(set_up_delay_done_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFEFEEF)) 
    set_up_delay_done_i_5
       (.I0(\state_reg_n_0_[0] ),
        .I1(A),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[5] ),
        .O(set_up_delay_done_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    set_up_delay_done_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(set_up_delay_done_i_1_n_0),
        .Q(set_up_delay_done_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000600000004)) 
    set_up_start_stem_i_1
       (.I0(A),
        .I1(\state_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(set_up_start_stem_reg_n_0),
        .O(set_up_start_stem_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    set_up_start_stem_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(set_up_start_stem_i_1_n_0),
        .Q(set_up_start_stem_reg_n_0),
        .R(1'b0));
  PSI_stem set_up_stem
       (.CLK(CLK),
        .load_spi_stem_OBUF(load_spi_stem_OBUF),
        .reset_control_IBUF(reset_control_IBUF),
        .set_up_start_stem_reg(set_up_start_stem_reg_n_0),
        .spi_clk_out_stem_OBUF(spi_clk_out_stem_OBUF),
        .temp_clk(temp_clk));
  FDRE #(
    .INIT(1'b1)) 
    standby_reg
       (.C(start_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(standby),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \state[0]_i_1 
       (.I0(standby),
        .I1(\state_reg_n_0_[0] ),
        .O(state0));
  LUT4 #(
    .INIT(16'hFF40)) 
    \state[1]_i_1 
       (.I0(channel_set_up_done),
        .I1(\state_reg_n_0_[3] ),
        .I2(set_up_delay_done_reg_n_0),
        .I3(A),
        .O(\state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \state[3]_i_1 
       (.I0(standby),
        .I1(\state_reg_n_0_[0] ),
        .I2(set_up_delay_done_reg_n_0),
        .I3(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF80FFFFFF808080)) 
    \state[4]_i_1 
       (.I0(set_up_delay_done_reg_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(channel_set_up_done),
        .I3(\state_reg_n_0_[5] ),
        .I4(addr_delay_reg_n_0),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state[5]_i_1 
       (.I0(\state_reg_n_0_[4] ),
        .I1(addr_delay_reg_n_0),
        .I2(\state_reg_n_0_[5] ),
        .O(\state[5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(state0),
        .Q(\state_reg_n_0_[0] ),
        .S(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(A),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\state[3]_i_1_n_0 ),
        .Q(\state_reg_n_0_[3] ),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b1)) 
    \state_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ),
        .R(reset_control_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(\state[5]_i_1_n_0 ),
        .Q(\state_reg_n_0_[5] ),
        .R(reset_control_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \temp_clk_counter[0]_i_1 
       (.I0(temp_clk_counter[0]),
        .O(p_1_in0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \temp_clk_counter[1]_i_1 
       (.I0(temp_clk_counter[0]),
        .I1(temp_clk_counter[1]),
        .O(p_1_in0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \temp_clk_counter[2]_i_1 
       (.I0(temp_clk_counter[1]),
        .I1(temp_clk_counter[0]),
        .I2(temp_clk_counter[2]),
        .O(p_1_in0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \temp_clk_counter[3]_i_1 
       (.I0(temp_clk_counter[2]),
        .I1(temp_clk_counter[0]),
        .I2(temp_clk_counter[1]),
        .I3(temp_clk_counter[3]),
        .O(p_1_in0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \temp_clk_counter[4]_i_1 
       (.I0(temp_clk_counter[3]),
        .I1(temp_clk_counter[1]),
        .I2(temp_clk_counter[0]),
        .I3(temp_clk_counter[2]),
        .I4(temp_clk_counter[4]),
        .O(p_1_in0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \temp_clk_counter[5]_i_1 
       (.I0(temp_clk_counter[4]),
        .I1(temp_clk_counter[2]),
        .I2(temp_clk_counter[0]),
        .I3(temp_clk_counter[1]),
        .I4(temp_clk_counter[3]),
        .I5(temp_clk_counter[5]),
        .O(p_1_in0_in[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \temp_clk_counter[6]_i_1 
       (.I0(temp_clk_counter[5]),
        .I1(\temp_clk_counter[8]_i_3_n_0 ),
        .I2(temp_clk_counter[6]),
        .O(p_1_in0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \temp_clk_counter[7]_i_1 
       (.I0(temp_clk_counter[6]),
        .I1(\temp_clk_counter[8]_i_3_n_0 ),
        .I2(temp_clk_counter[5]),
        .I3(temp_clk_counter[7]),
        .O(p_1_in0_in[7]));
  LUT5 #(
    .INIT(32'hFF00EF00)) 
    \temp_clk_counter[8]_i_1 
       (.I0(temp_clk_counter[6]),
        .I1(temp_clk_counter[5]),
        .I2(\temp_clk_counter[8]_i_3_n_0 ),
        .I3(temp_clk_counter[8]),
        .I4(temp_clk_counter[7]),
        .O(\temp_clk_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \temp_clk_counter[8]_i_2 
       (.I0(temp_clk_counter[7]),
        .I1(temp_clk_counter[5]),
        .I2(\temp_clk_counter[8]_i_3_n_0 ),
        .I3(temp_clk_counter[6]),
        .I4(temp_clk_counter[8]),
        .O(p_1_in0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \temp_clk_counter[8]_i_3 
       (.I0(temp_clk_counter[3]),
        .I1(temp_clk_counter[1]),
        .I2(temp_clk_counter[0]),
        .I3(temp_clk_counter[2]),
        .I4(temp_clk_counter[4]),
        .O(\temp_clk_counter[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_clk_counter_reg[0] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[0]),
        .Q(temp_clk_counter[0]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_clk_counter_reg[1] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[1]),
        .Q(temp_clk_counter[1]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_clk_counter_reg[2] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[2]),
        .Q(temp_clk_counter[2]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \temp_clk_counter_reg[3] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[3]),
        .Q(temp_clk_counter[3]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \temp_clk_counter_reg[4] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[4]),
        .Q(temp_clk_counter[4]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_clk_counter_reg[5] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[5]),
        .Q(temp_clk_counter[5]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \temp_clk_counter_reg[6] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[6]),
        .Q(temp_clk_counter[6]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \temp_clk_counter_reg[7] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[7]),
        .Q(temp_clk_counter[7]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_clk_counter_reg[8] 
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in0_in[8]),
        .Q(temp_clk_counter[8]),
        .R(\temp_clk_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB9BBBDBBBBBBB9)) 
    temp_clk_i_1
       (.I0(temp_clk_counter[8]),
        .I1(temp_clk_counter[7]),
        .I2(temp_clk_counter[6]),
        .I3(temp_clk_counter[5]),
        .I4(temp_clk_counter[4]),
        .I5(temp_clk_i_2_n_0),
        .O(temp_clk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    temp_clk_i_2
       (.I0(temp_clk_counter[2]),
        .I1(temp_clk_counter[0]),
        .I2(temp_clk_counter[1]),
        .I3(temp_clk_counter[3]),
        .O(temp_clk_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    temp_clk_reg
       (.C(clk125Mhz_OBUF_BUFG),
        .CE(1'b1),
        .D(temp_clk_i_1_n_0),
        .Q(temp_clk),
        .R(1'b0));
endmodule

module structure_clocks
   (clk125Mhz_OBUF_BUFG);
  input clk125Mhz_OBUF_BUFG;

  wire clk125Mhz_OBUF_BUFG;

  clk_booster high_f_clk1
       (.clk125Mhz_OBUF_BUFG(clk125Mhz_OBUF_BUFG));
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
