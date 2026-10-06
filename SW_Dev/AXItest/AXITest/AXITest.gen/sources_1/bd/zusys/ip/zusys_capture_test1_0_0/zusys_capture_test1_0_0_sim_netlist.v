// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Oct  3 15:02:54 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jackson/projects/Kestrel/AXItest/AXITest/AXITest.gen/sources_1/bd/zusys/ip/zusys_capture_test1_0_0/zusys_capture_test1_0_0_sim_netlist.v
// Design      : zusys_capture_test1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zusys_capture_test1_0_0,capture_test1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "capture_test1,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module zusys_capture_test1_0_0
   (clk,
    rstn,
    cap_enable,
    frame_cnt_target,
    cap_status,
    frame_cnt);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* X_INTERFACE_IGNORE = "true" *) input cap_enable;
  input [31:0]frame_cnt_target;
  output cap_status;
  output [31:0]frame_cnt;

  wire cap_enable;
  wire cap_status;
  wire clk;
  wire [31:0]frame_cnt;
  wire [31:0]frame_cnt_target;
  wire rstn;

  zusys_capture_test1_0_0_capture_test1 inst
       (.cap_enable(cap_enable),
        .cap_status_reg_0(cap_status),
        .clk(clk),
        .frame_cnt(frame_cnt),
        .frame_cnt_target(frame_cnt_target),
        .rstn(rstn));
endmodule

