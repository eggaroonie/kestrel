// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Oct  3 15:02:50 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zusys_SC0808BF_0_0_stub.v
// Design      : zusys_SC0808BF_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "zusys_SC0808BF_0_0,SC0808BF,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SC0808BF,Vivado 2024.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(PS_AUX_DI, PS_AUX_DO, PS_AUX_OE, PS_DP_HPD, SC0, 
  SC5, SC6, SC7, SC10_I, SC10_O, SC10_T, SC11, SC12, SC13, SC15, SC14, SC16, SC17, SC18, SC19, CAN_RX, CAN_TX, CAN_S, 
  LED_HD, LED_XMOD2, RGPIO_M_CLK, RGPIO_M_RX, RGPIO_M_TX, RGPIO_S_CLK, RGPIO_S_RX, RGPIO_S_TX)
/* synthesis syn_black_box black_box_pad_pin="PS_AUX_DI,PS_AUX_DO,PS_AUX_OE,PS_DP_HPD,SC0,SC5,SC6,SC7,SC10_I,SC10_O,SC10_T,SC11,SC12,SC13,SC15,SC14,SC16,SC17,SC18,SC19,CAN_RX,CAN_TX,CAN_S,LED_HD,LED_XMOD2,RGPIO_M_CLK,RGPIO_M_RX,RGPIO_M_TX,RGPIO_S_CLK,RGPIO_S_RX,RGPIO_S_TX" */;
  output PS_AUX_DI;
  input PS_AUX_DO;
  input PS_AUX_OE;
  output PS_DP_HPD;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC0" *) (* x_interface_mode = "master BASE" *) output SC0;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC5" *) input SC5;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC6" *) output SC6;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC7" *) output SC7;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_I" *) input SC10_I;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_O" *) output SC10_O;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_T" *) output SC10_T;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC11" *) output SC11;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC12" *) input SC12;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC13" *) input SC13;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC15" *) output SC15;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC14" *) output SC14;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC16" *) output SC16;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC17" *) output SC17;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC18" *) output SC18;
  (* x_interface_info = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC19" *) input SC19;
  (* x_interface_info = "xilinx.com:interface:can:1.0 CAN RX" *) (* x_interface_mode = "mirroredMaster CAN" *) output CAN_RX;
  (* x_interface_info = "xilinx.com:interface:can:1.0 CAN TX" *) input CAN_TX;
  input CAN_S;
  input LED_HD;
  input LED_XMOD2;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_MASTER_CPLD CLK" *) (* x_interface_mode = "slave RGPIO_MASTER_CPLD" *) input RGPIO_M_CLK;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_MASTER_CPLD RX" *) output RGPIO_M_RX;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_MASTER_CPLD TX" *) input RGPIO_M_TX;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_SLAVE_CPLD CLK" *) (* x_interface_mode = "slave RGPIO_SLAVE_CPLD" *) input RGPIO_S_CLK;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_SLAVE_CPLD RX" *) output RGPIO_S_RX;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_SLAVE_CPLD TX" *) input RGPIO_S_TX;
endmodule
