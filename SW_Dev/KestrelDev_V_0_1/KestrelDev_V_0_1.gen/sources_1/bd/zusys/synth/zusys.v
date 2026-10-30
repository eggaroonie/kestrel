//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu Oct 29 18:29:40 2026
//Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
//Command     : generate_target zusys.bd
//Design      : zusys
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RGPIO_imp_139ZQEB
   (RGPIO_M_EXT1_clk,
    RGPIO_M_EXT1_rx,
    RGPIO_M_EXT1_tx,
    RGPIO_M_EXT_clk,
    RGPIO_M_EXT_rx,
    RGPIO_M_EXT_tx,
    RGPIO_M_RESET_N,
    clk,
    clk1);
  output RGPIO_M_EXT1_clk;
  input RGPIO_M_EXT1_rx;
  output RGPIO_M_EXT1_tx;
  output RGPIO_M_EXT_clk;
  input RGPIO_M_EXT_rx;
  output RGPIO_M_EXT_tx;
  input RGPIO_M_RESET_N;
  input clk;
  input clk1;

  wire RGPIO_M_EXT1_clk;
  wire RGPIO_M_EXT1_rx;
  wire RGPIO_M_EXT1_tx;
  wire RGPIO_M_EXT_clk;
  wire RGPIO_M_EXT_rx;
  wire RGPIO_M_EXT_tx;
  wire RGPIO_M_RESET_N;
  wire [23:0]RGPIO_Master_CPLD_RGPIO_M_OUT;
  wire [23:0]RGPIO_Slave_CPLD_RGPIO_M_OUT;
  wire clk;
  wire clk1_1;
  wire [3:0]vio_rgpio_m_11dt8_MUX;
  wire [3:0]vio_rgpio_m_11dt8_muxsel;
  wire [0:0]vio_rgpio_m_12_CAN_FAULT;
  wire [2:0]vio_rgpio_m_15dt13_PHY_LEDS;
  wire [0:0]vio_rgpio_m_16_XMOD2BUTTON;
  wire [0:0]vio_rgpio_m_17_S5_3_USER;
  wire [0:0]vio_rgpio_m_18_S5_4_FMCVADJ;
  wire [0:0]vio_rgpio_m_19_reserved;
  wire [0:0]vio_rgpio_m_20_SD_WP;
  wire [0:0]vio_rgpio_m_21_FMC_CLKDIR;
  wire [0:0]vio_rgpio_m_22_PJTAG_TRST;
  wire [0:0]vio_rgpio_m_23_PJTAG_SRST;
  wire [11:0]vio_rgpio_m_23dt12_unused;
  wire [5:0]vio_rgpio_m_5dt0_leds;
  wire [7:0]vio_rgpio_m_7dt0_data;
  wire [1:0]vio_rgpio_m_7dt6_unused;
  wire [0:0]vio_rgpio_m_enable;
  wire [0:0]vio_rgpio_s_0_S5_1_bootmode;
  wire [3:0]vio_rgpio_s_11dt8_bootmode;
  wire [0:0]vio_rgpio_s_1_S5_2_bootmode;
  wire [11:0]vio_rgpio_s_23dt12_PG;
  wire [15:0]vio_rgpio_s_23dt8_unused;
  wire [0:0]vio_rgpio_s_2_xmod1_button;
  wire [0:0]vio_rgpio_s_3_unused;
  wire [1:0]vio_rgpio_s_6dt5_SD_CD;
  wire [7:0]vio_rgpio_s_7dt0_data;
  wire [1:0]vio_rgpio_s_7dt6_ER_ERST;
  wire [0:0]vio_rgpio_s_enable;
  wire [23:0]xlconcat_2_dout;
  wire [23:0]xlconcat_3_dout;

  assign clk1_1 = clk1;
  zusys_RGPIO_Master_CPLD_0 RGPIO_Master_CPLD
       (.RGPIO_M_CLK(RGPIO_M_EXT_clk),
        .RGPIO_M_ENABLE(vio_rgpio_m_enable),
        .RGPIO_M_IN(xlconcat_2_dout),
        .RGPIO_M_OUT(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .RGPIO_M_RESET_N(RGPIO_M_RESET_N),
        .RGPIO_M_RX(RGPIO_M_EXT_rx),
        .RGPIO_M_TX(RGPIO_M_EXT_tx),
        .RGPIO_M_USRCLK(clk));
  zusys_RGPIO_Slave_CPLD_0 RGPIO_Slave_CPLD
       (.RGPIO_M_CLK(RGPIO_M_EXT1_clk),
        .RGPIO_M_ENABLE(vio_rgpio_s_enable),
        .RGPIO_M_IN(xlconcat_3_dout),
        .RGPIO_M_OUT(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .RGPIO_M_RESET_N(RGPIO_M_RESET_N),
        .RGPIO_M_RX(RGPIO_M_EXT1_rx),
        .RGPIO_M_TX(RGPIO_M_EXT1_tx),
        .RGPIO_M_USRCLK(clk));
  zusys_vio_rgpio_0 vio_rgpio
       (.clk(clk1_1),
        .probe_in0(vio_rgpio_m_23_PJTAG_SRST),
        .probe_in1(vio_rgpio_m_22_PJTAG_TRST),
        .probe_in10(vio_rgpio_m_11dt8_MUX),
        .probe_in11(vio_rgpio_m_7dt0_data),
        .probe_in12(vio_rgpio_s_23dt12_PG),
        .probe_in13(vio_rgpio_s_11dt8_bootmode),
        .probe_in14(vio_rgpio_s_7dt6_ER_ERST),
        .probe_in15(vio_rgpio_s_6dt5_SD_CD),
        .probe_in16(vio_rgpio_s_3_unused),
        .probe_in17(vio_rgpio_s_2_xmod1_button),
        .probe_in18(vio_rgpio_s_1_S5_2_bootmode),
        .probe_in19(vio_rgpio_s_0_S5_1_bootmode),
        .probe_in2(vio_rgpio_m_21_FMC_CLKDIR),
        .probe_in3(vio_rgpio_m_20_SD_WP),
        .probe_in4(vio_rgpio_m_19_reserved),
        .probe_in5(vio_rgpio_m_18_S5_4_FMCVADJ),
        .probe_in6(vio_rgpio_m_17_S5_3_USER),
        .probe_in7(vio_rgpio_m_16_XMOD2BUTTON),
        .probe_in8(vio_rgpio_m_15dt13_PHY_LEDS),
        .probe_in9(vio_rgpio_m_12_CAN_FAULT),
        .probe_out0(vio_rgpio_m_enable),
        .probe_out1(vio_rgpio_s_enable),
        .probe_out2(vio_rgpio_m_23dt12_unused),
        .probe_out3(vio_rgpio_m_11dt8_muxsel),
        .probe_out4(vio_rgpio_m_7dt6_unused),
        .probe_out5(vio_rgpio_m_5dt0_leds),
        .probe_out6(vio_rgpio_s_23dt8_unused),
        .probe_out7(vio_rgpio_s_7dt0_data));
  zusys_xlconcat_2_0 xlconcat_2
       (.In0(vio_rgpio_m_5dt0_leds),
        .In1(vio_rgpio_m_7dt6_unused),
        .In2(vio_rgpio_m_11dt8_muxsel),
        .In3(vio_rgpio_m_23dt12_unused),
        .dout(xlconcat_2_dout));
  zusys_xlconcat_3_0 xlconcat_3
       (.In0(vio_rgpio_s_7dt0_data),
        .In1(vio_rgpio_s_23dt8_unused),
        .dout(xlconcat_3_dout));
  zusys_xlslice_0_0 xlslice_0
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_23_PJTAG_SRST));
  zusys_xlslice_1_0 xlslice_1
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_22_PJTAG_TRST));
  zusys_xlslice_10_0 xlslice_10
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_11dt8_MUX));
  zusys_xlslice_11_0 xlslice_11
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_7dt0_data));
  zusys_xlslice_12_0 xlslice_12
       (.Din(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_s_23dt12_PG));
  zusys_xlslice_13_0 xlslice_13
       (.Din(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_s_11dt8_bootmode));
  zusys_xlslice_14_0 xlslice_14
       (.Din(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_s_7dt6_ER_ERST));
  zusys_xlslice_15_0 xlslice_15
       (.Din(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_s_6dt5_SD_CD));
  zusys_xlslice_16_0 xlslice_16
       (.Din(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_s_3_unused));
  zusys_xlslice_17_0 xlslice_17
       (.Din(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_s_2_xmod1_button));
  zusys_xlslice_18_0 xlslice_18
       (.Din(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_s_1_S5_2_bootmode));
  zusys_xlslice_19_0 xlslice_19
       (.Din(RGPIO_Slave_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_s_0_S5_1_bootmode));
  zusys_xlslice_2_0 xlslice_2
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_21_FMC_CLKDIR));
  zusys_xlslice_3_0 xlslice_3
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_20_SD_WP));
  zusys_xlslice_4_0 xlslice_4
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_19_reserved));
  zusys_xlslice_5_0 xlslice_5
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_18_S5_4_FMCVADJ));
  zusys_xlslice_6_0 xlslice_6
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_17_S5_3_USER));
  zusys_xlslice_7_0 xlslice_7
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_16_XMOD2BUTTON));
  zusys_xlslice_8_0 xlslice_8
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_15dt13_PHY_LEDS));
  zusys_xlslice_9_0 xlslice_9
       (.Din(RGPIO_Master_CPLD_RGPIO_M_OUT),
        .Dout(vio_rgpio_m_12_CAN_FAULT));
