// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Oct  3 15:02:54 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jackson/projects/Kestrel/AXItest/AXITest/AXITest.gen/sources_1/bd/zusys/ip/zusys_capture_test1_0_0/zusys_capture_test1_0_0_stub.v
// Design      : zusys_capture_test1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "zusys_capture_test1_0_0,capture_test1,{}" *) (* CORE_GENERATION_INFO = "zusys_capture_test1_0_0,capture_test1,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=capture_test1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,TICK=2500}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "capture_test1,Vivado 2024.2" *) 
module zusys_capture_test1_0_0(clk, rstn, cap_enable, frame_cnt_target, 
  cap_status, frame_cnt)
/* synthesis syn_black_box black_box_pad_pin="rstn,cap_enable,frame_cnt_target[31:0],cap_status,frame_cnt[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* X_INTERFACE_IGNORE = "true" *) input cap_enable;
  input [31:0]frame_cnt_target;
  output cap_status;
  output [31:0]frame_cnt;
endmodule
