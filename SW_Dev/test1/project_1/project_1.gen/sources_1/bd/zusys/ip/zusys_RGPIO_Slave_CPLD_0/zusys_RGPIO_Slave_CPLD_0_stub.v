// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Sep 25 16:30:04 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top zusys_RGPIO_Slave_CPLD_0 -prefix
//               zusys_RGPIO_Slave_CPLD_0_ zusys_RGPIO_Master_CPLD_0_stub.v
// Design      : zusys_RGPIO_Master_CPLD_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "zusys_RGPIO_Master_CPLD_0,RGPIO_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "RGPIO_top,Vivado 2024.2" *) 
module zusys_RGPIO_Slave_CPLD_0(RGPIO_M_CLK, RGPIO_M_RX, RGPIO_M_TX, 
  RGPIO_M_OUT, RGPIO_M_IN, RGPIO_M_ENABLE, RGPIO_M_USRCLK, RGPIO_M_RESET_N)
/* synthesis syn_black_box black_box_pad_pin="RGPIO_M_CLK,RGPIO_M_RX,RGPIO_M_TX,RGPIO_M_OUT[23:0],RGPIO_M_IN[23:0],RGPIO_M_ENABLE,RGPIO_M_RESET_N" */
/* synthesis syn_force_seq_prim="RGPIO_M_USRCLK" */;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_M_EXT CLK" *) (* x_interface_mode = "master RGPIO_M_EXT" *) output RGPIO_M_CLK;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_M_EXT RX" *) input RGPIO_M_RX;
  (* x_interface_info = "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_M_EXT TX" *) output RGPIO_M_TX;
  (* x_interface_info = "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR DATA_OUT" *) (* x_interface_mode = "slave RGPIO_M_USR" *) output [23:0]RGPIO_M_OUT;
  (* x_interface_info = "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR DATA_IN" *) input [23:0]RGPIO_M_IN;
  (* x_interface_info = "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR ENABLE" *) input RGPIO_M_ENABLE;
  (* x_interface_info = "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR CLK" *) input RGPIO_M_USRCLK /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR RESET_N" *) input RGPIO_M_RESET_N;
endmodule
