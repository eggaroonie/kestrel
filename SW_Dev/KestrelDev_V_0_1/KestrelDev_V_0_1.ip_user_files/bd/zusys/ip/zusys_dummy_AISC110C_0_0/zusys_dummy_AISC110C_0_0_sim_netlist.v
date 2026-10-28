// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Oct 28 14:13:40 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jackson/projects/kestrel/SW_Dev/KestrelDev_V_0_1/KestrelDev_V_0_1.gen/sources_1/bd/zusys/ip/zusys_dummy_AISC110C_0_0/zusys_dummy_AISC110C_0_0_sim_netlist.v
// Design      : zusys_dummy_AISC110C_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zusys_dummy_AISC110C_0_0,dummy_AISC110C,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dummy_AISC110C,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module zusys_dummy_AISC110C_0_0
   (clk_in,
    cap_enable,
    rstn,
    dummy_data,
    gpio,
    mux_data_valid_o,
    m_mux0_data_o,
    m_mux1_data_o,
    m_mux2_data_o,
    m_mux3_data_o,
    clk_out);
  input clk_in;
  input cap_enable;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [31:0]dummy_data;
  output [3:0]gpio;
  output mux_data_valid_o;
  output [7:0]m_mux0_data_o;
  output [7:0]m_mux1_data_o;
  output [7:0]m_mux2_data_o;
  output [7:0]m_mux3_data_o;
  output clk_out;

  wire \<const0> ;
  wire cap_enable;
  wire clk_in;
  wire [31:0]dummy_data;
  wire [0:0]\^gpio ;
  wire [7:0]m_mux0_data_o;
  wire [7:0]m_mux1_data_o;
  wire [7:0]m_mux2_data_o;
  wire [7:0]m_mux3_data_o;
  wire mux_data_valid_o;
  wire rstn;

  assign clk_out = clk_in;
  assign gpio[3] = \<const0> ;
  assign gpio[2] = \<const0> ;
  assign gpio[1] = \<const0> ;
  assign gpio[0] = \^gpio [0];
  GND GND
       (.G(\<const0> ));
  zusys_dummy_AISC110C_0_0_dummy_AISC110C inst
       (.cap_enable(cap_enable),
        .clk_in(clk_in),
        .dummy_data(dummy_data),
        .gpio(\^gpio ),
        .m_mux0_data_o(m_mux0_data_o),
        .m_mux1_data_o(m_mux1_data_o),
        .m_mux2_data_o(m_mux2_data_o),
        .m_mux3_data_o(m_mux3_data_o),
        .mux_data_valid_o(mux_data_valid_o),
        .rstn(rstn));
endmodule