endmodule

/* Important TEBF0808 CPLD Update to REV07 is needed to use this RGPIO definition!!!
Important TEBF0808 CPLD Update to REV07 is needed to use this RGPIO definition!!! */
(* CORE_GENERATION_INFO = "zusys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zusys,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=40,numReposBlks=39,numNonXlnxBlks=4,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,\"\"\"\"\"\"\"\"\"\"\"\"\"da_zynq_ultra_ps_e_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"=5,\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"=1,\"\"\"da_axi4_cnt\"\"\"=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "zusys.hwdef" *) 
module zusys
   (BASE_sc0,
    BASE_sc10_i,
    BASE_sc10_o,
    BASE_sc10_t,
    BASE_sc11,
    BASE_sc12,
    BASE_sc13,
    BASE_sc14,
    BASE_sc15,
    BASE_sc16,
    BASE_sc17,
    BASE_sc18,
    BASE_sc19,
    BASE_sc5,
    BASE_sc6,
    BASE_sc7,
    I2S_bclk,
    I2S_lrclk,
    I2S_sdin,
    I2S_sdout);
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC0" *) (* X_INTERFACE_MODE = "Master" *) output BASE_sc0;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_I" *) input BASE_sc10_i;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_O" *) output BASE_sc10_o;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_T" *) output BASE_sc10_t;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC11" *) output BASE_sc11;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC12" *) input BASE_sc12;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC13" *) input BASE_sc13;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC14" *) output BASE_sc14;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC15" *) output BASE_sc15;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC16" *) output BASE_sc16;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC17" *) output BASE_sc17;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC18" *) output BASE_sc18;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC19" *) input BASE_sc19;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC5" *) input BASE_sc5;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC6" *) output BASE_sc6;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC7" *) output BASE_sc7;
  (* X_INTERFACE_INFO = "trenz.biz:user:I2S:1.0 I2S BCLK" *) (* X_INTERFACE_MODE = "Slave" *) input I2S_bclk;
  (* X_INTERFACE_INFO = "trenz.biz:user:I2S:1.0 I2S LRCLK" *) input I2S_lrclk;
  (* X_INTERFACE_INFO = "trenz.biz:user:I2S:1.0 I2S SDIN" *) output I2S_sdin;
  (* X_INTERFACE_INFO = "trenz.biz:user:I2S:1.0 I2S SDOUT" *) input I2S_sdout;

  wire AXI4Lite_CaptureLogic_0_cap_enable;
  wire [31:0]AXI4Lite_CaptureLogic_0_dummy_data;
  wire [31:0]AXI4Lite_CaptureLogic_0_frame_cnt_target;
  wire AXI4Lite_CaptureLogic_0_rstn;
  wire BASE_sc0;
  wire BASE_sc10_i;
  wire BASE_sc10_o;
  wire BASE_sc10_t;
  wire BASE_sc11;
  wire BASE_sc12;
  wire BASE_sc13;
  wire BASE_sc14;
  wire BASE_sc15;
  wire BASE_sc16;
  wire BASE_sc17;
  wire BASE_sc18;
  wire BASE_sc19;
  wire BASE_sc5;
  wire BASE_sc6;
  wire BASE_sc7;
  wire I2S_bclk;
  wire I2S_lrclk;
  wire I2S_sdin;
  wire I2S_sdout;
  wire RGPIO_Master_CPLD_RGPIO_M_EXT_CLK;
  wire RGPIO_Master_CPLD_RGPIO_M_EXT_RX;
  wire RGPIO_Master_CPLD_RGPIO_M_EXT_TX;
  wire RGPIO_Slave_CPLD_RGPIO_M_EXT_CLK;
  wire RGPIO_Slave_CPLD_RGPIO_M_EXT_RX;
  wire RGPIO_Slave_CPLD_RGPIO_M_EXT_TX;
  wire SC0808BF_0_PS_AUX_DI;
  wire SC0808BF_0_PS_DP_HPD;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [63:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [7:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_SG_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_SG_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_SG_ARPROT;
  wire axi_dma_0_M_AXI_SG_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_SG_ARSIZE;
  wire axi_dma_0_M_AXI_SG_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_SG_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_SG_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_SG_AWPROT;
  wire axi_dma_0_M_AXI_SG_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_SG_AWSIZE;
  wire axi_dma_0_M_AXI_SG_AWVALID;
  wire axi_dma_0_M_AXI_SG_BREADY;
  wire [1:0]axi_dma_0_M_AXI_SG_BRESP;
  wire axi_dma_0_M_AXI_SG_BVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_RDATA;
  wire axi_dma_0_M_AXI_SG_RLAST;
  wire axi_dma_0_M_AXI_SG_RREADY;
  wire [1:0]axi_dma_0_M_AXI_SG_RRESP;
  wire axi_dma_0_M_AXI_SG_RVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_WDATA;
  wire axi_dma_0_M_AXI_SG_WLAST;
  wire axi_dma_0_M_AXI_SG_WREADY;
  wire [3:0]axi_dma_0_M_AXI_SG_WSTRB;
  wire axi_dma_0_M_AXI_SG_WVALID;
  wire axi_dma_0_s2mm_introut;
  wire [48:0]axi_smc_1_M00_AXI_ARADDR;
  wire [1:0]axi_smc_1_M00_AXI_ARBURST;
  wire [3:0]axi_smc_1_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_1_M00_AXI_ARLEN;
  wire [0:0]axi_smc_1_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_1_M00_AXI_ARPROT;
  wire [3:0]axi_smc_1_M00_AXI_ARQOS;
  wire axi_smc_1_M00_AXI_ARREADY;
  wire [2:0]axi_smc_1_M00_AXI_ARSIZE;
  wire axi_smc_1_M00_AXI_ARVALID;
  wire [48:0]axi_smc_1_M00_AXI_AWADDR;
  wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  wire [0:0]axi_smc_1_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  wire axi_smc_1_M00_AXI_AWREADY;
  wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  wire axi_smc_1_M00_AXI_AWVALID;
  wire axi_smc_1_M00_AXI_BREADY;
  wire [1:0]axi_smc_1_M00_AXI_BRESP;
  wire axi_smc_1_M00_AXI_BVALID;
  wire [63:0]axi_smc_1_M00_AXI_RDATA;
  wire axi_smc_1_M00_AXI_RLAST;
  wire axi_smc_1_M00_AXI_RREADY;
  wire [1:0]axi_smc_1_M00_AXI_RRESP;
  wire axi_smc_1_M00_AXI_RVALID;
  wire [63:0]axi_smc_1_M00_AXI_WDATA;
  wire axi_smc_1_M00_AXI_WLAST;
  wire axi_smc_1_M00_AXI_WREADY;
  wire [7:0]axi_smc_1_M00_AXI_WSTRB;
  wire axi_smc_1_M00_AXI_WVALID;
  wire [9:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [9:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire axi_smc_M00_AXI_WVALID;
  wire [7:0]axi_smc_M01_AXI_ARADDR;
  wire [2:0]axi_smc_M01_AXI_ARPROT;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [7:0]axi_smc_M01_AXI_AWADDR;
  wire [2:0]axi_smc_M01_AXI_AWPROT;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [31:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire axis_data_fifo_0_M_AXIS_TLAST;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire axis_data_fifo_0_s_axis_tready;
  wire [31:0]axis_live_audio_0_m_axis_TDATA;
  wire axis_live_audio_0_m_axis_TID;
  wire axis_live_audio_0_m_axis_TREADY;
  wire axis_live_audio_0_m_axis_TVALID;
  wire capture_logic_test_0_cap_status;
  wire capture_logic_test_0_fifo_arestn;
  wire [31:0]capture_logic_test_0_frame_cnt;
  wire capture_logic_test_0_m_axis_aclk;
  wire [31:0]capture_logic_test_0_m_axis_tdata;
  wire capture_logic_test_0_m_axis_tlast;
  wire capture_logic_test_0_m_axis_tvalid;
  wire [31:0]capture_logic_test_0_missed_words;
  wire dummy_AISC110C_0_clk_out;
  wire [3:0]dummy_AISC110C_0_gpio;
  wire [7:0]dummy_AISC110C_0_m_mux0_data_o;
  wire [7:0]dummy_AISC110C_0_m_mux1_data_o;
  wire [7:0]dummy_AISC110C_0_m_mux2_data_o;
  wire [7:0]dummy_AISC110C_0_m_mux3_data_o;
  wire dummy_AISC110C_0_mux_data_valid_o;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]rst_ps8_0_100M_peripheral_aresetn;
  wire [0:0]vio_CAN_0_S;
  wire [0:0]vio_LED_HD;
  wire [0:0]vio_LED_XMOD2;
  wire [1:0]xlconcat_0_dout;
  wire zynq_ultra_ps_e_0_CAN_0_RX;
  wire zynq_ultra_ps_e_0_CAN_0_TX;
  wire [31:0]zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TDATA;
  wire zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TID;
  wire zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TREADY;
  wire zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [63:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [63:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_0_dp_audio_ref_clk;
  wire zynq_ultra_ps_e_0_dp_aux_data_oe_n;
  wire zynq_ultra_ps_e_0_dp_aux_data_out;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_clk1;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  zusys_AXI4Lite_CaptureLogic_0_0 AXI4Lite_CaptureLogic_0
       (.cap_enable(AXI4Lite_CaptureLogic_0_cap_enable),
        .cap_status(capture_logic_test_0_cap_status),
        .dummy_data(AXI4Lite_CaptureLogic_0_dummy_data),
        .frame_cnt(capture_logic_test_0_frame_cnt),
        .frame_cnt_target(AXI4Lite_CaptureLogic_0_frame_cnt_target),
        .missed_words(capture_logic_test_0_missed_words),
        .rstn(AXI4Lite_CaptureLogic_0_rstn),
        .s00_axi_aclk(zynq_ultra_ps_e_0_pl_clk1),
        .s00_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s00_axi_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .s00_axi_arprot(axi_smc_M01_AXI_ARPROT),
        .s00_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s00_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s00_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s00_axi_awprot(axi_smc_M01_AXI_AWPROT),
        .s00_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s00_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s00_axi_bready(axi_smc_M01_AXI_BREADY),
        .s00_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s00_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s00_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s00_axi_rready(axi_smc_M01_AXI_RREADY),
        .s00_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s00_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s00_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s00_axi_wready(axi_smc_M01_AXI_WREADY),
        .s00_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s00_axi_wvalid(axi_smc_M01_AXI_WVALID));
  RGPIO_imp_139ZQEB RGPIO
       (.RGPIO_M_EXT1_clk(RGPIO_Slave_CPLD_RGPIO_M_EXT_CLK),
        .RGPIO_M_EXT1_rx(RGPIO_Slave_CPLD_RGPIO_M_EXT_RX),
        .RGPIO_M_EXT1_tx(RGPIO_Slave_CPLD_RGPIO_M_EXT_TX),
        .RGPIO_M_EXT_clk(RGPIO_Master_CPLD_RGPIO_M_EXT_CLK),
        .RGPIO_M_EXT_rx(RGPIO_Master_CPLD_RGPIO_M_EXT_RX),
        .RGPIO_M_EXT_tx(RGPIO_Master_CPLD_RGPIO_M_EXT_TX),
        .RGPIO_M_RESET_N(proc_sys_reset_0_peripheral_aresetn),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .clk1(zynq_ultra_ps_e_0_pl_clk1));
  zusys_SC0808BF_0_0 SC0808BF_0
       (.CAN_RX(zynq_ultra_ps_e_0_CAN_0_RX),
        .CAN_S(vio_CAN_0_S),
        .CAN_TX(zynq_ultra_ps_e_0_CAN_0_TX),
        .LED_HD(vio_LED_HD),
        .LED_XMOD2(vio_LED_XMOD2),
        .PS_AUX_DI(SC0808BF_0_PS_AUX_DI),
        .PS_AUX_DO(zynq_ultra_ps_e_0_dp_aux_data_out),
        .PS_AUX_OE(zynq_ultra_ps_e_0_dp_aux_data_oe_n),
        .PS_DP_HPD(SC0808BF_0_PS_DP_HPD),
        .RGPIO_M_CLK(RGPIO_Master_CPLD_RGPIO_M_EXT_CLK),
        .RGPIO_M_RX(RGPIO_Master_CPLD_RGPIO_M_EXT_RX),
        .RGPIO_M_TX(RGPIO_Master_CPLD_RGPIO_M_EXT_TX),
        .RGPIO_S_CLK(RGPIO_Slave_CPLD_RGPIO_M_EXT_CLK),
        .RGPIO_S_RX(RGPIO_Slave_CPLD_RGPIO_M_EXT_RX),
        .RGPIO_S_TX(RGPIO_Slave_CPLD_RGPIO_M_EXT_TX),
        .SC0(BASE_sc0),
        .SC10_I(BASE_sc10_i),
        .SC10_O(BASE_sc10_o),
        .SC10_T(BASE_sc10_t),
        .SC11(BASE_sc11),
        .SC12(BASE_sc12),
        .SC13(BASE_sc13),
        .SC14(BASE_sc14),
        .SC15(BASE_sc15),
        .SC16(BASE_sc16),
        .SC17(BASE_sc17),
        .SC18(BASE_sc18),
        .SC19(BASE_sc19),
        .SC5(BASE_sc5),
        .SC6(BASE_sc6),
        .SC7(BASE_sc7));
  zusys_axi_dma_0_1 axi_dma_0
       (.axi_resetn(rst_ps8_0_100M_peripheral_aresetn),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk1),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(zynq_ultra_ps_e_0_pl_clk1),
        .m_axi_sg_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_dma_0_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_dma_0_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_dma_0_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .s2mm_introut(axi_dma_0_s2mm_introut),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk1),
        .s_axi_lite_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_lite_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_lite_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_lite_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_lite_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_lite_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_lite_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_lite_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_lite_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_lite_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_lite_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_lite_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_lite_wvalid(axi_smc_M00_AXI_WVALID),
        .s_axis_s2mm_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
  zusys_axi_smc_4 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_smc_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_smc_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk1),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn));
  zusys_axi_smc_1_0 axi_smc_1
       (.M00_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .S00_AXI_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arburst({1'b0,1'b1}),
        .S00_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot({1'b0,1'b0,1'b0}),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize({1'b0,1'b1,1'b0}),
        .S00_AXI_arvalid(1'b0),
        .S00_AXI_rready(1'b0),
        .S01_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .S02_AXI_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .S02_AXI_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .S02_AXI_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .S02_AXI_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .S02_AXI_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .S02_AXI_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .S02_AXI_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .S02_AXI_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .S02_AXI_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .S02_AXI_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .S02_AXI_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .S02_AXI_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .S02_AXI_bready(axi_dma_0_M_AXI_SG_BREADY),
        .S02_AXI_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .S02_AXI_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .S02_AXI_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .S02_AXI_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .S02_AXI_rready(axi_dma_0_M_AXI_SG_RREADY),
        .S02_AXI_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .S02_AXI_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .S02_AXI_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .S02_AXI_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .S02_AXI_wready(axi_dma_0_M_AXI_SG_WREADY),
        .S02_AXI_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .S02_AXI_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk1),
        .aresetn(rst_ps8_0_100M_peripheral_aresetn));
  zusys_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_aclk(zynq_ultra_ps_e_0_pl_clk1),
        .m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(capture_logic_test_0_m_axis_aclk),
        .s_axis_aresetn(capture_logic_test_0_fifo_arestn),
        .s_axis_tdata(capture_logic_test_0_m_axis_tdata),
        .s_axis_tlast(capture_logic_test_0_m_axis_tlast),
        .s_axis_tready(axis_data_fifo_0_s_axis_tready),
        .s_axis_tvalid(capture_logic_test_0_m_axis_tvalid));
  zusys_axis_live_audio_0_0 axis_live_audio_0
       (.ADC_SDATA(I2S_sdout),
        .BCLK(I2S_bclk),
        .DAC_SDATA(I2S_sdin),
        .LRCLK(I2S_lrclk),
        .axis_aclk(zynq_ultra_ps_e_0_dp_audio_ref_clk),
        .m_axis_tdata(axis_live_audio_0_m_axis_TDATA),
        .m_axis_tid(axis_live_audio_0_m_axis_TID),
        .m_axis_tready(axis_live_audio_0_m_axis_TREADY),
        .m_axis_tvalid(axis_live_audio_0_m_axis_TVALID),
        .s_axis_tdata(zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TDATA),
        .s_axis_tid(zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TID),
        .s_axis_tready(zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TREADY),
        .s_axis_tvalid(zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TVALID));
  zusys_capture_logic_test_0_0 capture_logic_test_0
       (.cap_enable(AXI4Lite_CaptureLogic_0_cap_enable),
        .cap_status(capture_logic_test_0_cap_status),
        .clk_in(dummy_AISC110C_0_clk_out),
        .ctrl({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fifo_aresetn(capture_logic_test_0_fifo_arestn),
        .frame_cnt(capture_logic_test_0_frame_cnt),
        .frame_cnt_target(AXI4Lite_CaptureLogic_0_frame_cnt_target),
        .gpio(dummy_AISC110C_0_gpio),
        .m_axis_aclk(capture_logic_test_0_m_axis_aclk),
        .m_axis_aresetn(AXI4Lite_CaptureLogic_0_rstn),
        .m_axis_tdata(capture_logic_test_0_m_axis_tdata),
        .m_axis_tlast(capture_logic_test_0_m_axis_tlast),
        .m_axis_tready(axis_data_fifo_0_s_axis_tready),
        .m_axis_tvalid(capture_logic_test_0_m_axis_tvalid),
        .missed_words(capture_logic_test_0_missed_words),
        .mux_data_valid_o(dummy_AISC110C_0_mux_data_valid_o),
        .s_mux0_data_o(dummy_AISC110C_0_m_mux0_data_o),
        .s_mux1_data_o(dummy_AISC110C_0_m_mux1_data_o),
        .s_mux2_data_o(dummy_AISC110C_0_m_mux2_data_o),
        .s_mux3_data_o(dummy_AISC110C_0_m_mux3_data_o));
  zusys_dummy_AISC110C_0_0 dummy_AISC110C_0
       (.cap_enable(AXI4Lite_CaptureLogic_0_cap_enable),
        .clk_in(zynq_ultra_ps_e_0_pl_clk1),
        .clk_out(dummy_AISC110C_0_clk_out),
        .dummy_data(AXI4Lite_CaptureLogic_0_dummy_data),
        .gpio(dummy_AISC110C_0_gpio),
        .m_mux0_data_o(dummy_AISC110C_0_m_mux0_data_o),
        .m_mux1_data_o(dummy_AISC110C_0_m_mux1_data_o),
        .m_mux2_data_o(dummy_AISC110C_0_m_mux2_data_o),
        .m_mux3_data_o(dummy_AISC110C_0_m_mux3_data_o),
        .mux_data_valid_o(dummy_AISC110C_0_mux_data_valid_o),
        .rstn(AXI4Lite_CaptureLogic_0_rstn));
  zusys_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  zusys_rst_ps8_0_100M_0 rst_ps8_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_100M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk1));
  zusys_vio_general_0 vio_general
       (.clk(zynq_ultra_ps_e_0_pl_clk1),
        .probe_out0(vio_LED_HD),
        .probe_out1(vio_LED_XMOD2),
        .probe_out2(vio_CAN_0_S));
  zusys_xlconcat_0_0 xlconcat_0
       (.In0(1'b0),
        .In1(axi_dma_0_s2mm_introut),
        .dout(xlconcat_0_dout));
  zusys_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.dp_audio_ref_clk(zynq_ultra_ps_e_0_dp_audio_ref_clk),
        .dp_aux_data_in(SC0808BF_0_PS_AUX_DI),
        .dp_aux_data_oe_n(zynq_ultra_ps_e_0_dp_aux_data_oe_n),
        .dp_aux_data_out(zynq_ultra_ps_e_0_dp_aux_data_out),
        .dp_hot_plug_detect(SC0808BF_0_PS_DP_HPD),
        .dp_m_axis_mixed_audio_tdata(zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TDATA),
        .dp_m_axis_mixed_audio_tid(zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TID),
        .dp_m_axis_mixed_audio_tready(zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TREADY),
        .dp_m_axis_mixed_audio_tvalid(zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TVALID),
        .dp_s_axis_audio_clk(zynq_ultra_ps_e_0_dp_audio_ref_clk),
        .dp_s_axis_audio_tdata(axis_live_audio_0_m_axis_TDATA),
        .dp_s_axis_audio_tid(axis_live_audio_0_m_axis_TID),
        .dp_s_axis_audio_tready(axis_live_audio_0_m_axis_TREADY),
        .dp_s_axis_audio_tvalid(axis_live_audio_0_m_axis_TVALID),
        .emio_can0_phy_rx(zynq_ultra_ps_e_0_CAN_0_RX),
        .emio_can0_phy_tx(zynq_ultra_ps_e_0_CAN_0_TX),
        .maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk1),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk1),
        .pl_clk1(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(xlconcat_0_dout),
        .pl_ps_irq1(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr(axi_smc_1_M00_AXI_ARADDR),
        .saxigp0_arburst(axi_smc_1_M00_AXI_ARBURST),
        .saxigp0_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen(axi_smc_1_M00_AXI_ARLEN),
        .saxigp0_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .saxigp0_arprot(axi_smc_1_M00_AXI_ARPROT),
        .saxigp0_arqos(axi_smc_1_M00_AXI_ARQOS),
        .saxigp0_arready(axi_smc_1_M00_AXI_ARREADY),
        .saxigp0_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .saxigp0_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .saxigp0_awburst(axi_smc_1_M00_AXI_AWBURST),
        .saxigp0_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen(axi_smc_1_M00_AXI_AWLEN),
        .saxigp0_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .saxigp0_awprot(axi_smc_1_M00_AXI_AWPROT),
        .saxigp0_awqos(axi_smc_1_M00_AXI_AWQOS),
        .saxigp0_awready(axi_smc_1_M00_AXI_AWREADY),
        .saxigp0_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .saxigp0_bready(axi_smc_1_M00_AXI_BREADY),
        .saxigp0_bresp(axi_smc_1_M00_AXI_BRESP),
        .saxigp0_bvalid(axi_smc_1_M00_AXI_BVALID),
        .saxigp0_rdata(axi_smc_1_M00_AXI_RDATA),
        .saxigp0_rlast(axi_smc_1_M00_AXI_RLAST),
        .saxigp0_rready(axi_smc_1_M00_AXI_RREADY),
        .saxigp0_rresp(axi_smc_1_M00_AXI_RRESP),
        .saxigp0_rvalid(axi_smc_1_M00_AXI_RVALID),
        .saxigp0_wdata(axi_smc_1_M00_AXI_WDATA),
        .saxigp0_wlast(axi_smc_1_M00_AXI_WLAST),
        .saxigp0_wready(axi_smc_1_M00_AXI_WREADY),
        .saxigp0_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .saxigp0_wvalid(axi_smc_1_M00_AXI_WVALID),
        .saxihpc0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk1));
endmodule