(* ORIG_REF_NAME = "capture_test1" *) 
module zusys_capture_test1_0_0_capture_test1
   (cap_status_reg_0,
    frame_cnt,
    cap_enable,
    clk,
    rstn,
    frame_cnt_target);
  output cap_status_reg_0;
  output [31:0]frame_cnt;
  input cap_enable;
  input clk;
  input rstn;
  input [31:0]frame_cnt_target;

  wire cap_enable;
  wire cap_status0_out;
  wire cap_status_i_10_n_0;
  wire cap_status_i_11_n_0;
  wire cap_status_i_12_n_0;
  wire cap_status_i_2_n_0;
  wire cap_status_i_4_n_0;
  wire cap_status_i_5_n_0;
  wire cap_status_i_6_n_0;
  wire cap_status_i_7_n_0;
  wire cap_status_i_8_n_0;
  wire cap_status_i_9_n_0;
  wire cap_status_reg_0;
  wire clk;
  wire [31:1]data0;
  wire en_d;
  wire [31:0]frame_cnt;
  wire \frame_cnt[31]_i_10_n_0 ;
  wire \frame_cnt[31]_i_11_n_0 ;
  wire \frame_cnt[31]_i_12_n_0 ;
  wire \frame_cnt[31]_i_13_n_0 ;
  wire \frame_cnt[31]_i_1_n_0 ;
  wire \frame_cnt[31]_i_2_n_0 ;
  wire \frame_cnt[31]_i_4_n_0 ;
  wire \frame_cnt[31]_i_5_n_0 ;
  wire \frame_cnt[31]_i_6_n_0 ;
  wire \frame_cnt[31]_i_7_n_0 ;
  wire \frame_cnt[31]_i_8_n_0 ;
  wire \frame_cnt[31]_i_9_n_0 ;
  wire \frame_cnt[7]_i_2_n_0 ;
  wire \frame_cnt_reg[15]_i_1_n_0 ;
  wire \frame_cnt_reg[15]_i_1_n_1 ;
  wire \frame_cnt_reg[15]_i_1_n_10 ;
  wire \frame_cnt_reg[15]_i_1_n_11 ;
  wire \frame_cnt_reg[15]_i_1_n_12 ;
  wire \frame_cnt_reg[15]_i_1_n_13 ;
  wire \frame_cnt_reg[15]_i_1_n_14 ;
  wire \frame_cnt_reg[15]_i_1_n_15 ;
  wire \frame_cnt_reg[15]_i_1_n_2 ;
  wire \frame_cnt_reg[15]_i_1_n_3 ;
  wire \frame_cnt_reg[15]_i_1_n_4 ;
  wire \frame_cnt_reg[15]_i_1_n_5 ;
  wire \frame_cnt_reg[15]_i_1_n_6 ;
  wire \frame_cnt_reg[15]_i_1_n_7 ;
  wire \frame_cnt_reg[15]_i_1_n_8 ;
  wire \frame_cnt_reg[15]_i_1_n_9 ;
  wire \frame_cnt_reg[23]_i_1_n_0 ;
  wire \frame_cnt_reg[23]_i_1_n_1 ;
  wire \frame_cnt_reg[23]_i_1_n_10 ;
  wire \frame_cnt_reg[23]_i_1_n_11 ;
  wire \frame_cnt_reg[23]_i_1_n_12 ;
  wire \frame_cnt_reg[23]_i_1_n_13 ;
  wire \frame_cnt_reg[23]_i_1_n_14 ;
  wire \frame_cnt_reg[23]_i_1_n_15 ;
  wire \frame_cnt_reg[23]_i_1_n_2 ;
  wire \frame_cnt_reg[23]_i_1_n_3 ;
  wire \frame_cnt_reg[23]_i_1_n_4 ;
  wire \frame_cnt_reg[23]_i_1_n_5 ;
  wire \frame_cnt_reg[23]_i_1_n_6 ;
  wire \frame_cnt_reg[23]_i_1_n_7 ;
  wire \frame_cnt_reg[23]_i_1_n_8 ;
  wire \frame_cnt_reg[23]_i_1_n_9 ;
  wire \frame_cnt_reg[31]_i_3_n_1 ;
  wire \frame_cnt_reg[31]_i_3_n_10 ;
  wire \frame_cnt_reg[31]_i_3_n_11 ;
  wire \frame_cnt_reg[31]_i_3_n_12 ;
  wire \frame_cnt_reg[31]_i_3_n_13 ;
  wire \frame_cnt_reg[31]_i_3_n_14 ;
  wire \frame_cnt_reg[31]_i_3_n_15 ;
  wire \frame_cnt_reg[31]_i_3_n_2 ;
  wire \frame_cnt_reg[31]_i_3_n_3 ;
  wire \frame_cnt_reg[31]_i_3_n_4 ;
  wire \frame_cnt_reg[31]_i_3_n_5 ;
  wire \frame_cnt_reg[31]_i_3_n_6 ;
  wire \frame_cnt_reg[31]_i_3_n_7 ;
  wire \frame_cnt_reg[31]_i_3_n_8 ;
  wire \frame_cnt_reg[31]_i_3_n_9 ;
  wire \frame_cnt_reg[7]_i_1_n_0 ;
  wire \frame_cnt_reg[7]_i_1_n_1 ;
  wire \frame_cnt_reg[7]_i_1_n_10 ;
  wire \frame_cnt_reg[7]_i_1_n_11 ;
  wire \frame_cnt_reg[7]_i_1_n_12 ;
  wire \frame_cnt_reg[7]_i_1_n_13 ;
  wire \frame_cnt_reg[7]_i_1_n_14 ;
  wire \frame_cnt_reg[7]_i_1_n_15 ;
  wire \frame_cnt_reg[7]_i_1_n_2 ;
  wire \frame_cnt_reg[7]_i_1_n_3 ;
  wire \frame_cnt_reg[7]_i_1_n_4 ;
  wire \frame_cnt_reg[7]_i_1_n_5 ;
  wire \frame_cnt_reg[7]_i_1_n_6 ;
  wire \frame_cnt_reg[7]_i_1_n_7 ;
  wire \frame_cnt_reg[7]_i_1_n_8 ;
  wire \frame_cnt_reg[7]_i_1_n_9 ;
  wire [31:0]frame_cnt_target;
  wire p_0_in;
  wire rstn;
  wire [31:0]tick;
  wire tick3;
  wire tick3_carry__0_i_10_n_0;
  wire tick3_carry__0_i_11_n_0;
  wire tick3_carry__0_i_12_n_0;
  wire tick3_carry__0_i_13_n_0;
  wire tick3_carry__0_i_14_n_0;
  wire tick3_carry__0_i_15_n_0;
  wire tick3_carry__0_i_16_n_0;
  wire tick3_carry__0_i_1_n_0;
  wire tick3_carry__0_i_2_n_0;
  wire tick3_carry__0_i_3_n_0;
  wire tick3_carry__0_i_4_n_0;
  wire tick3_carry__0_i_5_n_0;
  wire tick3_carry__0_i_6_n_0;
  wire tick3_carry__0_i_7_n_0;
  wire tick3_carry__0_i_8_n_0;
  wire tick3_carry__0_i_9_n_0;
  wire tick3_carry__0_n_1;
  wire tick3_carry__0_n_2;
  wire tick3_carry__0_n_3;
  wire tick3_carry__0_n_4;
  wire tick3_carry__0_n_5;
  wire tick3_carry__0_n_6;
  wire tick3_carry__0_n_7;
  wire tick3_carry_i_10_n_0;
  wire tick3_carry_i_11_n_0;
  wire tick3_carry_i_12_n_0;
  wire tick3_carry_i_13_n_0;
  wire tick3_carry_i_14_n_0;
  wire tick3_carry_i_15_n_0;
  wire tick3_carry_i_16_n_0;
  wire tick3_carry_i_1_n_0;
  wire tick3_carry_i_2_n_0;
  wire tick3_carry_i_3_n_0;
  wire tick3_carry_i_4_n_0;
  wire tick3_carry_i_5_n_0;
  wire tick3_carry_i_6_n_0;
  wire tick3_carry_i_7_n_0;
  wire tick3_carry_i_8_n_0;
  wire tick3_carry_i_9_n_0;
  wire tick3_carry_n_0;
  wire tick3_carry_n_1;
  wire tick3_carry_n_2;
  wire tick3_carry_n_3;
  wire tick3_carry_n_4;
  wire tick3_carry_n_5;
  wire tick3_carry_n_6;
  wire tick3_carry_n_7;
  wire \tick[31]_i_1_n_0 ;
  wire [31:0]tick_0;
  wire \tick_reg[16]_i_2_n_0 ;
  wire \tick_reg[16]_i_2_n_1 ;
  wire \tick_reg[16]_i_2_n_2 ;
  wire \tick_reg[16]_i_2_n_3 ;
  wire \tick_reg[16]_i_2_n_4 ;
  wire \tick_reg[16]_i_2_n_5 ;
  wire \tick_reg[16]_i_2_n_6 ;
  wire \tick_reg[16]_i_2_n_7 ;
  wire \tick_reg[24]_i_2_n_0 ;
  wire \tick_reg[24]_i_2_n_1 ;
  wire \tick_reg[24]_i_2_n_2 ;
  wire \tick_reg[24]_i_2_n_3 ;
  wire \tick_reg[24]_i_2_n_4 ;
  wire \tick_reg[24]_i_2_n_5 ;
  wire \tick_reg[24]_i_2_n_6 ;
  wire \tick_reg[24]_i_2_n_7 ;
  wire \tick_reg[31]_i_3_n_2 ;
  wire \tick_reg[31]_i_3_n_3 ;
  wire \tick_reg[31]_i_3_n_4 ;
  wire \tick_reg[31]_i_3_n_5 ;
  wire \tick_reg[31]_i_3_n_6 ;
  wire \tick_reg[31]_i_3_n_7 ;
  wire \tick_reg[8]_i_2_n_0 ;
  wire \tick_reg[8]_i_2_n_1 ;
  wire \tick_reg[8]_i_2_n_2 ;
  wire \tick_reg[8]_i_2_n_3 ;
  wire \tick_reg[8]_i_2_n_4 ;
  wire \tick_reg[8]_i_2_n_5 ;
  wire \tick_reg[8]_i_2_n_6 ;
  wire \tick_reg[8]_i_2_n_7 ;
  wire [7:7]\NLW_frame_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:0]NLW_tick3_carry_O_UNCONNECTED;
  wire [7:0]NLW_tick3_carry__0_O_UNCONNECTED;
  wire [7:6]\NLW_tick_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_tick_reg[31]_i_3_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    cap_status_i_1
       (.I0(rstn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cap_status_i_10
       (.I0(frame_cnt_target[25]),
        .I1(frame_cnt_target[24]),
        .I2(frame_cnt_target[27]),
        .I3(frame_cnt_target[26]),
        .O(cap_status_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cap_status_i_11
       (.I0(frame_cnt_target[5]),
        .I1(frame_cnt_target[4]),
        .I2(frame_cnt_target[7]),
        .I3(frame_cnt_target[6]),
        .O(cap_status_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cap_status_i_12
       (.I0(frame_cnt_target[13]),
        .I1(frame_cnt_target[12]),
        .I2(frame_cnt_target[15]),
        .I3(frame_cnt_target[14]),
        .O(cap_status_i_12_n_0));
  LUT4 #(
    .INIT(16'h7530)) 
    cap_status_i_2
       (.I0(cap_status0_out),
        .I1(en_d),
        .I2(cap_enable),
        .I3(cap_status_reg_0),
        .O(cap_status_i_2_n_0));
  LUT6 #(
    .INIT(64'hF0F0E0F000F000F0)) 
    cap_status_i_3
       (.I0(cap_status_i_4_n_0),
        .I1(cap_status_i_5_n_0),
        .I2(cap_status_reg_0),
        .I3(cap_enable),
        .I4(cap_status_i_6_n_0),
        .I5(tick3),
        .O(cap_status0_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cap_status_i_4
       (.I0(cap_status_i_7_n_0),
        .I1(frame_cnt_target[17]),
        .I2(frame_cnt_target[16]),
        .I3(cap_status_i_8_n_0),
        .I4(cap_status_i_9_n_0),
        .I5(cap_status_i_10_n_0),
        .O(cap_status_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cap_status_i_5
       (.I0(frame_cnt_target[2]),
        .I1(frame_cnt_target[3]),
        .I2(frame_cnt_target[0]),
        .I3(frame_cnt_target[1]),
        .I4(cap_status_i_11_n_0),
        .O(cap_status_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cap_status_i_6
       (.I0(frame_cnt_target[10]),
        .I1(frame_cnt_target[11]),
        .I2(frame_cnt_target[8]),
        .I3(frame_cnt_target[9]),
        .I4(cap_status_i_12_n_0),
        .O(cap_status_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cap_status_i_7
       (.I0(frame_cnt_target[21]),
        .I1(frame_cnt_target[20]),
        .I2(frame_cnt_target[23]),
        .I3(frame_cnt_target[22]),
        .O(cap_status_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cap_status_i_8
       (.I0(frame_cnt_target[18]),
        .I1(frame_cnt_target[19]),
        .O(cap_status_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cap_status_i_9
       (.I0(frame_cnt_target[29]),
        .I1(frame_cnt_target[28]),
        .I2(frame_cnt_target[31]),
        .I3(frame_cnt_target[30]),
        .O(cap_status_i_9_n_0));
  FDRE cap_status_reg
       (.C(clk),
        .CE(1'b1),
        .D(cap_status_i_2_n_0),
        .Q(cap_status_reg_0),
        .R(p_0_in));
  FDRE en_d_reg
       (.C(clk),
        .CE(1'b1),
        .D(cap_enable),
        .Q(en_d),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h4F)) 
    \frame_cnt[31]_i_1 
       (.I0(en_d),
        .I1(cap_enable),
        .I2(rstn),
        .O(\frame_cnt[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame_cnt[31]_i_10 
       (.I0(tick[13]),
        .I1(tick[12]),
        .I2(tick[15]),
        .I3(tick[14]),
        .O(\frame_cnt[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \frame_cnt[31]_i_11 
       (.I0(tick[5]),
        .I1(tick[4]),
        .I2(tick[7]),
        .I3(tick[6]),
        .O(\frame_cnt[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame_cnt[31]_i_12 
       (.I0(tick[29]),
        .I1(tick[28]),
        .I2(tick[31]),
        .I3(tick[30]),
        .O(\frame_cnt[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame_cnt[31]_i_13 
       (.I0(tick[21]),
        .I1(tick[20]),
        .I2(tick[23]),
        .I3(tick[22]),
        .O(\frame_cnt[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \frame_cnt[31]_i_2 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(cap_status_reg_0),
        .I2(cap_enable),
        .I3(\frame_cnt[31]_i_5_n_0 ),
        .O(\frame_cnt[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame_cnt[31]_i_4 
       (.I0(\frame_cnt[31]_i_6_n_0 ),
        .I1(\frame_cnt[31]_i_7_n_0 ),
        .I2(\frame_cnt[31]_i_8_n_0 ),
        .I3(\frame_cnt[31]_i_9_n_0 ),
        .O(\frame_cnt[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \frame_cnt[31]_i_5 
       (.I0(cap_status_i_4_n_0),
        .I1(cap_status_i_5_n_0),
        .I2(cap_status_i_6_n_0),
        .I3(tick3),
        .O(\frame_cnt[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \frame_cnt[31]_i_6 
       (.I0(tick[10]),
        .I1(tick[11]),
        .I2(tick[9]),
        .I3(tick[8]),
        .I4(\frame_cnt[31]_i_10_n_0 ),
        .O(\frame_cnt[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \frame_cnt[31]_i_7 
       (.I0(tick[2]),
        .I1(tick[3]),
        .I2(tick[0]),
        .I3(tick[1]),
        .I4(\frame_cnt[31]_i_11_n_0 ),
        .O(\frame_cnt[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \frame_cnt[31]_i_8 
       (.I0(tick[26]),
        .I1(tick[27]),
        .I2(tick[24]),
        .I3(tick[25]),
        .I4(\frame_cnt[31]_i_12_n_0 ),
        .O(\frame_cnt[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \frame_cnt[31]_i_9 
       (.I0(tick[18]),
        .I1(tick[19]),
        .I2(tick[16]),
        .I3(tick[17]),
        .I4(\frame_cnt[31]_i_13_n_0 ),
        .O(\frame_cnt[31]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_cnt[7]_i_2 
       (.I0(frame_cnt[0]),
        .O(\frame_cnt[7]_i_2_n_0 ));
  FDRE \frame_cnt_reg[0] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_15 ),
        .Q(frame_cnt[0]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[10] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_13 ),
        .Q(frame_cnt[10]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[11] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_12 ),
        .Q(frame_cnt[11]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[12] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_11 ),
        .Q(frame_cnt[12]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[13] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_10 ),
        .Q(frame_cnt[13]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[14] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_9 ),
        .Q(frame_cnt[14]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[15] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_8 ),
        .Q(frame_cnt[15]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \frame_cnt_reg[15]_i_1 
       (.CI(\frame_cnt_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\frame_cnt_reg[15]_i_1_n_0 ,\frame_cnt_reg[15]_i_1_n_1 ,\frame_cnt_reg[15]_i_1_n_2 ,\frame_cnt_reg[15]_i_1_n_3 ,\frame_cnt_reg[15]_i_1_n_4 ,\frame_cnt_reg[15]_i_1_n_5 ,\frame_cnt_reg[15]_i_1_n_6 ,\frame_cnt_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_cnt_reg[15]_i_1_n_8 ,\frame_cnt_reg[15]_i_1_n_9 ,\frame_cnt_reg[15]_i_1_n_10 ,\frame_cnt_reg[15]_i_1_n_11 ,\frame_cnt_reg[15]_i_1_n_12 ,\frame_cnt_reg[15]_i_1_n_13 ,\frame_cnt_reg[15]_i_1_n_14 ,\frame_cnt_reg[15]_i_1_n_15 }),
        .S(frame_cnt[15:8]));
  FDRE \frame_cnt_reg[16] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_15 ),
        .Q(frame_cnt[16]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[17] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_14 ),
        .Q(frame_cnt[17]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[18] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_13 ),
        .Q(frame_cnt[18]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[19] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_12 ),
        .Q(frame_cnt[19]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[1] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_14 ),
        .Q(frame_cnt[1]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[20] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_11 ),
        .Q(frame_cnt[20]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[21] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_10 ),
        .Q(frame_cnt[21]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[22] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_9 ),
        .Q(frame_cnt[22]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[23] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_8 ),
        .Q(frame_cnt[23]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \frame_cnt_reg[23]_i_1 
       (.CI(\frame_cnt_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\frame_cnt_reg[23]_i_1_n_0 ,\frame_cnt_reg[23]_i_1_n_1 ,\frame_cnt_reg[23]_i_1_n_2 ,\frame_cnt_reg[23]_i_1_n_3 ,\frame_cnt_reg[23]_i_1_n_4 ,\frame_cnt_reg[23]_i_1_n_5 ,\frame_cnt_reg[23]_i_1_n_6 ,\frame_cnt_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_cnt_reg[23]_i_1_n_8 ,\frame_cnt_reg[23]_i_1_n_9 ,\frame_cnt_reg[23]_i_1_n_10 ,\frame_cnt_reg[23]_i_1_n_11 ,\frame_cnt_reg[23]_i_1_n_12 ,\frame_cnt_reg[23]_i_1_n_13 ,\frame_cnt_reg[23]_i_1_n_14 ,\frame_cnt_reg[23]_i_1_n_15 }),
        .S(frame_cnt[23:16]));
  FDRE \frame_cnt_reg[24] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_15 ),
        .Q(frame_cnt[24]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[25] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_14 ),
        .Q(frame_cnt[25]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[26] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_13 ),
        .Q(frame_cnt[26]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[27] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_12 ),
        .Q(frame_cnt[27]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[28] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_11 ),
        .Q(frame_cnt[28]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[29] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_10 ),
        .Q(frame_cnt[29]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[2] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_13 ),
        .Q(frame_cnt[2]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[30] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_9 ),
        .Q(frame_cnt[30]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[31] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_8 ),
        .Q(frame_cnt[31]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \frame_cnt_reg[31]_i_3 
       (.CI(\frame_cnt_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_frame_cnt_reg[31]_i_3_CO_UNCONNECTED [7],\frame_cnt_reg[31]_i_3_n_1 ,\frame_cnt_reg[31]_i_3_n_2 ,\frame_cnt_reg[31]_i_3_n_3 ,\frame_cnt_reg[31]_i_3_n_4 ,\frame_cnt_reg[31]_i_3_n_5 ,\frame_cnt_reg[31]_i_3_n_6 ,\frame_cnt_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_cnt_reg[31]_i_3_n_8 ,\frame_cnt_reg[31]_i_3_n_9 ,\frame_cnt_reg[31]_i_3_n_10 ,\frame_cnt_reg[31]_i_3_n_11 ,\frame_cnt_reg[31]_i_3_n_12 ,\frame_cnt_reg[31]_i_3_n_13 ,\frame_cnt_reg[31]_i_3_n_14 ,\frame_cnt_reg[31]_i_3_n_15 }),
        .S(frame_cnt[31:24]));
  FDRE \frame_cnt_reg[3] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_12 ),
        .Q(frame_cnt[3]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[4] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_11 ),
        .Q(frame_cnt[4]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[5] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_10 ),
        .Q(frame_cnt[5]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[6] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_9 ),
        .Q(frame_cnt[6]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[7] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_8 ),
        .Q(frame_cnt[7]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \frame_cnt_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\frame_cnt_reg[7]_i_1_n_0 ,\frame_cnt_reg[7]_i_1_n_1 ,\frame_cnt_reg[7]_i_1_n_2 ,\frame_cnt_reg[7]_i_1_n_3 ,\frame_cnt_reg[7]_i_1_n_4 ,\frame_cnt_reg[7]_i_1_n_5 ,\frame_cnt_reg[7]_i_1_n_6 ,\frame_cnt_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_cnt_reg[7]_i_1_n_8 ,\frame_cnt_reg[7]_i_1_n_9 ,\frame_cnt_reg[7]_i_1_n_10 ,\frame_cnt_reg[7]_i_1_n_11 ,\frame_cnt_reg[7]_i_1_n_12 ,\frame_cnt_reg[7]_i_1_n_13 ,\frame_cnt_reg[7]_i_1_n_14 ,\frame_cnt_reg[7]_i_1_n_15 }),
        .S({frame_cnt[7:1],\frame_cnt[7]_i_2_n_0 }));
  FDRE \frame_cnt_reg[8] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_15 ),
        .Q(frame_cnt[8]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[9] 
       (.C(clk),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_14 ),
        .Q(frame_cnt[9]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 tick3_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({tick3_carry_n_0,tick3_carry_n_1,tick3_carry_n_2,tick3_carry_n_3,tick3_carry_n_4,tick3_carry_n_5,tick3_carry_n_6,tick3_carry_n_7}),
        .DI({tick3_carry_i_1_n_0,tick3_carry_i_2_n_0,tick3_carry_i_3_n_0,tick3_carry_i_4_n_0,tick3_carry_i_5_n_0,tick3_carry_i_6_n_0,tick3_carry_i_7_n_0,tick3_carry_i_8_n_0}),
        .O(NLW_tick3_carry_O_UNCONNECTED[7:0]),
        .S({tick3_carry_i_9_n_0,tick3_carry_i_10_n_0,tick3_carry_i_11_n_0,tick3_carry_i_12_n_0,tick3_carry_i_13_n_0,tick3_carry_i_14_n_0,tick3_carry_i_15_n_0,tick3_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 tick3_carry__0
       (.CI(tick3_carry_n_0),
        .CI_TOP(1'b0),
        .CO({tick3,tick3_carry__0_n_1,tick3_carry__0_n_2,tick3_carry__0_n_3,tick3_carry__0_n_4,tick3_carry__0_n_5,tick3_carry__0_n_6,tick3_carry__0_n_7}),
        .DI({tick3_carry__0_i_1_n_0,tick3_carry__0_i_2_n_0,tick3_carry__0_i_3_n_0,tick3_carry__0_i_4_n_0,tick3_carry__0_i_5_n_0,tick3_carry__0_i_6_n_0,tick3_carry__0_i_7_n_0,tick3_carry__0_i_8_n_0}),
        .O(NLW_tick3_carry__0_O_UNCONNECTED[7:0]),
        .S({tick3_carry__0_i_9_n_0,tick3_carry__0_i_10_n_0,tick3_carry__0_i_11_n_0,tick3_carry__0_i_12_n_0,tick3_carry__0_i_13_n_0,tick3_carry__0_i_14_n_0,tick3_carry__0_i_15_n_0,tick3_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry__0_i_1
       (.I0(frame_cnt[31]),
        .I1(frame_cnt_target[30]),
        .I2(frame_cnt_target[31]),
        .I3(frame_cnt[30]),
        .O(tick3_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry__0_i_10
       (.I0(frame_cnt_target[29]),
        .I1(frame_cnt[29]),
        .I2(frame_cnt_target[28]),
        .I3(frame_cnt[28]),
        .O(tick3_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry__0_i_11
       (.I0(frame_cnt_target[27]),
        .I1(frame_cnt[27]),
        .I2(frame_cnt_target[26]),
        .I3(frame_cnt[26]),
        .O(tick3_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry__0_i_12
       (.I0(frame_cnt_target[25]),
        .I1(frame_cnt[25]),
        .I2(frame_cnt_target[24]),
        .I3(frame_cnt[24]),
        .O(tick3_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry__0_i_13
       (.I0(frame_cnt_target[23]),
        .I1(frame_cnt[23]),
        .I2(frame_cnt_target[22]),
        .I3(frame_cnt[22]),
        .O(tick3_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry__0_i_14
       (.I0(frame_cnt_target[21]),
        .I1(frame_cnt[21]),
        .I2(frame_cnt_target[20]),
        .I3(frame_cnt[20]),
        .O(tick3_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry__0_i_15
       (.I0(frame_cnt_target[19]),
        .I1(frame_cnt[19]),
        .I2(frame_cnt_target[18]),
        .I3(frame_cnt[18]),
        .O(tick3_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry__0_i_16
       (.I0(frame_cnt_target[17]),
        .I1(frame_cnt[17]),
        .I2(frame_cnt_target[16]),
        .I3(frame_cnt[16]),
        .O(tick3_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry__0_i_2
       (.I0(frame_cnt[29]),
        .I1(frame_cnt_target[28]),
        .I2(frame_cnt_target[29]),
        .I3(frame_cnt[28]),
        .O(tick3_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry__0_i_3
       (.I0(frame_cnt[27]),
        .I1(frame_cnt_target[26]),
        .I2(frame_cnt_target[27]),
        .I3(frame_cnt[26]),
        .O(tick3_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry__0_i_4
       (.I0(frame_cnt[25]),
        .I1(frame_cnt_target[24]),
        .I2(frame_cnt_target[25]),
        .I3(frame_cnt[24]),
        .O(tick3_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry__0_i_5
       (.I0(frame_cnt[23]),
        .I1(frame_cnt_target[22]),
        .I2(frame_cnt_target[23]),
        .I3(frame_cnt[22]),
        .O(tick3_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry__0_i_6
       (.I0(frame_cnt[21]),
        .I1(frame_cnt_target[20]),
        .I2(frame_cnt_target[21]),
        .I3(frame_cnt[20]),
        .O(tick3_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry__0_i_7
       (.I0(frame_cnt[19]),
        .I1(frame_cnt_target[18]),
        .I2(frame_cnt_target[19]),
        .I3(frame_cnt[18]),
        .O(tick3_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry__0_i_8
       (.I0(frame_cnt[17]),
        .I1(frame_cnt_target[16]),
        .I2(frame_cnt_target[17]),
        .I3(frame_cnt[16]),
        .O(tick3_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry__0_i_9
       (.I0(frame_cnt_target[31]),
        .I1(frame_cnt[31]),
        .I2(frame_cnt_target[30]),
        .I3(frame_cnt[30]),
        .O(tick3_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry_i_1
       (.I0(frame_cnt[15]),
        .I1(frame_cnt_target[14]),
        .I2(frame_cnt_target[15]),
        .I3(frame_cnt[14]),
        .O(tick3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry_i_10
       (.I0(frame_cnt_target[13]),
        .I1(frame_cnt[13]),
        .I2(frame_cnt_target[12]),
        .I3(frame_cnt[12]),
        .O(tick3_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry_i_11
       (.I0(frame_cnt_target[11]),
        .I1(frame_cnt[11]),
        .I2(frame_cnt_target[10]),
        .I3(frame_cnt[10]),
        .O(tick3_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry_i_12
       (.I0(frame_cnt_target[9]),
        .I1(frame_cnt[9]),
        .I2(frame_cnt_target[8]),
        .I3(frame_cnt[8]),
        .O(tick3_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry_i_13
       (.I0(frame_cnt_target[7]),
        .I1(frame_cnt[7]),
        .I2(frame_cnt_target[6]),
        .I3(frame_cnt[6]),
        .O(tick3_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry_i_14
       (.I0(frame_cnt_target[5]),
        .I1(frame_cnt[5]),
        .I2(frame_cnt_target[4]),
        .I3(frame_cnt[4]),
        .O(tick3_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry_i_15
       (.I0(frame_cnt_target[3]),
        .I1(frame_cnt[3]),
        .I2(frame_cnt_target[2]),
        .I3(frame_cnt[2]),
        .O(tick3_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry_i_16
       (.I0(frame_cnt_target[1]),
        .I1(frame_cnt[1]),
        .I2(frame_cnt_target[0]),
        .I3(frame_cnt[0]),
        .O(tick3_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry_i_2
       (.I0(frame_cnt[13]),
        .I1(frame_cnt_target[12]),
        .I2(frame_cnt_target[13]),
        .I3(frame_cnt[12]),
        .O(tick3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry_i_3
       (.I0(frame_cnt[11]),
        .I1(frame_cnt_target[10]),
        .I2(frame_cnt_target[11]),
        .I3(frame_cnt[10]),
        .O(tick3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry_i_4
       (.I0(frame_cnt[9]),
        .I1(frame_cnt_target[8]),
        .I2(frame_cnt_target[9]),
        .I3(frame_cnt[8]),
        .O(tick3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry_i_5
       (.I0(frame_cnt[7]),
        .I1(frame_cnt_target[6]),
        .I2(frame_cnt_target[7]),
        .I3(frame_cnt[6]),
        .O(tick3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry_i_6
       (.I0(frame_cnt[5]),
        .I1(frame_cnt_target[4]),
        .I2(frame_cnt_target[5]),
        .I3(frame_cnt[4]),
        .O(tick3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry_i_7
       (.I0(frame_cnt[3]),
        .I1(frame_cnt_target[2]),
        .I2(frame_cnt_target[3]),
        .I3(frame_cnt[2]),
        .O(tick3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2B0A)) 
    tick3_carry_i_8
       (.I0(frame_cnt[1]),
        .I1(frame_cnt_target[0]),
        .I2(frame_cnt_target[1]),
        .I3(frame_cnt[0]),
        .O(tick3_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick3_carry_i_9
       (.I0(frame_cnt_target[15]),
        .I1(frame_cnt[15]),
        .I2(frame_cnt_target[14]),
        .I3(frame_cnt[14]),
        .O(tick3_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tick[0]_i_1 
       (.I0(tick[0]),
        .O(tick_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[10]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[10]),
        .O(tick_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[11]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[11]),
        .O(tick_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[12]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[12]),
        .O(tick_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[13]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[13]),
        .O(tick_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[14]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[14]),
        .O(tick_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[15]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[15]),
        .O(tick_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[16]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[16]),
        .O(tick_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[17]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[17]),
        .O(tick_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[18]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[18]),
        .O(tick_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[19]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[19]),
        .O(tick_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[1]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[1]),
        .O(tick_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[20]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[20]),
        .O(tick_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[21]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[21]),
        .O(tick_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[22]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[22]),
        .O(tick_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[23]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[23]),
        .O(tick_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[24]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[24]),
        .O(tick_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[25]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[25]),
        .O(tick_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[26]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[26]),
        .O(tick_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[27]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[27]),
        .O(tick_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[28]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[28]),
        .O(tick_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[29]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[29]),
        .O(tick_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[2]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[2]),
        .O(tick_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[30]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[30]),
        .O(tick_0[30]));
  LUT3 #(
    .INIT(8'h80)) 
    \tick[31]_i_1 
       (.I0(cap_enable),
        .I1(cap_status_reg_0),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .O(\tick[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tick[31]_i_2 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[31]),
        .O(tick_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[3]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[3]),
        .O(tick_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[4]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[4]),
        .O(tick_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[5]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[5]),
        .O(tick_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[6]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[6]),
        .O(tick_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[7]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[7]),
        .O(tick_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[8]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[8]),
        .O(tick_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tick[9]_i_1 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(data0[9]),
        .O(tick_0[9]));
  FDRE \tick_reg[0] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[0]),
        .Q(tick[0]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[10] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[10]),
        .Q(tick[10]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[11] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[11]),
        .Q(tick[11]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[12] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[12]),
        .Q(tick[12]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[13] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[13]),
        .Q(tick[13]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[14] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[14]),
        .Q(tick[14]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[15] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[15]),
        .Q(tick[15]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[16] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[16]),
        .Q(tick[16]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tick_reg[16]_i_2 
       (.CI(\tick_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tick_reg[16]_i_2_n_0 ,\tick_reg[16]_i_2_n_1 ,\tick_reg[16]_i_2_n_2 ,\tick_reg[16]_i_2_n_3 ,\tick_reg[16]_i_2_n_4 ,\tick_reg[16]_i_2_n_5 ,\tick_reg[16]_i_2_n_6 ,\tick_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:9]),
        .S(tick[16:9]));
  FDRE \tick_reg[17] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[17]),
        .Q(tick[17]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[18] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[18]),
        .Q(tick[18]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[19] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[19]),
        .Q(tick[19]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[1] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[1]),
        .Q(tick[1]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[20] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[20]),
        .Q(tick[20]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[21] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[21]),
        .Q(tick[21]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[22] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[22]),
        .Q(tick[22]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[23] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[23]),
        .Q(tick[23]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[24] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[24]),
        .Q(tick[24]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tick_reg[24]_i_2 
       (.CI(\tick_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\tick_reg[24]_i_2_n_0 ,\tick_reg[24]_i_2_n_1 ,\tick_reg[24]_i_2_n_2 ,\tick_reg[24]_i_2_n_3 ,\tick_reg[24]_i_2_n_4 ,\tick_reg[24]_i_2_n_5 ,\tick_reg[24]_i_2_n_6 ,\tick_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:17]),
        .S(tick[24:17]));
  FDRE \tick_reg[25] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[25]),
        .Q(tick[25]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[26] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[26]),
        .Q(tick[26]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[27] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[27]),
        .Q(tick[27]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[28] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[28]),
        .Q(tick[28]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[29] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[29]),
        .Q(tick[29]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[2] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[2]),
        .Q(tick[2]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[30] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[30]),
        .Q(tick[30]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[31] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[31]),
        .Q(tick[31]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tick_reg[31]_i_3 
       (.CI(\tick_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_tick_reg[31]_i_3_CO_UNCONNECTED [7:6],\tick_reg[31]_i_3_n_2 ,\tick_reg[31]_i_3_n_3 ,\tick_reg[31]_i_3_n_4 ,\tick_reg[31]_i_3_n_5 ,\tick_reg[31]_i_3_n_6 ,\tick_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tick_reg[31]_i_3_O_UNCONNECTED [7],data0[31:25]}),
        .S({1'b0,tick[31:25]}));
  FDRE \tick_reg[3] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[3]),
        .Q(tick[3]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[4] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[4]),
        .Q(tick[4]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[5] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[5]),
        .Q(tick[5]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[6] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[6]),
        .Q(tick[6]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[7] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[7]),
        .Q(tick[7]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \tick_reg[8] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[8]),
        .Q(tick[8]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \tick_reg[8]_i_2 
       (.CI(tick[0]),
        .CI_TOP(1'b0),
        .CO({\tick_reg[8]_i_2_n_0 ,\tick_reg[8]_i_2_n_1 ,\tick_reg[8]_i_2_n_2 ,\tick_reg[8]_i_2_n_3 ,\tick_reg[8]_i_2_n_4 ,\tick_reg[8]_i_2_n_5 ,\tick_reg[8]_i_2_n_6 ,\tick_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:1]),
        .S(tick[8:1]));
  FDRE \tick_reg[9] 
       (.C(clk),
        .CE(\tick[31]_i_1_n_0 ),
        .D(tick_0[9]),
        .Q(tick[9]),
        .R(\frame_cnt[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
