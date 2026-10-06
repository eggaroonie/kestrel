// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Oct  3 14:25:31 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AXILite2_0_sim_netlist.v
// Design      : AXILite2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXILite2
   (axi_awready_reg,
    Q,
    frame_cnt_target,
    s00_axi_rdata,
    axi_arready_reg,
    axi_rvalid_reg,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    frame_cnt,
    cap_status,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg;
  output [1:0]Q;
  output [31:0]frame_cnt_target;
  output [31:0]s00_axi_rdata;
  output axi_arready_reg;
  output axi_rvalid_reg;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [31:0]frame_cnt;
  input cap_status;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire [1:0]Q;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire cap_status;
  wire [31:0]frame_cnt;
  wire [31:0]frame_cnt_target;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXILite2_slave_lite_v1_0_S00_AXI AXILite2_slave_lite_v1_0_S00_AXI_inst
       (.Q(Q),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .cap_status(cap_status),
        .frame_cnt(frame_cnt),
        .frame_cnt_target(frame_cnt_target),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "AXILite2_0,AXILite2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "AXILite2,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (cap_enable,
    test_thing_en,
    frame_cnt_target,
    cap_status,
    frame_cnt,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output cap_enable;
  output test_thing_en;
  output [31:0]frame_cnt_target;
  input cap_status;
  input [31:0]frame_cnt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire cap_enable;
  wire cap_status;
  wire [31:0]frame_cnt;
  wire [31:0]frame_cnt_target;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire test_thing_en;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXILite2 inst
       (.Q({test_thing_en,cap_enable}),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .cap_status(cap_status),
        .frame_cnt(frame_cnt),
        .frame_cnt_target(frame_cnt_target),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXILite2_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    Q,
    frame_cnt_target,
    s00_axi_rdata,
    axi_arready_reg_0,
    axi_rvalid_reg_0,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    frame_cnt,
    cap_status,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_aresetn,
    s00_axi_bready);
  output axi_awready_reg_0;
  output [1:0]Q;
  output [31:0]frame_cnt_target;
  output [31:0]s00_axi_rdata;
  output axi_arready_reg_0;
  output axi_rvalid_reg_0;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [31:0]frame_cnt;
  input cap_status;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [1:0]Q;
  wire [3:2]axi_araddr;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire cap_status;
  wire [31:0]frame_cnt;
  wire [31:0]frame_cnt_target;
  wire [0:0]p_1_in;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire \slv_reg0[0]_i_3_n_0 ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_read__0;
  wire [1:0]state_write;
  wire [1:0]state_write__0;

  LUT6 #(
    .INIT(64'h07070707FF0F0F0F)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(state_read__0[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(state_read[0]),
        .I1(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00800F800F800F80)) 
    \FSM_sequential_state_read[1]_i_2 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(state_read__0[1]));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .D(state_read__0[0]),
        .Q(state_read[0]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .D(state_read__0[1]),
        .Q(state_read[1]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4444DFFF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(state_write[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(state_write[1]),
        .O(state_write__0[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h14040404)) 
    \FSM_sequential_state_write[1]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(axi_awready_reg_0),
        .I4(s00_axi_awvalid),
        .O(state_write__0[1]));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .D(state_write__0[0]),
        .Q(state_write[0]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .D(state_write__0[1]),
        .Q(state_write[1]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(state_read[0]),
        .I4(state_read[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[3]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[3]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(axi_araddr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC4C4C4C4FFCFCFCF)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(state_read[1]),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(state_read[0]),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(\slv_reg0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_awaddr[3]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(state_write[1]),
        .I3(state_write[0]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[3]_i_1_n_0 ),
        .D(s00_axi_awaddr[0]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[3]_i_1_n_0 ),
        .D(s00_axi_awaddr[1]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(\slv_reg0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA2FFAF)) 
    axi_awready_i_1
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(\slv_reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF992600FFFF2600)) 
    axi_bvalid_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(axi_bvalid_i_2_n_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_bready),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    axi_bvalid_i_2
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(\slv_reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFF00800080)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[0]),
        .I3(state_read[1]),
        .I4(s00_axi_rready),
        .I5(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(\slv_reg0[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[0]),
        .I1(state_write[1]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(\slv_reg0[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(frame_cnt_target[0]),
        .I1(axi_araddr[2]),
        .I2(frame_cnt[0]),
        .I3(axi_araddr[3]),
        .I4(Q[0]),
        .O(s00_axi_rdata[0]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(frame_cnt_target[10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[10]),
        .O(s00_axi_rdata[10]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(frame_cnt_target[11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[11]),
        .O(s00_axi_rdata[11]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(frame_cnt_target[12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[12]),
        .O(s00_axi_rdata[12]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(frame_cnt_target[13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[13]),
        .O(s00_axi_rdata[13]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(frame_cnt_target[14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[14]),
        .O(s00_axi_rdata[14]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(frame_cnt_target[15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[15]),
        .O(s00_axi_rdata[15]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(frame_cnt_target[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[16]),
        .O(s00_axi_rdata[16]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(frame_cnt_target[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[17]),
        .O(s00_axi_rdata[17]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(frame_cnt_target[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[18]),
        .O(s00_axi_rdata[18]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(frame_cnt_target[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[19]),
        .O(s00_axi_rdata[19]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(frame_cnt_target[1]),
        .I1(axi_araddr[2]),
        .I2(frame_cnt[1]),
        .I3(axi_araddr[3]),
        .I4(Q[1]),
        .O(s00_axi_rdata[1]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(frame_cnt_target[20]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[20]),
        .O(s00_axi_rdata[20]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(frame_cnt_target[21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[21]),
        .O(s00_axi_rdata[21]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(frame_cnt_target[22]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[22]),
        .O(s00_axi_rdata[22]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(frame_cnt_target[23]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[23]),
        .O(s00_axi_rdata[23]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(frame_cnt_target[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[24]),
        .O(s00_axi_rdata[24]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(frame_cnt_target[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[25]),
        .O(s00_axi_rdata[25]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(frame_cnt_target[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[26]),
        .O(s00_axi_rdata[26]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(frame_cnt_target[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[27]),
        .O(s00_axi_rdata[27]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(frame_cnt_target[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[28]),
        .O(s00_axi_rdata[28]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(frame_cnt_target[29]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[29]),
        .O(s00_axi_rdata[29]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(frame_cnt_target[2]),
        .I1(axi_araddr[2]),
        .I2(frame_cnt[2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[2] ),
        .O(s00_axi_rdata[2]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(frame_cnt_target[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[30]),
        .O(s00_axi_rdata[30]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(frame_cnt_target[31]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[31]),
        .O(s00_axi_rdata[31]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(frame_cnt_target[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[3]),
        .O(s00_axi_rdata[3]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(frame_cnt_target[4]),
        .I1(axi_araddr[2]),
        .I2(frame_cnt[4]),
        .I3(axi_araddr[3]),
        .I4(cap_status),
        .O(s00_axi_rdata[4]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(frame_cnt_target[5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[5]),
        .O(s00_axi_rdata[5]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(frame_cnt_target[6]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[6]),
        .O(s00_axi_rdata[6]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(frame_cnt_target[7]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[7]),
        .O(s00_axi_rdata[7]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(frame_cnt_target[8]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[8]),
        .O(s00_axi_rdata[8]));
  LUT4 #(
    .INIT(16'hB080)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(frame_cnt_target[9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(frame_cnt[9]),
        .O(s00_axi_rdata[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg0[0]_i_1 
       (.I0(s00_axi_aresetn),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010005000000000)) 
    \slv_reg0[0]_i_2 
       (.I0(\slv_reg0[0]_i_3_n_0 ),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wstrb[0]),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[0]_i_3 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg0[0]_i_3_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(\slv_reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10B0000000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(\slv_reg0[0]_i_3_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10B0000000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(\slv_reg0[0]_i_3_n_0 ),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10B0000000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awaddr[0]),
        .I4(\slv_reg0[0]_i_3_n_0 ),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202000A000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg0[0]_i_3_n_0 ),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(frame_cnt_target[0]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(frame_cnt_target[10]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(frame_cnt_target[11]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(frame_cnt_target[12]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(frame_cnt_target[13]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(frame_cnt_target[14]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(frame_cnt_target[15]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(frame_cnt_target[16]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(frame_cnt_target[17]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(frame_cnt_target[18]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(frame_cnt_target[19]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(frame_cnt_target[1]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(frame_cnt_target[20]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(frame_cnt_target[21]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(frame_cnt_target[22]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(frame_cnt_target[23]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(frame_cnt_target[24]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(frame_cnt_target[25]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(frame_cnt_target[26]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(frame_cnt_target[27]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(frame_cnt_target[28]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(frame_cnt_target[29]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(frame_cnt_target[2]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(frame_cnt_target[30]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(frame_cnt_target[31]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(frame_cnt_target[3]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(frame_cnt_target[4]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(frame_cnt_target[5]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(frame_cnt_target[6]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(frame_cnt_target[7]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(frame_cnt_target[8]),
        .R(\slv_reg0[0]_i_1_n_0 ));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(frame_cnt_target[9]),
        .R(\slv_reg0[0]_i_1_n_0 ));
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
