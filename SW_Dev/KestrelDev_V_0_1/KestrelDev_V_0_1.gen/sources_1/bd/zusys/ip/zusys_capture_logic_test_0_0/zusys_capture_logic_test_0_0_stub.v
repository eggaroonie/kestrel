// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Oct 27 15:43:01 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jackson/projects/kestrel/SW_Dev/KestrelDev_V_0_1/KestrelDev_V_0_1.gen/sources_1/bd/zusys/ip/zusys_capture_logic_test_0_0/zusys_capture_logic_test_0_0_stub.v
// Design      : zusys_capture_logic_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "zusys_capture_logic_test_0_0,capture_logic_test,{}" *) (* CORE_GENERATION_INFO = "zusys_capture_logic_test_0_0,capture_logic_test,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=capture_logic_test,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "capture_logic_test,Vivado 2024.2" *) 
module zusys_capture_logic_test_0_0(ctrl, frame_cnt_target, cap_enable, clk_in, 
  cap_status, frame_cnt, m_axis_tdata, m_axis_tkeep, m_axis_tlast, m_axis_tvalid, m_axis_aclk, 
  m_axis_tready, m_axis_aresetn, mux_data_valid_o, gpio, s_mux0_data_o, s_mux1_data_o, 
  s_mux2_data_o, s_mux3_data_o)
/* synthesis syn_black_box black_box_pad_pin="ctrl[31:0],frame_cnt_target[31:0],cap_enable,cap_status,frame_cnt[31:0],m_axis_tdata[31:0],m_axis_tkeep[3:0],m_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_aresetn,mux_data_valid_o,gpio[3:0],s_mux0_data_o[7:0],s_mux1_data_o[7:0],s_mux2_data_o[7:0],s_mux3_data_o[7:0]" */
/* synthesis syn_force_seq_prim="clk_in" */
/* synthesis syn_force_seq_prim="m_axis_aclk" */;
  input [31:0]ctrl;
  input [31:0]frame_cnt_target;
  input cap_enable;
  input clk_in /* synthesis syn_isclock = 1 */;
  output cap_status;
  output [31:0]frame_cnt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN zusys_capture_logic_test_0_0_m_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aclk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_capture_logic_test_0_0_m_axis_aclk, INSERT_VIP 0" *) output m_axis_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axis_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_aresetn;
  input mux_data_valid_o;
  input [3:0]gpio;
  input [7:0]s_mux0_data_o;
  input [7:0]s_mux1_data_o;
  input [7:0]s_mux2_data_o;
  input [7:0]s_mux3_data_o;
endmodule
