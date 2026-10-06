// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Sep 25 16:30:05 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/jackson/projects/test1/project_1/project_1.gen/sources_1/bd/zusys/ip/zusys_axis_live_audio_0_0/zusys_axis_live_audio_0_0_stub.v
// Design      : zusys_axis_live_audio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "zusys_axis_live_audio_0_0,axis_live_audio_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axis_live_audio_v1_0,Vivado 2024.2" *) 
module zusys_axis_live_audio_0_0(axis_aclk, s_axis_tdata, s_axis_tid, 
  s_axis_tvalid, m_axis_tdata, m_axis_tid, m_axis_tready, m_axis_tvalid, BCLK, LRCLK, DAC_SDATA, 
  ADC_SDATA, s_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="s_axis_tdata[31:0],s_axis_tid,s_axis_tvalid,m_axis_tdata[31:0],m_axis_tid,m_axis_tready,m_axis_tvalid,BCLK,LRCLK,DAC_SDATA,ADC_SDATA,s_axis_tready" */
/* synthesis syn_force_seq_prim="axis_aclk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* x_interface_mode = "slave axis_aclk" *) (* x_interface_parameter = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_BUSIF s_axis:m_axis, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_dp_audio_ref_clk, INSERT_VIP 0" *) input axis_aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_mode = "slave s_axis" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_dp_audio_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TID" *) input s_axis_tid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_mode = "master m_axis" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_dp_audio_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TID" *) output m_axis_tid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "trenz.biz:user:I2S:1.0 I2S BCLK" *) (* x_interface_mode = "slave I2S" *) input BCLK;
  (* x_interface_info = "trenz.biz:user:I2S:1.0 I2S LRCLK" *) input LRCLK;
  (* x_interface_info = "trenz.biz:user:I2S:1.0 I2S SDIN" *) output DAC_SDATA;
  (* x_interface_info = "trenz.biz:user:I2S:1.0 I2S SDOUT" *) input ADC_SDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
endmodule
