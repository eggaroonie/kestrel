// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Sep 25 16:30:07 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jackson/projects/test1/project_1/project_1.gen/sources_1/bd/zusys/ip/zusys_p2_blink_ps_0_0/zusys_p2_blink_ps_0_0_stub.v
// Design      : zusys_p2_blink_ps_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "zusys_p2_blink_ps_0_0,p2_blink_ps,{}" *) (* core_generation_info = "zusys_p2_blink_ps_0_0,p2_blink_ps,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=p2_blink_ps,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "p2_blink_ps,Vivado 2024.2" *) 
module zusys_p2_blink_ps_0_0(p2_clk, ex_io5, dir4, dir_unused, blink_to_ps)
/* synthesis syn_black_box black_box_pad_pin="ex_io5,dir4,dir_unused[2:0],blink_to_ps" */
/* synthesis syn_force_seq_prim="p2_clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 p2_clk CLK" *) (* x_interface_mode = "slave p2_clk" *) (* x_interface_parameter = "FREQ_HZ 100000000" *) input p2_clk /* synthesis syn_isclock = 1 */;
  output ex_io5;
  output dir4;
  output [2:0]dir_unused;
  output blink_to_ps;
endmodule
