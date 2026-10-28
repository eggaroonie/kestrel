// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Wed Oct 28 14:13:40 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jackson/projects/kestrel/SW_Dev/KestrelDev_V_0_1/KestrelDev_V_0_1.gen/sources_1/bd/zusys/ip/zusys_dummy_AISC110C_0_0/zusys_dummy_AISC110C_0_0_stub.v
// Design      : zusys_dummy_AISC110C_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "zusys_dummy_AISC110C_0_0,dummy_AISC110C,{}" *) (* CORE_GENERATION_INFO = "zusys_dummy_AISC110C_0_0,dummy_AISC110C,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=dummy_AISC110C,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "dummy_AISC110C,Vivado 2024.2" *) 
module zusys_dummy_AISC110C_0_0(clk_in, cap_enable, rstn, dummy_data, gpio, 
  mux_data_valid_o, m_mux0_data_o, m_mux1_data_o, m_mux2_data_o, m_mux3_data_o, clk_out)
/* synthesis syn_black_box black_box_pad_pin="cap_enable,rstn,dummy_data[31:0],gpio[3:0],mux_data_valid_o,m_mux0_data_o[7:0],m_mux1_data_o[7:0],m_mux2_data_o[7:0],m_mux3_data_o[7:0]" */
/* synthesis syn_force_seq_prim="clk_in" */
/* synthesis syn_force_seq_prim="clk_out" */;
  input clk_in /* synthesis syn_isclock = 1 */;
  input cap_enable;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [31:0]dummy_data;
  output [3:0]gpio;
  output mux_data_valid_o;
  output [7:0]m_mux0_data_o;
  output [7:0]m_mux1_data_o;
  output [7:0]m_mux2_data_o;
  output [7:0]m_mux3_data_o;
  output clk_out /* synthesis syn_isclock = 1 */;
endmodule