(* ORIG_REF_NAME = "dummy_AISC110C" *) 
module zusys_dummy_AISC110C_0_0_dummy_AISC110C
   (m_mux0_data_o,
    m_mux1_data_o,
    m_mux2_data_o,
    m_mux3_data_o,
    gpio,
    mux_data_valid_o,
    rstn,
    cap_enable,
    clk_in,
    dummy_data);
  output [7:0]m_mux0_data_o;
  output [7:0]m_mux1_data_o;
  output [7:0]m_mux2_data_o;
  output [7:0]m_mux3_data_o;
  output [0:0]gpio;
  output mux_data_valid_o;
  input rstn;
  input cap_enable;
  input clk_in;
  input [31:0]dummy_data;

  wire cap_enable;
  wire \clk_cnt[0]_i_1_n_0 ;
  wire \clk_cnt[10]_i_1_n_0 ;
  wire \clk_cnt[10]_i_2_n_0 ;
  wire \clk_cnt[11]_i_1_n_0 ;
  wire \clk_cnt[11]_i_2_n_0 ;
  wire \clk_cnt[11]_i_3_n_0 ;
  wire \clk_cnt[11]_i_4_n_0 ;
  wire \clk_cnt[11]_i_5_n_0 ;
  wire \clk_cnt[11]_i_6_n_0 ;
  wire \clk_cnt[1]_i_1_n_0 ;
  wire \clk_cnt[2]_i_1_n_0 ;
  wire \clk_cnt[3]_i_1_n_0 ;
  wire \clk_cnt[4]_i_1_n_0 ;
  wire \clk_cnt[5]_i_1_n_0 ;
  wire \clk_cnt[6]_i_1_n_0 ;
  wire \clk_cnt[6]_i_2_n_0 ;
  wire \clk_cnt[7]_i_1_n_0 ;
  wire \clk_cnt[8]_i_1_n_0 ;
  wire \clk_cnt[9]_i_1_n_0 ;
  wire [11:0]clk_cnt_reg;
  wire clk_in;
  wire data_beat__7;
  wire [31:0]dummy_data;
  wire [0:0]gpio;
  wire gpio10_in;
  wire gpio1__6;
  wire \gpio[0]_i_1_n_0 ;
  wire \gpio[0]_i_4_n_0 ;
  wire [7:0]m_mux0_data_o;
  wire [7:0]m_mux1_data_o;
  wire \m_mux1_data_o[0]_i_1_n_0 ;
  wire \m_mux1_data_o[1]_i_1_n_0 ;
  wire \m_mux1_data_o[2]_i_1_n_0 ;
  wire \m_mux1_data_o[3]_i_1_n_0 ;
  wire \m_mux1_data_o[4]_i_1_n_0 ;
  wire \m_mux1_data_o[5]_i_1_n_0 ;
  wire \m_mux1_data_o[6]_i_1_n_0 ;
  wire \m_mux1_data_o[7]_i_1_n_0 ;
  wire [7:0]m_mux2_data_o;
  wire \m_mux2_data_o[0]_i_1_n_0 ;
  wire \m_mux2_data_o[1]_i_1_n_0 ;
  wire \m_mux2_data_o[2]_i_1_n_0 ;
  wire \m_mux2_data_o[3]_i_1_n_0 ;
  wire \m_mux2_data_o[4]_i_1_n_0 ;
  wire \m_mux2_data_o[5]_i_1_n_0 ;
  wire \m_mux2_data_o[6]_i_1_n_0 ;
  wire \m_mux2_data_o[7]_i_1_n_0 ;
  wire [7:0]m_mux3_data_o;
  wire \m_mux3_data_o[0]_i_1_n_0 ;
  wire \m_mux3_data_o[1]_i_1_n_0 ;
  wire \m_mux3_data_o[2]_i_1_n_0 ;
  wire \m_mux3_data_o[3]_i_1_n_0 ;
  wire \m_mux3_data_o[4]_i_1_n_0 ;
  wire \m_mux3_data_o[5]_i_1_n_0 ;
  wire \m_mux3_data_o[6]_i_1_n_0 ;
  wire \m_mux3_data_o[7]_i_1_n_0 ;
  wire mux_data_valid_o;
  wire mux_data_valid_o_i_1_n_0;
  wire mux_data_valid_o_i_3_n_0;
  wire mux_data_valid_o_i_4_n_0;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire rstn;
  wire running;
  wire \word_cnt[0]_i_1_n_0 ;
  wire \word_cnt[1]_i_1_n_0 ;
  wire \word_cnt[2]_i_1_n_0 ;
  wire \word_cnt[3]_i_1_n_0 ;
  wire \word_cnt[4]_i_1_n_0 ;
  wire \word_cnt[4]_i_2_n_0 ;
  wire \word_cnt[4]_i_3_n_0 ;
  wire \word_cnt[4]_i_4_n_0 ;
  wire [4:0]word_cnt_reg;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt_reg[0]),
        .O(\clk_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clk_cnt[10]_i_1 
       (.I0(clk_cnt_reg[8]),
        .I1(clk_cnt_reg[6]),
        .I2(\clk_cnt[10]_i_2_n_0 ),
        .I3(clk_cnt_reg[7]),
        .I4(clk_cnt_reg[9]),
        .I5(clk_cnt_reg[10]),
        .O(\clk_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clk_cnt[10]_i_2 
       (.I0(clk_cnt_reg[5]),
        .I1(clk_cnt_reg[3]),
        .I2(clk_cnt_reg[1]),
        .I3(clk_cnt_reg[0]),
        .I4(clk_cnt_reg[2]),
        .I5(clk_cnt_reg[4]),
        .O(\clk_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    \clk_cnt[11]_i_1 
       (.I0(\clk_cnt[11]_i_3_n_0 ),
        .I1(\clk_cnt[11]_i_4_n_0 ),
        .I2(clk_cnt_reg[6]),
        .I3(clk_cnt_reg[10]),
        .I4(clk_cnt_reg[11]),
        .I5(clk_cnt_reg[9]),
        .O(\clk_cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clk_cnt[11]_i_2 
       (.I0(clk_cnt_reg[9]),
        .I1(clk_cnt_reg[7]),
        .I2(\clk_cnt[11]_i_5_n_0 ),
        .I3(clk_cnt_reg[8]),
        .I4(clk_cnt_reg[10]),
        .I5(clk_cnt_reg[11]),
        .O(\clk_cnt[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \clk_cnt[11]_i_3 
       (.I0(rstn),
        .I1(cap_enable),
        .I2(running),
        .O(\clk_cnt[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \clk_cnt[11]_i_4 
       (.I0(\clk_cnt[11]_i_6_n_0 ),
        .I1(clk_cnt_reg[5]),
        .I2(clk_cnt_reg[4]),
        .I3(\clk_cnt[6]_i_2_n_0 ),
        .I4(clk_cnt_reg[3]),
        .I5(clk_cnt_reg[2]),
        .O(\clk_cnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \clk_cnt[11]_i_5 
       (.I0(clk_cnt_reg[6]),
        .I1(clk_cnt_reg[4]),
        .I2(clk_cnt_reg[2]),
        .I3(\clk_cnt[6]_i_2_n_0 ),
        .I4(clk_cnt_reg[3]),
        .I5(clk_cnt_reg[5]),
        .O(\clk_cnt[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \clk_cnt[11]_i_6 
       (.I0(clk_cnt_reg[7]),
        .I1(clk_cnt_reg[8]),
        .O(\clk_cnt[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_cnt[1]_i_1 
       (.I0(clk_cnt_reg[0]),
        .I1(clk_cnt_reg[1]),
        .O(\clk_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_cnt[2]_i_1 
       (.I0(clk_cnt_reg[0]),
        .I1(clk_cnt_reg[1]),
        .I2(clk_cnt_reg[2]),
        .O(\clk_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_cnt[3]_i_1 
       (.I0(clk_cnt_reg[1]),
        .I1(clk_cnt_reg[0]),
        .I2(clk_cnt_reg[2]),
        .I3(clk_cnt_reg[3]),
        .O(\clk_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_cnt[4]_i_1 
       (.I0(clk_cnt_reg[2]),
        .I1(clk_cnt_reg[0]),
        .I2(clk_cnt_reg[1]),
        .I3(clk_cnt_reg[3]),
        .I4(clk_cnt_reg[4]),
        .O(\clk_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clk_cnt[5]_i_1 
       (.I0(clk_cnt_reg[3]),
        .I1(clk_cnt_reg[1]),
        .I2(clk_cnt_reg[0]),
        .I3(clk_cnt_reg[2]),
        .I4(clk_cnt_reg[4]),
        .I5(clk_cnt_reg[5]),
        .O(\clk_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \clk_cnt[6]_i_1 
       (.I0(clk_cnt_reg[4]),
        .I1(clk_cnt_reg[2]),
        .I2(\clk_cnt[6]_i_2_n_0 ),
        .I3(clk_cnt_reg[3]),
        .I4(clk_cnt_reg[5]),
        .I5(clk_cnt_reg[6]),
        .O(\clk_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clk_cnt[6]_i_2 
       (.I0(clk_cnt_reg[1]),
        .I1(clk_cnt_reg[0]),
        .O(\clk_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_cnt[7]_i_1 
       (.I0(\clk_cnt[10]_i_2_n_0 ),
        .I1(clk_cnt_reg[6]),
        .I2(clk_cnt_reg[7]),
        .O(\clk_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_cnt[8]_i_1 
       (.I0(clk_cnt_reg[6]),
        .I1(\clk_cnt[10]_i_2_n_0 ),
        .I2(clk_cnt_reg[7]),
        .I3(clk_cnt_reg[8]),
        .O(\clk_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_cnt[9]_i_1 
       (.I0(clk_cnt_reg[7]),
        .I1(\clk_cnt[10]_i_2_n_0 ),
        .I2(clk_cnt_reg[6]),
        .I3(clk_cnt_reg[8]),
        .I4(clk_cnt_reg[9]),
        .O(\clk_cnt[9]_i_1_n_0 ));
  FDRE \clk_cnt_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(clk_cnt_reg[0]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[10]_i_1_n_0 ),
        .Q(clk_cnt_reg[10]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[11]_i_2_n_0 ),
        .Q(clk_cnt_reg[11]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[1]_i_1_n_0 ),
        .Q(clk_cnt_reg[1]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[2]_i_1_n_0 ),
        .Q(clk_cnt_reg[2]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[3]_i_1_n_0 ),
        .Q(clk_cnt_reg[3]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[4]_i_1_n_0 ),
        .Q(clk_cnt_reg[4]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[5]_i_1_n_0 ),
        .Q(clk_cnt_reg[5]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[6]_i_1_n_0 ),
        .Q(clk_cnt_reg[6]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[7]_i_1_n_0 ),
        .Q(clk_cnt_reg[7]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[8]_i_1_n_0 ),
        .Q(clk_cnt_reg[8]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  FDRE \clk_cnt_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_cnt[9]_i_1_n_0 ),
        .Q(clk_cnt_reg[9]),
        .R(\clk_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \gpio[0]_i_1 
       (.I0(gpio1__6),
        .I1(gpio10_in),
        .I2(running),
        .I3(cap_enable),
        .I4(rstn),
        .O(\gpio[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h10FF)) 
    \gpio[0]_i_2 
       (.I0(clk_cnt_reg[9]),
        .I1(clk_cnt_reg[10]),
        .I2(\gpio[0]_i_4_n_0 ),
        .I3(clk_cnt_reg[11]),
        .O(gpio1__6));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \gpio[0]_i_3 
       (.I0(word_cnt_reg[3]),
        .I1(word_cnt_reg[1]),
        .I2(word_cnt_reg[0]),
        .I3(word_cnt_reg[4]),
        .I4(word_cnt_reg[2]),
        .O(gpio10_in));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    \gpio[0]_i_4 
       (.I0(clk_cnt_reg[3]),
        .I1(clk_cnt_reg[4]),
        .I2(clk_cnt_reg[6]),
        .I3(clk_cnt_reg[5]),
        .I4(clk_cnt_reg[8]),
        .I5(clk_cnt_reg[7]),
        .O(\gpio[0]_i_4_n_0 ));
  FDRE \gpio_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\gpio[0]_i_1_n_0 ),
        .Q(gpio),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux0_data_o[0]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[0]),
        .I3(data_beat__7),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux0_data_o[1]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[1]),
        .I3(data_beat__7),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux0_data_o[2]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[2]),
        .I3(data_beat__7),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux0_data_o[3]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[3]),
        .I3(data_beat__7),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux0_data_o[4]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[4]),
        .I3(data_beat__7),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux0_data_o[5]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[5]),
        .I3(data_beat__7),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux0_data_o[6]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[6]),
        .I3(data_beat__7),
        .O(p_1_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_mux0_data_o[7]_i_1 
       (.I0(rstn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux0_data_o[7]_i_2 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[7]),
        .I3(data_beat__7),
        .O(p_1_in[7]));
  FDRE \m_mux0_data_o_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(m_mux0_data_o[0]),
        .R(p_0_in));
  FDRE \m_mux0_data_o_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(m_mux0_data_o[1]),
        .R(p_0_in));
  FDRE \m_mux0_data_o_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(m_mux0_data_o[2]),
        .R(p_0_in));
  FDRE \m_mux0_data_o_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(m_mux0_data_o[3]),
        .R(p_0_in));
  FDRE \m_mux0_data_o_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(m_mux0_data_o[4]),
        .R(p_0_in));
  FDRE \m_mux0_data_o_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(m_mux0_data_o[5]),
        .R(p_0_in));
  FDRE \m_mux0_data_o_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(m_mux0_data_o[6]),
        .R(p_0_in));
  FDRE \m_mux0_data_o_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(m_mux0_data_o[7]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux1_data_o[0]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[8]),
        .I3(data_beat__7),
        .O(\m_mux1_data_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux1_data_o[1]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[9]),
        .I3(data_beat__7),
        .O(\m_mux1_data_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux1_data_o[2]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[10]),
        .I3(data_beat__7),
        .O(\m_mux1_data_o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux1_data_o[3]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[11]),
        .I3(data_beat__7),
        .O(\m_mux1_data_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux1_data_o[4]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[12]),
        .I3(data_beat__7),
        .O(\m_mux1_data_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux1_data_o[5]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[13]),
        .I3(data_beat__7),
        .O(\m_mux1_data_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux1_data_o[6]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[14]),
        .I3(data_beat__7),
        .O(\m_mux1_data_o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux1_data_o[7]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[15]),
        .I3(data_beat__7),
        .O(\m_mux1_data_o[7]_i_1_n_0 ));
  FDRE \m_mux1_data_o_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux1_data_o[0]_i_1_n_0 ),
        .Q(m_mux1_data_o[0]),
        .R(p_0_in));
  FDRE \m_mux1_data_o_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux1_data_o[1]_i_1_n_0 ),
        .Q(m_mux1_data_o[1]),
        .R(p_0_in));
  FDRE \m_mux1_data_o_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux1_data_o[2]_i_1_n_0 ),
        .Q(m_mux1_data_o[2]),
        .R(p_0_in));
  FDRE \m_mux1_data_o_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux1_data_o[3]_i_1_n_0 ),
        .Q(m_mux1_data_o[3]),
        .R(p_0_in));
  FDRE \m_mux1_data_o_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux1_data_o[4]_i_1_n_0 ),
        .Q(m_mux1_data_o[4]),
        .R(p_0_in));
  FDRE \m_mux1_data_o_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux1_data_o[5]_i_1_n_0 ),
        .Q(m_mux1_data_o[5]),
        .R(p_0_in));
  FDRE \m_mux1_data_o_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux1_data_o[6]_i_1_n_0 ),
        .Q(m_mux1_data_o[6]),
        .R(p_0_in));
  FDRE \m_mux1_data_o_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux1_data_o[7]_i_1_n_0 ),
        .Q(m_mux1_data_o[7]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux2_data_o[0]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[16]),
        .I3(data_beat__7),
        .O(\m_mux2_data_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux2_data_o[1]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[17]),
        .I3(data_beat__7),
        .O(\m_mux2_data_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux2_data_o[2]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[18]),
        .I3(data_beat__7),
        .O(\m_mux2_data_o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux2_data_o[3]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[19]),
        .I3(data_beat__7),
        .O(\m_mux2_data_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux2_data_o[4]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[20]),
        .I3(data_beat__7),
        .O(\m_mux2_data_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux2_data_o[5]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[21]),
        .I3(data_beat__7),
        .O(\m_mux2_data_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux2_data_o[6]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[22]),
        .I3(data_beat__7),
        .O(\m_mux2_data_o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux2_data_o[7]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[23]),
        .I3(data_beat__7),
        .O(\m_mux2_data_o[7]_i_1_n_0 ));
  FDRE \m_mux2_data_o_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux2_data_o[0]_i_1_n_0 ),
        .Q(m_mux2_data_o[0]),
        .R(p_0_in));
  FDRE \m_mux2_data_o_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux2_data_o[1]_i_1_n_0 ),
        .Q(m_mux2_data_o[1]),
        .R(p_0_in));
  FDRE \m_mux2_data_o_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux2_data_o[2]_i_1_n_0 ),
        .Q(m_mux2_data_o[2]),
        .R(p_0_in));
  FDRE \m_mux2_data_o_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux2_data_o[3]_i_1_n_0 ),
        .Q(m_mux2_data_o[3]),
        .R(p_0_in));
  FDRE \m_mux2_data_o_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux2_data_o[4]_i_1_n_0 ),
        .Q(m_mux2_data_o[4]),
        .R(p_0_in));
  FDRE \m_mux2_data_o_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux2_data_o[5]_i_1_n_0 ),
        .Q(m_mux2_data_o[5]),
        .R(p_0_in));
  FDRE \m_mux2_data_o_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux2_data_o[6]_i_1_n_0 ),
        .Q(m_mux2_data_o[6]),
        .R(p_0_in));
  FDRE \m_mux2_data_o_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux2_data_o[7]_i_1_n_0 ),
        .Q(m_mux2_data_o[7]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux3_data_o[0]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[24]),
        .I3(data_beat__7),
        .O(\m_mux3_data_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux3_data_o[1]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[25]),
        .I3(data_beat__7),
        .O(\m_mux3_data_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux3_data_o[2]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[26]),
        .I3(data_beat__7),
        .O(\m_mux3_data_o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux3_data_o[3]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[27]),
        .I3(data_beat__7),
        .O(\m_mux3_data_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux3_data_o[4]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[28]),
        .I3(data_beat__7),
        .O(\m_mux3_data_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux3_data_o[5]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[29]),
        .I3(data_beat__7),
        .O(\m_mux3_data_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux3_data_o[6]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[30]),
        .I3(data_beat__7),
        .O(\m_mux3_data_o[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_mux3_data_o[7]_i_1 
       (.I0(cap_enable),
        .I1(running),
        .I2(dummy_data[31]),
        .I3(data_beat__7),
        .O(\m_mux3_data_o[7]_i_1_n_0 ));
  FDRE \m_mux3_data_o_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux3_data_o[0]_i_1_n_0 ),
        .Q(m_mux3_data_o[0]),
        .R(p_0_in));
  FDRE \m_mux3_data_o_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux3_data_o[1]_i_1_n_0 ),
        .Q(m_mux3_data_o[1]),
        .R(p_0_in));
  FDRE \m_mux3_data_o_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux3_data_o[2]_i_1_n_0 ),
        .Q(m_mux3_data_o[2]),
        .R(p_0_in));
  FDRE \m_mux3_data_o_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux3_data_o[3]_i_1_n_0 ),
        .Q(m_mux3_data_o[3]),
        .R(p_0_in));
  FDRE \m_mux3_data_o_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux3_data_o[4]_i_1_n_0 ),
        .Q(m_mux3_data_o[4]),
        .R(p_0_in));
  FDRE \m_mux3_data_o_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux3_data_o[5]_i_1_n_0 ),
        .Q(m_mux3_data_o[5]),
        .R(p_0_in));
  FDRE \m_mux3_data_o_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux3_data_o[6]_i_1_n_0 ),
        .Q(m_mux3_data_o[6]),
        .R(p_0_in));
  FDRE \m_mux3_data_o_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\m_mux3_data_o[7]_i_1_n_0 ),
        .Q(m_mux3_data_o[7]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    mux_data_valid_o_i_1
       (.I0(data_beat__7),
        .I1(running),
        .I2(cap_enable),
        .I3(rstn),
        .O(mux_data_valid_o_i_1_n_0));
  LUT6 #(
    .INIT(64'h0E0E0E0E0E0EEE0E)) 
    mux_data_valid_o_i_2
       (.I0(mux_data_valid_o_i_3_n_0),
        .I1(mux_data_valid_o_i_4_n_0),
        .I2(clk_cnt_reg[11]),
        .I3(\gpio[0]_i_4_n_0 ),
        .I4(clk_cnt_reg[10]),
        .I5(clk_cnt_reg[9]),
        .O(data_beat__7));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    mux_data_valid_o_i_3
       (.I0(clk_cnt_reg[10]),
        .I1(clk_cnt_reg[9]),
        .I2(clk_cnt_reg[5]),
        .I3(clk_cnt_reg[3]),
        .I4(clk_cnt_reg[4]),
        .I5(clk_cnt_reg[11]),
        .O(mux_data_valid_o_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    mux_data_valid_o_i_4
       (.I0(clk_cnt_reg[6]),
        .I1(clk_cnt_reg[8]),
        .I2(clk_cnt_reg[7]),
        .O(mux_data_valid_o_i_4_n_0));
  FDRE mux_data_valid_o_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(mux_data_valid_o_i_1_n_0),
        .Q(mux_data_valid_o),
        .R(1'b0));
  FDRE running_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(cap_enable),
        .Q(running),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \word_cnt[0]_i_1 
       (.I0(word_cnt_reg[0]),
        .O(\word_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \word_cnt[1]_i_1 
       (.I0(word_cnt_reg[0]),
        .I1(word_cnt_reg[1]),
        .O(\word_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \word_cnt[2]_i_1 
       (.I0(word_cnt_reg[0]),
        .I1(word_cnt_reg[1]),
        .I2(word_cnt_reg[2]),
        .O(\word_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \word_cnt[3]_i_1 
       (.I0(word_cnt_reg[1]),
        .I1(word_cnt_reg[0]),
        .I2(word_cnt_reg[2]),
        .I3(word_cnt_reg[3]),
        .O(\word_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1FFFFFFF)) 
    \word_cnt[4]_i_1 
       (.I0(\word_cnt[4]_i_3_n_0 ),
        .I1(\clk_cnt[11]_i_4_n_0 ),
        .I2(cap_enable),
        .I3(running),
        .I4(rstn),
        .I5(\word_cnt[4]_i_4_n_0 ),
        .O(\word_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \word_cnt[4]_i_2 
       (.I0(word_cnt_reg[2]),
        .I1(word_cnt_reg[0]),
        .I2(word_cnt_reg[1]),
        .I3(word_cnt_reg[3]),
        .I4(word_cnt_reg[4]),
        .O(\word_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \word_cnt[4]_i_3 
       (.I0(clk_cnt_reg[6]),
        .I1(clk_cnt_reg[10]),
        .I2(clk_cnt_reg[11]),
        .I3(clk_cnt_reg[9]),
        .O(\word_cnt[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \word_cnt[4]_i_4 
       (.I0(word_cnt_reg[3]),
        .I1(word_cnt_reg[1]),
        .I2(word_cnt_reg[0]),
        .I3(word_cnt_reg[2]),
        .I4(word_cnt_reg[4]),
        .O(\word_cnt[4]_i_4_n_0 ));
  FDRE \word_cnt_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\word_cnt[0]_i_1_n_0 ),
        .Q(word_cnt_reg[0]),
        .R(\word_cnt[4]_i_1_n_0 ));
  FDRE \word_cnt_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\word_cnt[1]_i_1_n_0 ),
        .Q(word_cnt_reg[1]),
        .R(\word_cnt[4]_i_1_n_0 ));
  FDRE \word_cnt_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\word_cnt[2]_i_1_n_0 ),
        .Q(word_cnt_reg[2]),
        .R(\word_cnt[4]_i_1_n_0 ));
  FDRE \word_cnt_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\word_cnt[3]_i_1_n_0 ),
        .Q(word_cnt_reg[3]),
        .R(\word_cnt[4]_i_1_n_0 ));
  FDRE \word_cnt_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\word_cnt[4]_i_2_n_0 ),
        .Q(word_cnt_reg[4]),
        .R(\word_cnt[4]_i_1_n_0 ));
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
