// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Oct 27 15:43:01 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jackson/projects/kestrel/SW_Dev/KestrelDev_V_0_1/KestrelDev_V_0_1.gen/sources_1/bd/zusys/ip/zusys_capture_logic_test_0_0/zusys_capture_logic_test_0_0_sim_netlist.v
// Design      : zusys_capture_logic_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zusys_capture_logic_test_0_0,capture_logic_test,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "capture_logic_test,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module zusys_capture_logic_test_0_0
   (ctrl,
    frame_cnt_target,
    cap_enable,
    clk_in,
    cap_status,
    frame_cnt,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_aclk,
    m_axis_tready,
    m_axis_aresetn,
    mux_data_valid_o,
    gpio,
    s_mux0_data_o,
    s_mux1_data_o,
    s_mux2_data_o,
    s_mux3_data_o);
  input [31:0]ctrl;
  input [31:0]frame_cnt_target;
  input cap_enable;
  input clk_in;
  output cap_status;
  output [31:0]frame_cnt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN zusys_capture_logic_test_0_0_m_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aclk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_capture_logic_test_0_0_m_axis_aclk, INSERT_VIP 0" *) output m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axis_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_aresetn;
  input mux_data_valid_o;
  input [3:0]gpio;
  input [7:0]s_mux0_data_o;
  input [7:0]s_mux1_data_o;
  input [7:0]s_mux2_data_o;
  input [7:0]s_mux3_data_o;

  wire \<const1> ;
  wire cap_enable;
  wire cap_status;
  wire clk_in;
  wire [31:0]frame_cnt;
  wire [31:0]frame_cnt_target;
  wire [3:0]gpio;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tvalid;
  wire mux_data_valid_o;
  wire [7:0]s_mux0_data_o;
  wire [7:0]s_mux1_data_o;
  wire [7:0]s_mux2_data_o;
  wire [7:0]s_mux3_data_o;

  assign m_axis_aclk = clk_in;
  assign m_axis_tkeep[3] = \<const1> ;
  assign m_axis_tkeep[2] = \<const1> ;
  assign m_axis_tkeep[1] = \<const1> ;
  assign m_axis_tkeep[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  zusys_capture_logic_test_0_0_capture_logic_test inst
       (.cap_enable(cap_enable),
        .cap_status(cap_status),
        .clk_in(clk_in),
        .frame_cnt(frame_cnt),
        .frame_cnt_target(frame_cnt_target),
        .gpio(gpio[0]),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tvalid(m_axis_tvalid),
        .mux_data_valid_o(mux_data_valid_o),
        .s_mux0_data_o(s_mux0_data_o),
        .s_mux1_data_o(s_mux1_data_o),
        .s_mux2_data_o(s_mux2_data_o),
        .s_mux3_data_o(s_mux3_data_o));
endmodule

(* ORIG_REF_NAME = "capture_logic_test" *) 
module zusys_capture_logic_test_0_0_capture_logic_test
   (m_axis_tdata,
    m_axis_tlast,
    frame_cnt,
    cap_status,
    m_axis_tvalid,
    cap_enable,
    m_axis_aresetn,
    gpio,
    clk_in,
    mux_data_valid_o,
    frame_cnt_target,
    s_mux0_data_o,
    s_mux1_data_o,
    s_mux2_data_o,
    s_mux3_data_o);
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  output [31:0]frame_cnt;
  output cap_status;
  output m_axis_tvalid;
  input cap_enable;
  input m_axis_aresetn;
  input [0:0]gpio;
  input clk_in;
  input mux_data_valid_o;
  input [31:0]frame_cnt_target;
  input [7:0]s_mux0_data_o;
  input [7:0]s_mux1_data_o;
  input [7:0]s_mux2_data_o;
  input [7:0]s_mux3_data_o;

  wire cap_enable;
  wire cap_status;
  wire cap_status0;
  wire cap_status_i_1_n_0;
  wire cap_status_i_2_n_0;
  wire clk_in;
  wire [31:1]data0;
  wire [31:0]frame_cnt;
  wire \frame_cnt[31]_i_10_n_0 ;
  wire \frame_cnt[31]_i_11_n_0 ;
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
  wire [0:0]gpio;
  wire last_frame0;
  wire last_frame0_carry__0_i_10_n_0;
  wire last_frame0_carry__0_i_11_n_0;
  wire last_frame0_carry__0_i_1_n_0;
  wire last_frame0_carry__0_i_2_n_0;
  wire last_frame0_carry__0_i_3_n_0;
  wire last_frame0_carry__0_i_4_n_2;
  wire last_frame0_carry__0_i_4_n_3;
  wire last_frame0_carry__0_i_4_n_4;
  wire last_frame0_carry__0_i_4_n_5;
  wire last_frame0_carry__0_i_4_n_6;
  wire last_frame0_carry__0_i_4_n_7;
  wire last_frame0_carry__0_i_5_n_0;
  wire last_frame0_carry__0_i_6_n_0;
  wire last_frame0_carry__0_i_7_n_0;
  wire last_frame0_carry__0_i_8_n_0;
  wire last_frame0_carry__0_i_9_n_0;
  wire last_frame0_carry__0_n_6;
  wire last_frame0_carry__0_n_7;
  wire last_frame0_carry_i_10_n_0;
  wire last_frame0_carry_i_10_n_1;
  wire last_frame0_carry_i_10_n_2;
  wire last_frame0_carry_i_10_n_3;
  wire last_frame0_carry_i_10_n_4;
  wire last_frame0_carry_i_10_n_5;
  wire last_frame0_carry_i_10_n_6;
  wire last_frame0_carry_i_10_n_7;
  wire last_frame0_carry_i_11_n_0;
  wire last_frame0_carry_i_11_n_1;
  wire last_frame0_carry_i_11_n_2;
  wire last_frame0_carry_i_11_n_3;
  wire last_frame0_carry_i_11_n_4;
  wire last_frame0_carry_i_11_n_5;
  wire last_frame0_carry_i_11_n_6;
  wire last_frame0_carry_i_11_n_7;
  wire last_frame0_carry_i_12_n_0;
  wire last_frame0_carry_i_13_n_0;
  wire last_frame0_carry_i_14_n_0;
  wire last_frame0_carry_i_15_n_0;
  wire last_frame0_carry_i_16_n_0;
  wire last_frame0_carry_i_17_n_0;
  wire last_frame0_carry_i_18_n_0;
  wire last_frame0_carry_i_19_n_0;
  wire last_frame0_carry_i_1_n_0;
  wire last_frame0_carry_i_20_n_0;
  wire last_frame0_carry_i_21_n_0;
  wire last_frame0_carry_i_22_n_0;
  wire last_frame0_carry_i_23_n_0;
  wire last_frame0_carry_i_24_n_0;
  wire last_frame0_carry_i_25_n_0;
  wire last_frame0_carry_i_26_n_0;
  wire last_frame0_carry_i_27_n_0;
  wire last_frame0_carry_i_28_n_0;
  wire last_frame0_carry_i_29_n_0;
  wire last_frame0_carry_i_2_n_0;
  wire last_frame0_carry_i_30_n_0;
  wire last_frame0_carry_i_31_n_0;
  wire last_frame0_carry_i_32_n_0;
  wire last_frame0_carry_i_33_n_0;
  wire last_frame0_carry_i_34_n_0;
  wire last_frame0_carry_i_35_n_0;
  wire last_frame0_carry_i_3_n_0;
  wire last_frame0_carry_i_4_n_0;
  wire last_frame0_carry_i_5_n_0;
  wire last_frame0_carry_i_6_n_0;
  wire last_frame0_carry_i_7_n_0;
  wire last_frame0_carry_i_8_n_0;
  wire last_frame0_carry_i_9_n_0;
  wire last_frame0_carry_i_9_n_1;
  wire last_frame0_carry_i_9_n_2;
  wire last_frame0_carry_i_9_n_3;
  wire last_frame0_carry_i_9_n_4;
  wire last_frame0_carry_i_9_n_5;
  wire last_frame0_carry_i_9_n_6;
  wire last_frame0_carry_i_9_n_7;
  wire last_frame0_carry_n_0;
  wire last_frame0_carry_n_1;
  wire last_frame0_carry_n_2;
  wire last_frame0_carry_n_3;
  wire last_frame0_carry_n_4;
  wire last_frame0_carry_n_5;
  wire last_frame0_carry_n_6;
  wire last_frame0_carry_n_7;
  wire [31:1]last_frame1;
  wire last_frame_i_1_n_0;
  wire last_frame_reg_n_0;
  wire [31:0]line_cnt;
  wire line_cnt0;
  wire \line_cnt[31]_i_1_n_0 ;
  wire [31:0]line_cnt_0;
  wire \line_cnt_reg[16]_i_2_n_0 ;
  wire \line_cnt_reg[16]_i_2_n_1 ;
  wire \line_cnt_reg[16]_i_2_n_2 ;
  wire \line_cnt_reg[16]_i_2_n_3 ;
  wire \line_cnt_reg[16]_i_2_n_4 ;
  wire \line_cnt_reg[16]_i_2_n_5 ;
  wire \line_cnt_reg[16]_i_2_n_6 ;
  wire \line_cnt_reg[16]_i_2_n_7 ;
  wire \line_cnt_reg[24]_i_2_n_0 ;
  wire \line_cnt_reg[24]_i_2_n_1 ;
  wire \line_cnt_reg[24]_i_2_n_2 ;
  wire \line_cnt_reg[24]_i_2_n_3 ;
  wire \line_cnt_reg[24]_i_2_n_4 ;
  wire \line_cnt_reg[24]_i_2_n_5 ;
  wire \line_cnt_reg[24]_i_2_n_6 ;
  wire \line_cnt_reg[24]_i_2_n_7 ;
  wire \line_cnt_reg[31]_i_4_n_2 ;
  wire \line_cnt_reg[31]_i_4_n_3 ;
  wire \line_cnt_reg[31]_i_4_n_4 ;
  wire \line_cnt_reg[31]_i_4_n_5 ;
  wire \line_cnt_reg[31]_i_4_n_6 ;
  wire \line_cnt_reg[31]_i_4_n_7 ;
  wire \line_cnt_reg[8]_i_2_n_0 ;
  wire \line_cnt_reg[8]_i_2_n_1 ;
  wire \line_cnt_reg[8]_i_2_n_2 ;
  wire \line_cnt_reg[8]_i_2_n_3 ;
  wire \line_cnt_reg[8]_i_2_n_4 ;
  wire \line_cnt_reg[8]_i_2_n_5 ;
  wire \line_cnt_reg[8]_i_2_n_6 ;
  wire \line_cnt_reg[8]_i_2_n_7 ;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire \m_axis_tdata[31]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast1;
  wire m_axis_tlast1_carry__0_i_1_n_0;
  wire m_axis_tlast1_carry__0_i_2_n_0;
  wire m_axis_tlast1_carry__0_i_3_n_0;
  wire m_axis_tlast1_carry__0_n_6;
  wire m_axis_tlast1_carry__0_n_7;
  wire m_axis_tlast1_carry_i_1_n_0;
  wire m_axis_tlast1_carry_i_2_n_0;
  wire m_axis_tlast1_carry_i_3_n_0;
  wire m_axis_tlast1_carry_i_4_n_0;
  wire m_axis_tlast1_carry_i_5_n_0;
  wire m_axis_tlast1_carry_i_6_n_0;
  wire m_axis_tlast1_carry_i_7_n_0;
  wire m_axis_tlast1_carry_i_8_n_0;
  wire m_axis_tlast1_carry_n_0;
  wire m_axis_tlast1_carry_n_1;
  wire m_axis_tlast1_carry_n_2;
  wire m_axis_tlast1_carry_n_3;
  wire m_axis_tlast1_carry_n_4;
  wire m_axis_tlast1_carry_n_5;
  wire m_axis_tlast1_carry_n_6;
  wire m_axis_tlast1_carry_n_7;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tlast_i_4_n_0;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire mux_data_valid_o;
  wire [5:0]p_0_in;
  wire [31:0]p_2_in;
  wire running4_out;
  wire running_reg_n_0;
  wire [7:0]s_mux0_data_o;
  wire [7:0]s_mux1_data_o;
  wire [7:0]s_mux2_data_o;
  wire [7:0]s_mux3_data_o;
  wire \word_cnt[2]_i_1_n_0 ;
  wire \word_cnt[5]_i_1_n_0 ;
  wire [5:0]word_cnt_reg;
  wire [7:7]\NLW_frame_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:0]NLW_last_frame0_carry_O_UNCONNECTED;
  wire [7:3]NLW_last_frame0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_last_frame0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_last_frame0_carry__0_i_4_CO_UNCONNECTED;
  wire [7:7]NLW_last_frame0_carry__0_i_4_O_UNCONNECTED;
  wire [7:6]\NLW_line_cnt_reg[31]_i_4_CO_UNCONNECTED ;
  wire [7:7]\NLW_line_cnt_reg[31]_i_4_O_UNCONNECTED ;
  wire [7:0]NLW_m_axis_tlast1_carry_O_UNCONNECTED;
  wire [7:3]NLW_m_axis_tlast1_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_m_axis_tlast1_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    cap_status_i_1
       (.I0(m_axis_aresetn),
        .O(cap_status_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    cap_status_i_2
       (.I0(cap_status),
        .I1(running_reg_n_0),
        .I2(cap_enable),
        .I3(last_frame_reg_n_0),
        .O(cap_status_i_2_n_0));
  FDRE cap_status_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(cap_status_i_2_n_0),
        .Q(cap_status),
        .R(cap_status_i_1_n_0));
  LUT4 #(
    .INIT(16'h04FF)) 
    \frame_cnt[31]_i_1 
       (.I0(running_reg_n_0),
        .I1(cap_enable),
        .I2(last_frame_reg_n_0),
        .I3(m_axis_aresetn),
        .O(\frame_cnt[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \frame_cnt[31]_i_10 
       (.I0(line_cnt[25]),
        .I1(line_cnt[27]),
        .I2(line_cnt[5]),
        .I3(line_cnt[23]),
        .O(\frame_cnt[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \frame_cnt[31]_i_11 
       (.I0(line_cnt[6]),
        .I1(line_cnt[3]),
        .I2(line_cnt[19]),
        .I3(line_cnt[13]),
        .O(\frame_cnt[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \frame_cnt[31]_i_2 
       (.I0(\frame_cnt[31]_i_4_n_0 ),
        .I1(\frame_cnt[31]_i_5_n_0 ),
        .I2(\frame_cnt[31]_i_6_n_0 ),
        .I3(\frame_cnt[31]_i_7_n_0 ),
        .I4(line_cnt0),
        .I5(running_reg_n_0),
        .O(\frame_cnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \frame_cnt[31]_i_4 
       (.I0(line_cnt[29]),
        .I1(line_cnt[16]),
        .I2(line_cnt[28]),
        .I3(line_cnt[30]),
        .I4(\frame_cnt[31]_i_8_n_0 ),
        .O(\frame_cnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \frame_cnt[31]_i_5 
       (.I0(line_cnt[26]),
        .I1(line_cnt[4]),
        .I2(line_cnt[11]),
        .I3(line_cnt[15]),
        .I4(\frame_cnt[31]_i_9_n_0 ),
        .O(\frame_cnt[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \frame_cnt[31]_i_6 
       (.I0(line_cnt[21]),
        .I1(line_cnt[24]),
        .I2(line_cnt[31]),
        .I3(line_cnt[22]),
        .I4(\frame_cnt[31]_i_10_n_0 ),
        .O(\frame_cnt[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \frame_cnt[31]_i_7 
       (.I0(line_cnt[12]),
        .I1(line_cnt[2]),
        .I2(line_cnt[14]),
        .I3(line_cnt[0]),
        .I4(\frame_cnt[31]_i_11_n_0 ),
        .O(\frame_cnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame_cnt[31]_i_8 
       (.I0(line_cnt[17]),
        .I1(line_cnt[7]),
        .I2(line_cnt[20]),
        .I3(line_cnt[18]),
        .O(\frame_cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \frame_cnt[31]_i_9 
       (.I0(line_cnt[9]),
        .I1(line_cnt[8]),
        .I2(line_cnt[1]),
        .I3(line_cnt[10]),
        .O(\frame_cnt[31]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_cnt[7]_i_2 
       (.I0(frame_cnt[0]),
        .O(\frame_cnt[7]_i_2_n_0 ));
  FDRE \frame_cnt_reg[0] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_15 ),
        .Q(frame_cnt[0]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[10] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_13 ),
        .Q(frame_cnt[10]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[11] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_12 ),
        .Q(frame_cnt[11]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[12] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_11 ),
        .Q(frame_cnt[12]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[13] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_10 ),
        .Q(frame_cnt[13]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[14] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_9 ),
        .Q(frame_cnt[14]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[15] 
       (.C(clk_in),
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
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_15 ),
        .Q(frame_cnt[16]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[17] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_14 ),
        .Q(frame_cnt[17]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[18] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_13 ),
        .Q(frame_cnt[18]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[19] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_12 ),
        .Q(frame_cnt[19]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[1] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_14 ),
        .Q(frame_cnt[1]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[20] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_11 ),
        .Q(frame_cnt[20]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[21] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_10 ),
        .Q(frame_cnt[21]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[22] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[23]_i_1_n_9 ),
        .Q(frame_cnt[22]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[23] 
       (.C(clk_in),
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
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_15 ),
        .Q(frame_cnt[24]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[25] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_14 ),
        .Q(frame_cnt[25]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[26] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_13 ),
        .Q(frame_cnt[26]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[27] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_12 ),
        .Q(frame_cnt[27]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[28] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_11 ),
        .Q(frame_cnt[28]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[29] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_10 ),
        .Q(frame_cnt[29]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[2] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_13 ),
        .Q(frame_cnt[2]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[30] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[31]_i_3_n_9 ),
        .Q(frame_cnt[30]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[31] 
       (.C(clk_in),
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
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_12 ),
        .Q(frame_cnt[3]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[4] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_11 ),
        .Q(frame_cnt[4]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[5] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_10 ),
        .Q(frame_cnt[5]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[6] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[7]_i_1_n_9 ),
        .Q(frame_cnt[6]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[7] 
       (.C(clk_in),
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
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_15 ),
        .Q(frame_cnt[8]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  FDRE \frame_cnt_reg[9] 
       (.C(clk_in),
        .CE(\frame_cnt[31]_i_2_n_0 ),
        .D(\frame_cnt_reg[15]_i_1_n_14 ),
        .Q(frame_cnt[9]),
        .R(\frame_cnt[31]_i_1_n_0 ));
  CARRY8 last_frame0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({last_frame0_carry_n_0,last_frame0_carry_n_1,last_frame0_carry_n_2,last_frame0_carry_n_3,last_frame0_carry_n_4,last_frame0_carry_n_5,last_frame0_carry_n_6,last_frame0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_frame0_carry_O_UNCONNECTED[7:0]),
        .S({last_frame0_carry_i_1_n_0,last_frame0_carry_i_2_n_0,last_frame0_carry_i_3_n_0,last_frame0_carry_i_4_n_0,last_frame0_carry_i_5_n_0,last_frame0_carry_i_6_n_0,last_frame0_carry_i_7_n_0,last_frame0_carry_i_8_n_0}));
  CARRY8 last_frame0_carry__0
       (.CI(last_frame0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_last_frame0_carry__0_CO_UNCONNECTED[7:3],last_frame0,last_frame0_carry__0_n_6,last_frame0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_frame0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,last_frame0_carry__0_i_1_n_0,last_frame0_carry__0_i_2_n_0,last_frame0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    last_frame0_carry__0_i_1
       (.I0(last_frame1[31]),
        .I1(frame_cnt[31]),
        .I2(last_frame1[30]),
        .I3(frame_cnt[30]),
        .O(last_frame0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry__0_i_10
       (.I0(frame_cnt_target[26]),
        .O(last_frame0_carry__0_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry__0_i_11
       (.I0(frame_cnt_target[25]),
        .O(last_frame0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry__0_i_2
       (.I0(frame_cnt[29]),
        .I1(last_frame1[29]),
        .I2(frame_cnt[27]),
        .I3(last_frame1[27]),
        .I4(last_frame1[28]),
        .I5(frame_cnt[28]),
        .O(last_frame0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry__0_i_3
       (.I0(last_frame1[25]),
        .I1(frame_cnt[25]),
        .I2(frame_cnt[26]),
        .I3(last_frame1[26]),
        .I4(frame_cnt[24]),
        .I5(last_frame1[24]),
        .O(last_frame0_carry__0_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 last_frame0_carry__0_i_4
       (.CI(last_frame0_carry_i_9_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_last_frame0_carry__0_i_4_CO_UNCONNECTED[7:6],last_frame0_carry__0_i_4_n_2,last_frame0_carry__0_i_4_n_3,last_frame0_carry__0_i_4_n_4,last_frame0_carry__0_i_4_n_5,last_frame0_carry__0_i_4_n_6,last_frame0_carry__0_i_4_n_7}),
        .DI({1'b0,1'b0,frame_cnt_target[30:25]}),
        .O({NLW_last_frame0_carry__0_i_4_O_UNCONNECTED[7],last_frame1[31:25]}),
        .S({1'b0,last_frame0_carry__0_i_5_n_0,last_frame0_carry__0_i_6_n_0,last_frame0_carry__0_i_7_n_0,last_frame0_carry__0_i_8_n_0,last_frame0_carry__0_i_9_n_0,last_frame0_carry__0_i_10_n_0,last_frame0_carry__0_i_11_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry__0_i_5
       (.I0(frame_cnt_target[31]),
        .O(last_frame0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry__0_i_6
       (.I0(frame_cnt_target[30]),
        .O(last_frame0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry__0_i_7
       (.I0(frame_cnt_target[29]),
        .O(last_frame0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry__0_i_8
       (.I0(frame_cnt_target[28]),
        .O(last_frame0_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry__0_i_9
       (.I0(frame_cnt_target[27]),
        .O(last_frame0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry_i_1
       (.I0(frame_cnt[21]),
        .I1(last_frame1[21]),
        .I2(frame_cnt[22]),
        .I3(last_frame1[22]),
        .I4(last_frame1[23]),
        .I5(frame_cnt[23]),
        .O(last_frame0_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 last_frame0_carry_i_10
       (.CI(last_frame0_carry_i_11_n_0),
        .CI_TOP(1'b0),
        .CO({last_frame0_carry_i_10_n_0,last_frame0_carry_i_10_n_1,last_frame0_carry_i_10_n_2,last_frame0_carry_i_10_n_3,last_frame0_carry_i_10_n_4,last_frame0_carry_i_10_n_5,last_frame0_carry_i_10_n_6,last_frame0_carry_i_10_n_7}),
        .DI(frame_cnt_target[16:9]),
        .O(last_frame1[16:9]),
        .S({last_frame0_carry_i_20_n_0,last_frame0_carry_i_21_n_0,last_frame0_carry_i_22_n_0,last_frame0_carry_i_23_n_0,last_frame0_carry_i_24_n_0,last_frame0_carry_i_25_n_0,last_frame0_carry_i_26_n_0,last_frame0_carry_i_27_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 last_frame0_carry_i_11
       (.CI(frame_cnt_target[0]),
        .CI_TOP(1'b0),
        .CO({last_frame0_carry_i_11_n_0,last_frame0_carry_i_11_n_1,last_frame0_carry_i_11_n_2,last_frame0_carry_i_11_n_3,last_frame0_carry_i_11_n_4,last_frame0_carry_i_11_n_5,last_frame0_carry_i_11_n_6,last_frame0_carry_i_11_n_7}),
        .DI(frame_cnt_target[8:1]),
        .O(last_frame1[8:1]),
        .S({last_frame0_carry_i_28_n_0,last_frame0_carry_i_29_n_0,last_frame0_carry_i_30_n_0,last_frame0_carry_i_31_n_0,last_frame0_carry_i_32_n_0,last_frame0_carry_i_33_n_0,last_frame0_carry_i_34_n_0,last_frame0_carry_i_35_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_12
       (.I0(frame_cnt_target[24]),
        .O(last_frame0_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_13
       (.I0(frame_cnt_target[23]),
        .O(last_frame0_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_14
       (.I0(frame_cnt_target[22]),
        .O(last_frame0_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_15
       (.I0(frame_cnt_target[21]),
        .O(last_frame0_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_16
       (.I0(frame_cnt_target[20]),
        .O(last_frame0_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_17
       (.I0(frame_cnt_target[19]),
        .O(last_frame0_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_18
       (.I0(frame_cnt_target[18]),
        .O(last_frame0_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_19
       (.I0(frame_cnt_target[17]),
        .O(last_frame0_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry_i_2
       (.I0(frame_cnt[18]),
        .I1(last_frame1[18]),
        .I2(frame_cnt[19]),
        .I3(last_frame1[19]),
        .I4(last_frame1[20]),
        .I5(frame_cnt[20]),
        .O(last_frame0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_20
       (.I0(frame_cnt_target[16]),
        .O(last_frame0_carry_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_21
       (.I0(frame_cnt_target[15]),
        .O(last_frame0_carry_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_22
       (.I0(frame_cnt_target[14]),
        .O(last_frame0_carry_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_23
       (.I0(frame_cnt_target[13]),
        .O(last_frame0_carry_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_24
       (.I0(frame_cnt_target[12]),
        .O(last_frame0_carry_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_25
       (.I0(frame_cnt_target[11]),
        .O(last_frame0_carry_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_26
       (.I0(frame_cnt_target[10]),
        .O(last_frame0_carry_i_26_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_27
       (.I0(frame_cnt_target[9]),
        .O(last_frame0_carry_i_27_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_28
       (.I0(frame_cnt_target[8]),
        .O(last_frame0_carry_i_28_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_29
       (.I0(frame_cnt_target[7]),
        .O(last_frame0_carry_i_29_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry_i_3
       (.I0(frame_cnt[15]),
        .I1(last_frame1[15]),
        .I2(frame_cnt[16]),
        .I3(last_frame1[16]),
        .I4(last_frame1[17]),
        .I5(frame_cnt[17]),
        .O(last_frame0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_30
       (.I0(frame_cnt_target[6]),
        .O(last_frame0_carry_i_30_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_31
       (.I0(frame_cnt_target[5]),
        .O(last_frame0_carry_i_31_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_32
       (.I0(frame_cnt_target[4]),
        .O(last_frame0_carry_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_33
       (.I0(frame_cnt_target[3]),
        .O(last_frame0_carry_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_34
       (.I0(frame_cnt_target[2]),
        .O(last_frame0_carry_i_34_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_frame0_carry_i_35
       (.I0(frame_cnt_target[1]),
        .O(last_frame0_carry_i_35_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry_i_4
       (.I0(frame_cnt[13]),
        .I1(last_frame1[13]),
        .I2(frame_cnt[12]),
        .I3(last_frame1[12]),
        .I4(last_frame1[14]),
        .I5(frame_cnt[14]),
        .O(last_frame0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry_i_5
       (.I0(last_frame1[10]),
        .I1(frame_cnt[10]),
        .I2(frame_cnt[11]),
        .I3(last_frame1[11]),
        .I4(frame_cnt[9]),
        .I5(last_frame1[9]),
        .O(last_frame0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry_i_6
       (.I0(frame_cnt[8]),
        .I1(last_frame1[8]),
        .I2(frame_cnt[6]),
        .I3(last_frame1[6]),
        .I4(last_frame1[7]),
        .I5(frame_cnt[7]),
        .O(last_frame0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_frame0_carry_i_7
       (.I0(frame_cnt[3]),
        .I1(last_frame1[3]),
        .I2(frame_cnt[4]),
        .I3(last_frame1[4]),
        .I4(last_frame1[5]),
        .I5(frame_cnt[5]),
        .O(last_frame0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    last_frame0_carry_i_8
       (.I0(frame_cnt[2]),
        .I1(last_frame1[2]),
        .I2(frame_cnt[1]),
        .I3(last_frame1[1]),
        .I4(frame_cnt_target[0]),
        .I5(frame_cnt[0]),
        .O(last_frame0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 last_frame0_carry_i_9
       (.CI(last_frame0_carry_i_10_n_0),
        .CI_TOP(1'b0),
        .CO({last_frame0_carry_i_9_n_0,last_frame0_carry_i_9_n_1,last_frame0_carry_i_9_n_2,last_frame0_carry_i_9_n_3,last_frame0_carry_i_9_n_4,last_frame0_carry_i_9_n_5,last_frame0_carry_i_9_n_6,last_frame0_carry_i_9_n_7}),
        .DI(frame_cnt_target[24:17]),
        .O(last_frame1[24:17]),
        .S({last_frame0_carry_i_12_n_0,last_frame0_carry_i_13_n_0,last_frame0_carry_i_14_n_0,last_frame0_carry_i_15_n_0,last_frame0_carry_i_16_n_0,last_frame0_carry_i_17_n_0,last_frame0_carry_i_18_n_0,last_frame0_carry_i_19_n_0}));
  LUT6 #(
    .INIT(64'hFC88CC88CC88CC88)) 
    last_frame_i_1
       (.I0(cap_enable),
        .I1(last_frame_reg_n_0),
        .I2(last_frame0),
        .I3(running_reg_n_0),
        .I4(gpio),
        .I5(mux_data_valid_o),
        .O(last_frame_i_1_n_0));
  FDRE last_frame_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(last_frame_i_1_n_0),
        .Q(last_frame_reg_n_0),
        .R(cap_status_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \line_cnt[0]_i_1 
       (.I0(line_cnt[0]),
        .O(line_cnt_0[0]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[10]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[11]_i_1 
       (.I0(data0[11]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[11]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[12]_i_1 
       (.I0(data0[12]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[12]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[13]_i_1 
       (.I0(data0[13]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[13]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[14]_i_1 
       (.I0(data0[14]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[14]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[15]_i_1 
       (.I0(data0[15]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[15]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[16]_i_1 
       (.I0(data0[16]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[16]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[17]_i_1 
       (.I0(data0[17]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[17]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[18]_i_1 
       (.I0(data0[18]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[18]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[19]_i_1 
       (.I0(data0[19]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[19]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[1]_i_1 
       (.I0(data0[1]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[1]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[20]_i_1 
       (.I0(data0[20]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[20]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[21]_i_1 
       (.I0(data0[21]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[21]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[22]_i_1 
       (.I0(data0[22]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[22]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[23]_i_1 
       (.I0(data0[23]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[23]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[24]_i_1 
       (.I0(data0[24]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[24]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[25]_i_1 
       (.I0(data0[25]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[25]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[26]_i_1 
       (.I0(data0[26]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[26]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[27]_i_1 
       (.I0(data0[27]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[27]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[28]_i_1 
       (.I0(data0[28]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[28]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[29]_i_1 
       (.I0(data0[29]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[29]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[2]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[30]_i_1 
       (.I0(data0[30]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[30]));
  LUT2 #(
    .INIT(4'h7)) 
    \line_cnt[31]_i_1 
       (.I0(running_reg_n_0),
        .I1(m_axis_aresetn),
        .O(\line_cnt[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \line_cnt[31]_i_2 
       (.I0(gpio),
        .I1(mux_data_valid_o),
        .O(line_cnt0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[31]_i_3 
       (.I0(data0[31]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[31]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[3]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[4]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[5]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[6]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[7]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[8]));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \line_cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(\frame_cnt[31]_i_4_n_0 ),
        .I2(\frame_cnt[31]_i_5_n_0 ),
        .I3(\frame_cnt[31]_i_6_n_0 ),
        .I4(\frame_cnt[31]_i_7_n_0 ),
        .O(line_cnt_0[9]));
  FDRE \line_cnt_reg[0] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[0]),
        .Q(line_cnt[0]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[10] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[10]),
        .Q(line_cnt[10]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[11] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[11]),
        .Q(line_cnt[11]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[12] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[12]),
        .Q(line_cnt[12]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[13] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[13]),
        .Q(line_cnt[13]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[14] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[14]),
        .Q(line_cnt[14]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[15] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[15]),
        .Q(line_cnt[15]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[16] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[16]),
        .Q(line_cnt[16]),
        .R(\line_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \line_cnt_reg[16]_i_2 
       (.CI(\line_cnt_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\line_cnt_reg[16]_i_2_n_0 ,\line_cnt_reg[16]_i_2_n_1 ,\line_cnt_reg[16]_i_2_n_2 ,\line_cnt_reg[16]_i_2_n_3 ,\line_cnt_reg[16]_i_2_n_4 ,\line_cnt_reg[16]_i_2_n_5 ,\line_cnt_reg[16]_i_2_n_6 ,\line_cnt_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:9]),
        .S(line_cnt[16:9]));
  FDRE \line_cnt_reg[17] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[17]),
        .Q(line_cnt[17]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[18] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[18]),
        .Q(line_cnt[18]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[19] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[19]),
        .Q(line_cnt[19]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[1] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[1]),
        .Q(line_cnt[1]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[20] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[20]),
        .Q(line_cnt[20]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[21] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[21]),
        .Q(line_cnt[21]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[22] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[22]),
        .Q(line_cnt[22]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[23] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[23]),
        .Q(line_cnt[23]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[24] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[24]),
        .Q(line_cnt[24]),
        .R(\line_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \line_cnt_reg[24]_i_2 
       (.CI(\line_cnt_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\line_cnt_reg[24]_i_2_n_0 ,\line_cnt_reg[24]_i_2_n_1 ,\line_cnt_reg[24]_i_2_n_2 ,\line_cnt_reg[24]_i_2_n_3 ,\line_cnt_reg[24]_i_2_n_4 ,\line_cnt_reg[24]_i_2_n_5 ,\line_cnt_reg[24]_i_2_n_6 ,\line_cnt_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:17]),
        .S(line_cnt[24:17]));
  FDRE \line_cnt_reg[25] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[25]),
        .Q(line_cnt[25]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[26] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[26]),
        .Q(line_cnt[26]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[27] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[27]),
        .Q(line_cnt[27]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[28] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[28]),
        .Q(line_cnt[28]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[29] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[29]),
        .Q(line_cnt[29]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[2] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[2]),
        .Q(line_cnt[2]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[30] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[30]),
        .Q(line_cnt[30]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[31] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[31]),
        .Q(line_cnt[31]),
        .R(\line_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \line_cnt_reg[31]_i_4 
       (.CI(\line_cnt_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_line_cnt_reg[31]_i_4_CO_UNCONNECTED [7:6],\line_cnt_reg[31]_i_4_n_2 ,\line_cnt_reg[31]_i_4_n_3 ,\line_cnt_reg[31]_i_4_n_4 ,\line_cnt_reg[31]_i_4_n_5 ,\line_cnt_reg[31]_i_4_n_6 ,\line_cnt_reg[31]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_line_cnt_reg[31]_i_4_O_UNCONNECTED [7],data0[31:25]}),
        .S({1'b0,line_cnt[31:25]}));
  FDRE \line_cnt_reg[3] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[3]),
        .Q(line_cnt[3]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[4] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[4]),
        .Q(line_cnt[4]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[5] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[5]),
        .Q(line_cnt[5]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[6] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[6]),
        .Q(line_cnt[6]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[7] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[7]),
        .Q(line_cnt[7]),
        .R(\line_cnt[31]_i_1_n_0 ));
  FDRE \line_cnt_reg[8] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[8]),
        .Q(line_cnt[8]),
        .R(\line_cnt[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \line_cnt_reg[8]_i_2 
       (.CI(line_cnt[0]),
        .CI_TOP(1'b0),
        .CO({\line_cnt_reg[8]_i_2_n_0 ,\line_cnt_reg[8]_i_2_n_1 ,\line_cnt_reg[8]_i_2_n_2 ,\line_cnt_reg[8]_i_2_n_3 ,\line_cnt_reg[8]_i_2_n_4 ,\line_cnt_reg[8]_i_2_n_5 ,\line_cnt_reg[8]_i_2_n_6 ,\line_cnt_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:1]),
        .S(line_cnt[8:1]));
  FDRE \line_cnt_reg[9] 
       (.C(clk_in),
        .CE(line_cnt0),
        .D(line_cnt_0[9]),
        .Q(line_cnt[9]),
        .R(\line_cnt[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[0]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux3_data_o[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[10]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux2_data_o[2]),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[11]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux2_data_o[3]),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[12]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux2_data_o[4]),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[13]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux2_data_o[5]),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[14]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux2_data_o[6]),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[15]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux2_data_o[7]),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[16]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux1_data_o[0]),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[17]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux1_data_o[1]),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[18]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux1_data_o[2]),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[19]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux1_data_o[3]),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[1]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux3_data_o[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[20]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux1_data_o[4]),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[21]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux1_data_o[5]),
        .O(p_2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[22]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux1_data_o[6]),
        .O(p_2_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[23]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux1_data_o[7]),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[24]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux0_data_o[0]),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[25]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux0_data_o[1]),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[26]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux0_data_o[2]),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[27]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux0_data_o[3]),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[28]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux0_data_o[4]),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[29]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux0_data_o[5]),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[2]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux3_data_o[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[30]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux0_data_o[6]),
        .O(p_2_in[30]));
  LUT3 #(
    .INIT(8'hFB)) 
    \m_axis_tdata[31]_i_1 
       (.I0(running_reg_n_0),
        .I1(cap_enable),
        .I2(last_frame_reg_n_0),
        .O(\m_axis_tdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[31]_i_2 
       (.I0(running_reg_n_0),
        .I1(s_mux0_data_o[7]),
        .O(p_2_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[3]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux3_data_o[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[4]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux3_data_o[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[5]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux3_data_o[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[6]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux3_data_o[6]),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[7]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux3_data_o[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[8]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux2_data_o[0]),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[9]_i_1 
       (.I0(running_reg_n_0),
        .I1(s_mux2_data_o[1]),
        .O(p_2_in[9]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(m_axis_tdata[0]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(m_axis_tdata[10]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(m_axis_tdata[11]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(m_axis_tdata[12]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(m_axis_tdata[13]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(m_axis_tdata[14]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(m_axis_tdata[15]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(m_axis_tdata[16]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(m_axis_tdata[17]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(m_axis_tdata[18]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(m_axis_tdata[19]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(m_axis_tdata[1]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(m_axis_tdata[20]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(m_axis_tdata[21]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(m_axis_tdata[22]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(m_axis_tdata[23]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(m_axis_tdata[24]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(m_axis_tdata[25]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(m_axis_tdata[26]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(m_axis_tdata[27]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(m_axis_tdata[28]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(m_axis_tdata[29]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(m_axis_tdata[2]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(m_axis_tdata[30]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(m_axis_tdata[31]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(m_axis_tdata[3]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(m_axis_tdata[4]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(m_axis_tdata[5]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(m_axis_tdata[6]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(m_axis_tdata[7]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(m_axis_tdata[8]),
        .R(cap_status_i_1_n_0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(clk_in),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(m_axis_tdata[9]),
        .R(cap_status_i_1_n_0));
  CARRY8 m_axis_tlast1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast1_carry_n_0,m_axis_tlast1_carry_n_1,m_axis_tlast1_carry_n_2,m_axis_tlast1_carry_n_3,m_axis_tlast1_carry_n_4,m_axis_tlast1_carry_n_5,m_axis_tlast1_carry_n_6,m_axis_tlast1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast1_carry_O_UNCONNECTED[7:0]),
        .S({m_axis_tlast1_carry_i_1_n_0,m_axis_tlast1_carry_i_2_n_0,m_axis_tlast1_carry_i_3_n_0,m_axis_tlast1_carry_i_4_n_0,m_axis_tlast1_carry_i_5_n_0,m_axis_tlast1_carry_i_6_n_0,m_axis_tlast1_carry_i_7_n_0,m_axis_tlast1_carry_i_8_n_0}));
  CARRY8 m_axis_tlast1_carry__0
       (.CI(m_axis_tlast1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_m_axis_tlast1_carry__0_CO_UNCONNECTED[7:3],m_axis_tlast1,m_axis_tlast1_carry__0_n_6,m_axis_tlast1_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast1_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,m_axis_tlast1_carry__0_i_1_n_0,m_axis_tlast1_carry__0_i_2_n_0,m_axis_tlast1_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast1_carry__0_i_1
       (.I0(frame_cnt_target[30]),
        .I1(frame_cnt[30]),
        .I2(frame_cnt_target[31]),
        .I3(frame_cnt[31]),
        .O(m_axis_tlast1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry__0_i_2
       (.I0(frame_cnt_target[27]),
        .I1(frame_cnt[27]),
        .I2(frame_cnt[29]),
        .I3(frame_cnt_target[29]),
        .I4(frame_cnt[28]),
        .I5(frame_cnt_target[28]),
        .O(m_axis_tlast1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry__0_i_3
       (.I0(frame_cnt_target[25]),
        .I1(frame_cnt[25]),
        .I2(frame_cnt[26]),
        .I3(frame_cnt_target[26]),
        .I4(frame_cnt[24]),
        .I5(frame_cnt_target[24]),
        .O(m_axis_tlast1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry_i_1
       (.I0(frame_cnt_target[21]),
        .I1(frame_cnt[21]),
        .I2(frame_cnt[23]),
        .I3(frame_cnt_target[23]),
        .I4(frame_cnt[22]),
        .I5(frame_cnt_target[22]),
        .O(m_axis_tlast1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry_i_2
       (.I0(frame_cnt_target[18]),
        .I1(frame_cnt[18]),
        .I2(frame_cnt[20]),
        .I3(frame_cnt_target[20]),
        .I4(frame_cnt[19]),
        .I5(frame_cnt_target[19]),
        .O(m_axis_tlast1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry_i_3
       (.I0(frame_cnt_target[15]),
        .I1(frame_cnt[15]),
        .I2(frame_cnt[17]),
        .I3(frame_cnt_target[17]),
        .I4(frame_cnt[16]),
        .I5(frame_cnt_target[16]),
        .O(m_axis_tlast1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry_i_4
       (.I0(frame_cnt_target[13]),
        .I1(frame_cnt[13]),
        .I2(frame_cnt[14]),
        .I3(frame_cnt_target[14]),
        .I4(frame_cnt[12]),
        .I5(frame_cnt_target[12]),
        .O(m_axis_tlast1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry_i_5
       (.I0(frame_cnt_target[10]),
        .I1(frame_cnt[10]),
        .I2(frame_cnt[11]),
        .I3(frame_cnt_target[11]),
        .I4(frame_cnt[9]),
        .I5(frame_cnt_target[9]),
        .O(m_axis_tlast1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry_i_6
       (.I0(frame_cnt_target[6]),
        .I1(frame_cnt[6]),
        .I2(frame_cnt[8]),
        .I3(frame_cnt_target[8]),
        .I4(frame_cnt[7]),
        .I5(frame_cnt_target[7]),
        .O(m_axis_tlast1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry_i_7
       (.I0(frame_cnt_target[3]),
        .I1(frame_cnt[3]),
        .I2(frame_cnt[5]),
        .I3(frame_cnt_target[5]),
        .I4(frame_cnt[4]),
        .I5(frame_cnt_target[4]),
        .O(m_axis_tlast1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast1_carry_i_8
       (.I0(frame_cnt_target[0]),
        .I1(frame_cnt[0]),
        .I2(frame_cnt[2]),
        .I3(frame_cnt_target[2]),
        .I4(frame_cnt[1]),
        .I5(frame_cnt_target[1]),
        .O(m_axis_tlast1_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h0200FFFF)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast1),
        .I1(word_cnt_reg[0]),
        .I2(m_axis_tlast_i_3_n_0),
        .I3(m_axis_tlast_i_4_n_0),
        .I4(running_reg_n_0),
        .O(m_axis_tlast_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    m_axis_tlast_i_2
       (.I0(m_axis_tlast1),
        .I1(word_cnt_reg[0]),
        .I2(m_axis_tlast_i_3_n_0),
        .I3(m_axis_tlast_i_4_n_0),
        .I4(running_reg_n_0),
        .O(m_axis_tlast_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    m_axis_tlast_i_3
       (.I0(word_cnt_reg[1]),
        .I1(word_cnt_reg[3]),
        .I2(mux_data_valid_o),
        .I3(word_cnt_reg[5]),
        .O(m_axis_tlast_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    m_axis_tlast_i_4
       (.I0(word_cnt_reg[2]),
        .I1(word_cnt_reg[4]),
        .I2(gpio),
        .O(m_axis_tlast_i_4_n_0));
  FDRE m_axis_tlast_reg
       (.C(clk_in),
        .CE(m_axis_tlast_i_1_n_0),
        .D(m_axis_tlast_i_2_n_0),
        .Q(m_axis_tlast),
        .R(cap_status_i_1_n_0));
  LUT6 #(
    .INIT(64'hC0AAC00000000000)) 
    m_axis_tvalid_i_1
       (.I0(cap_status0),
        .I1(mux_data_valid_o),
        .I2(cap_status),
        .I3(running_reg_n_0),
        .I4(m_axis_tvalid),
        .I5(m_axis_aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tvalid_i_2
       (.I0(cap_enable),
        .I1(last_frame_reg_n_0),
        .O(cap_status0));
  FDRE m_axis_tvalid_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    running_i_1
       (.I0(last_frame_reg_n_0),
        .I1(cap_enable),
        .I2(running_reg_n_0),
        .O(running4_out));
  FDRE running_reg
       (.C(clk_in),
        .CE(m_axis_tlast_i_1_n_0),
        .D(running4_out),
        .Q(running_reg_n_0),
        .R(cap_status_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \word_cnt[0]_i_1 
       (.I0(word_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \word_cnt[1]_i_1 
       (.I0(word_cnt_reg[0]),
        .I1(word_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \word_cnt[2]_i_1 
       (.I0(word_cnt_reg[2]),
        .I1(word_cnt_reg[1]),
        .I2(word_cnt_reg[0]),
        .O(\word_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \word_cnt[3]_i_1 
       (.I0(word_cnt_reg[3]),
        .I1(word_cnt_reg[0]),
        .I2(word_cnt_reg[1]),
        .I3(word_cnt_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \word_cnt[4]_i_1 
       (.I0(word_cnt_reg[4]),
        .I1(word_cnt_reg[2]),
        .I2(word_cnt_reg[1]),
        .I3(word_cnt_reg[0]),
        .I4(word_cnt_reg[3]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h8FFF)) 
    \word_cnt[5]_i_1 
       (.I0(mux_data_valid_o),
        .I1(gpio),
        .I2(m_axis_aresetn),
        .I3(running_reg_n_0),
        .O(\word_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \word_cnt[5]_i_2 
       (.I0(word_cnt_reg[5]),
        .I1(word_cnt_reg[3]),
        .I2(word_cnt_reg[0]),
        .I3(word_cnt_reg[1]),
        .I4(word_cnt_reg[2]),
        .I5(word_cnt_reg[4]),
        .O(p_0_in[5]));
  FDRE \word_cnt_reg[0] 
       (.C(clk_in),
        .CE(mux_data_valid_o),
        .D(p_0_in[0]),
        .Q(word_cnt_reg[0]),
        .R(\word_cnt[5]_i_1_n_0 ));
  FDRE \word_cnt_reg[1] 
       (.C(clk_in),
        .CE(mux_data_valid_o),
        .D(p_0_in[1]),
        .Q(word_cnt_reg[1]),
        .R(\word_cnt[5]_i_1_n_0 ));
  FDRE \word_cnt_reg[2] 
       (.C(clk_in),
        .CE(mux_data_valid_o),
        .D(\word_cnt[2]_i_1_n_0 ),
        .Q(word_cnt_reg[2]),
        .R(\word_cnt[5]_i_1_n_0 ));
  FDRE \word_cnt_reg[3] 
       (.C(clk_in),
        .CE(mux_data_valid_o),
        .D(p_0_in[3]),
        .Q(word_cnt_reg[3]),
        .R(\word_cnt[5]_i_1_n_0 ));
  FDRE \word_cnt_reg[4] 
       (.C(clk_in),
        .CE(mux_data_valid_o),
        .D(p_0_in[4]),
        .Q(word_cnt_reg[4]),
        .R(\word_cnt[5]_i_1_n_0 ));
  FDRE \word_cnt_reg[5] 
       (.C(clk_in),
        .CE(mux_data_valid_o),
        .D(p_0_in[5]),
        .Q(word_cnt_reg[5]),
        .R(\word_cnt[5]_i_1_n_0 ));
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
