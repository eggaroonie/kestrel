// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Oct  3 15:02:54 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jackson/projects/Kestrel/AXItest/AXITest/AXITest.gen/sources_1/bd/zusys/ip/zusys_touch_test_0_0/zusys_touch_test_0_0_sim_netlist.v
// Design      : zusys_touch_test_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zusys_touch_test_0_0,touch_test,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "touch_test,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module zusys_touch_test_0_0
   (clk,
    rstn,
    data_ready,
    touch,
    touch_cnt,
    touch_received);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* X_INTERFACE_IGNORE = "true" *) input data_ready;
  input [1:0]touch;
  output [31:0]touch_cnt;
  output touch_received;

  wire clk;
  wire data_ready;
  wire rstn;
  wire [1:0]touch;
  wire [31:0]touch_cnt;
  wire touch_received;

  zusys_touch_test_0_0_touch_test inst
       (.clk(clk),
        .data_ready(data_ready),
        .rstn(rstn),
        .touch(touch),
        .touch_cnt(touch_cnt),
        .touch_received(touch_received));
endmodule

(* ORIG_REF_NAME = "touch_test" *) 
module zusys_touch_test_0_0_touch_test
   (touch_cnt,
    touch_received,
    clk,
    touch,
    data_ready,
    rstn);
  output [31:0]touch_cnt;
  output touch_received;
  input clk;
  input [1:0]touch;
  input data_ready;
  input rstn;

  wire clear;
  wire clk;
  wire data_ready;
  wire rstn;
  wire [1:0]touch;
  wire [31:0]touch_cnt;
  wire \touch_cnt[31]_i_2_n_0 ;
  wire \touch_cnt[7]_i_2_n_0 ;
  wire \touch_cnt[7]_i_3_n_0 ;
  wire \touch_cnt_reg[15]_i_1_n_0 ;
  wire \touch_cnt_reg[15]_i_1_n_1 ;
  wire \touch_cnt_reg[15]_i_1_n_10 ;
  wire \touch_cnt_reg[15]_i_1_n_11 ;
  wire \touch_cnt_reg[15]_i_1_n_12 ;
  wire \touch_cnt_reg[15]_i_1_n_13 ;
  wire \touch_cnt_reg[15]_i_1_n_14 ;
  wire \touch_cnt_reg[15]_i_1_n_15 ;
  wire \touch_cnt_reg[15]_i_1_n_2 ;
  wire \touch_cnt_reg[15]_i_1_n_3 ;
  wire \touch_cnt_reg[15]_i_1_n_4 ;
  wire \touch_cnt_reg[15]_i_1_n_5 ;
  wire \touch_cnt_reg[15]_i_1_n_6 ;
  wire \touch_cnt_reg[15]_i_1_n_7 ;
  wire \touch_cnt_reg[15]_i_1_n_8 ;
  wire \touch_cnt_reg[15]_i_1_n_9 ;
  wire \touch_cnt_reg[23]_i_1_n_0 ;
  wire \touch_cnt_reg[23]_i_1_n_1 ;
  wire \touch_cnt_reg[23]_i_1_n_10 ;
  wire \touch_cnt_reg[23]_i_1_n_11 ;
  wire \touch_cnt_reg[23]_i_1_n_12 ;
  wire \touch_cnt_reg[23]_i_1_n_13 ;
  wire \touch_cnt_reg[23]_i_1_n_14 ;
  wire \touch_cnt_reg[23]_i_1_n_15 ;
  wire \touch_cnt_reg[23]_i_1_n_2 ;
  wire \touch_cnt_reg[23]_i_1_n_3 ;
  wire \touch_cnt_reg[23]_i_1_n_4 ;
  wire \touch_cnt_reg[23]_i_1_n_5 ;
  wire \touch_cnt_reg[23]_i_1_n_6 ;
  wire \touch_cnt_reg[23]_i_1_n_7 ;
  wire \touch_cnt_reg[23]_i_1_n_8 ;
  wire \touch_cnt_reg[23]_i_1_n_9 ;
  wire \touch_cnt_reg[31]_i_3_n_1 ;
  wire \touch_cnt_reg[31]_i_3_n_10 ;
  wire \touch_cnt_reg[31]_i_3_n_11 ;
  wire \touch_cnt_reg[31]_i_3_n_12 ;
  wire \touch_cnt_reg[31]_i_3_n_13 ;
  wire \touch_cnt_reg[31]_i_3_n_14 ;
  wire \touch_cnt_reg[31]_i_3_n_15 ;
  wire \touch_cnt_reg[31]_i_3_n_2 ;
  wire \touch_cnt_reg[31]_i_3_n_3 ;
  wire \touch_cnt_reg[31]_i_3_n_4 ;
  wire \touch_cnt_reg[31]_i_3_n_5 ;
  wire \touch_cnt_reg[31]_i_3_n_6 ;
  wire \touch_cnt_reg[31]_i_3_n_7 ;
  wire \touch_cnt_reg[31]_i_3_n_8 ;
  wire \touch_cnt_reg[31]_i_3_n_9 ;
  wire \touch_cnt_reg[7]_i_1_n_0 ;
  wire \touch_cnt_reg[7]_i_1_n_1 ;
  wire \touch_cnt_reg[7]_i_1_n_10 ;
  wire \touch_cnt_reg[7]_i_1_n_11 ;
  wire \touch_cnt_reg[7]_i_1_n_12 ;
  wire \touch_cnt_reg[7]_i_1_n_13 ;
  wire \touch_cnt_reg[7]_i_1_n_14 ;
  wire \touch_cnt_reg[7]_i_1_n_15 ;
  wire \touch_cnt_reg[7]_i_1_n_2 ;
  wire \touch_cnt_reg[7]_i_1_n_3 ;
  wire \touch_cnt_reg[7]_i_1_n_4 ;
  wire \touch_cnt_reg[7]_i_1_n_5 ;
  wire \touch_cnt_reg[7]_i_1_n_6 ;
  wire \touch_cnt_reg[7]_i_1_n_7 ;
  wire \touch_cnt_reg[7]_i_1_n_8 ;
  wire \touch_cnt_reg[7]_i_1_n_9 ;
  wire touch_received;
  wire touch_received_i_1_n_0;
  wire [7:7]\NLW_touch_cnt_reg[31]_i_3_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \touch_cnt[31]_i_1 
       (.I0(rstn),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \touch_cnt[31]_i_2 
       (.I0(touch_received),
        .I1(data_ready),
        .O(\touch_cnt[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \touch_cnt[7]_i_2 
       (.I0(touch[1]),
        .I1(touch_cnt[1]),
        .O(\touch_cnt[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \touch_cnt[7]_i_3 
       (.I0(touch[0]),
        .I1(touch_cnt[0]),
        .O(\touch_cnt[7]_i_3_n_0 ));
  FDRE \touch_cnt_reg[0] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[7]_i_1_n_15 ),
        .Q(touch_cnt[0]),
        .R(clear));
  FDRE \touch_cnt_reg[10] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[15]_i_1_n_13 ),
        .Q(touch_cnt[10]),
        .R(clear));
  FDRE \touch_cnt_reg[11] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[15]_i_1_n_12 ),
        .Q(touch_cnt[11]),
        .R(clear));
  FDRE \touch_cnt_reg[12] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[15]_i_1_n_11 ),
        .Q(touch_cnt[12]),
        .R(clear));
  FDRE \touch_cnt_reg[13] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[15]_i_1_n_10 ),
        .Q(touch_cnt[13]),
        .R(clear));
  FDRE \touch_cnt_reg[14] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[15]_i_1_n_9 ),
        .Q(touch_cnt[14]),
        .R(clear));
  FDRE \touch_cnt_reg[15] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[15]_i_1_n_8 ),
        .Q(touch_cnt[15]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \touch_cnt_reg[15]_i_1 
       (.CI(\touch_cnt_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\touch_cnt_reg[15]_i_1_n_0 ,\touch_cnt_reg[15]_i_1_n_1 ,\touch_cnt_reg[15]_i_1_n_2 ,\touch_cnt_reg[15]_i_1_n_3 ,\touch_cnt_reg[15]_i_1_n_4 ,\touch_cnt_reg[15]_i_1_n_5 ,\touch_cnt_reg[15]_i_1_n_6 ,\touch_cnt_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\touch_cnt_reg[15]_i_1_n_8 ,\touch_cnt_reg[15]_i_1_n_9 ,\touch_cnt_reg[15]_i_1_n_10 ,\touch_cnt_reg[15]_i_1_n_11 ,\touch_cnt_reg[15]_i_1_n_12 ,\touch_cnt_reg[15]_i_1_n_13 ,\touch_cnt_reg[15]_i_1_n_14 ,\touch_cnt_reg[15]_i_1_n_15 }),
        .S(touch_cnt[15:8]));
  FDRE \touch_cnt_reg[16] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[23]_i_1_n_15 ),
        .Q(touch_cnt[16]),
        .R(clear));
  FDRE \touch_cnt_reg[17] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[23]_i_1_n_14 ),
        .Q(touch_cnt[17]),
        .R(clear));
  FDRE \touch_cnt_reg[18] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[23]_i_1_n_13 ),
        .Q(touch_cnt[18]),
        .R(clear));
  FDRE \touch_cnt_reg[19] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[23]_i_1_n_12 ),
        .Q(touch_cnt[19]),
        .R(clear));
  FDRE \touch_cnt_reg[1] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[7]_i_1_n_14 ),
        .Q(touch_cnt[1]),
        .R(clear));
  FDRE \touch_cnt_reg[20] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[23]_i_1_n_11 ),
        .Q(touch_cnt[20]),
        .R(clear));
  FDRE \touch_cnt_reg[21] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[23]_i_1_n_10 ),
        .Q(touch_cnt[21]),
        .R(clear));
  FDRE \touch_cnt_reg[22] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[23]_i_1_n_9 ),
        .Q(touch_cnt[22]),
        .R(clear));
  FDRE \touch_cnt_reg[23] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[23]_i_1_n_8 ),
        .Q(touch_cnt[23]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \touch_cnt_reg[23]_i_1 
       (.CI(\touch_cnt_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\touch_cnt_reg[23]_i_1_n_0 ,\touch_cnt_reg[23]_i_1_n_1 ,\touch_cnt_reg[23]_i_1_n_2 ,\touch_cnt_reg[23]_i_1_n_3 ,\touch_cnt_reg[23]_i_1_n_4 ,\touch_cnt_reg[23]_i_1_n_5 ,\touch_cnt_reg[23]_i_1_n_6 ,\touch_cnt_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\touch_cnt_reg[23]_i_1_n_8 ,\touch_cnt_reg[23]_i_1_n_9 ,\touch_cnt_reg[23]_i_1_n_10 ,\touch_cnt_reg[23]_i_1_n_11 ,\touch_cnt_reg[23]_i_1_n_12 ,\touch_cnt_reg[23]_i_1_n_13 ,\touch_cnt_reg[23]_i_1_n_14 ,\touch_cnt_reg[23]_i_1_n_15 }),
        .S(touch_cnt[23:16]));
  FDRE \touch_cnt_reg[24] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[31]_i_3_n_15 ),
        .Q(touch_cnt[24]),
        .R(clear));
  FDRE \touch_cnt_reg[25] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[31]_i_3_n_14 ),
        .Q(touch_cnt[25]),
        .R(clear));
  FDRE \touch_cnt_reg[26] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[31]_i_3_n_13 ),
        .Q(touch_cnt[26]),
        .R(clear));
  FDRE \touch_cnt_reg[27] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[31]_i_3_n_12 ),
        .Q(touch_cnt[27]),
        .R(clear));
  FDRE \touch_cnt_reg[28] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[31]_i_3_n_11 ),
        .Q(touch_cnt[28]),
        .R(clear));
  FDRE \touch_cnt_reg[29] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[31]_i_3_n_10 ),
        .Q(touch_cnt[29]),
        .R(clear));
  FDRE \touch_cnt_reg[2] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[7]_i_1_n_13 ),
        .Q(touch_cnt[2]),
        .R(clear));
  FDRE \touch_cnt_reg[30] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[31]_i_3_n_9 ),
        .Q(touch_cnt[30]),
        .R(clear));
  FDRE \touch_cnt_reg[31] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[31]_i_3_n_8 ),
        .Q(touch_cnt[31]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \touch_cnt_reg[31]_i_3 
       (.CI(\touch_cnt_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_touch_cnt_reg[31]_i_3_CO_UNCONNECTED [7],\touch_cnt_reg[31]_i_3_n_1 ,\touch_cnt_reg[31]_i_3_n_2 ,\touch_cnt_reg[31]_i_3_n_3 ,\touch_cnt_reg[31]_i_3_n_4 ,\touch_cnt_reg[31]_i_3_n_5 ,\touch_cnt_reg[31]_i_3_n_6 ,\touch_cnt_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\touch_cnt_reg[31]_i_3_n_8 ,\touch_cnt_reg[31]_i_3_n_9 ,\touch_cnt_reg[31]_i_3_n_10 ,\touch_cnt_reg[31]_i_3_n_11 ,\touch_cnt_reg[31]_i_3_n_12 ,\touch_cnt_reg[31]_i_3_n_13 ,\touch_cnt_reg[31]_i_3_n_14 ,\touch_cnt_reg[31]_i_3_n_15 }),
        .S(touch_cnt[31:24]));
  FDRE \touch_cnt_reg[3] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[7]_i_1_n_12 ),
        .Q(touch_cnt[3]),
        .R(clear));
  FDRE \touch_cnt_reg[4] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[7]_i_1_n_11 ),
        .Q(touch_cnt[4]),
        .R(clear));
  FDRE \touch_cnt_reg[5] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[7]_i_1_n_10 ),
        .Q(touch_cnt[5]),
        .R(clear));
  FDRE \touch_cnt_reg[6] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[7]_i_1_n_9 ),
        .Q(touch_cnt[6]),
        .R(clear));
  FDRE \touch_cnt_reg[7] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[7]_i_1_n_8 ),
        .Q(touch_cnt[7]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \touch_cnt_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\touch_cnt_reg[7]_i_1_n_0 ,\touch_cnt_reg[7]_i_1_n_1 ,\touch_cnt_reg[7]_i_1_n_2 ,\touch_cnt_reg[7]_i_1_n_3 ,\touch_cnt_reg[7]_i_1_n_4 ,\touch_cnt_reg[7]_i_1_n_5 ,\touch_cnt_reg[7]_i_1_n_6 ,\touch_cnt_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,touch}),
        .O({\touch_cnt_reg[7]_i_1_n_8 ,\touch_cnt_reg[7]_i_1_n_9 ,\touch_cnt_reg[7]_i_1_n_10 ,\touch_cnt_reg[7]_i_1_n_11 ,\touch_cnt_reg[7]_i_1_n_12 ,\touch_cnt_reg[7]_i_1_n_13 ,\touch_cnt_reg[7]_i_1_n_14 ,\touch_cnt_reg[7]_i_1_n_15 }),
        .S({touch_cnt[7:2],\touch_cnt[7]_i_2_n_0 ,\touch_cnt[7]_i_3_n_0 }));
  FDRE \touch_cnt_reg[8] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[15]_i_1_n_15 ),
        .Q(touch_cnt[8]),
        .R(clear));
  FDRE \touch_cnt_reg[9] 
       (.C(clk),
        .CE(\touch_cnt[31]_i_2_n_0 ),
        .D(\touch_cnt_reg[15]_i_1_n_14 ),
        .Q(touch_cnt[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'h8)) 
    touch_received_i_1
       (.I0(data_ready),
        .I1(rstn),
        .O(touch_received_i_1_n_0));
  FDRE touch_received_reg
       (.C(clk),
        .CE(1'b1),
        .D(touch_received_i_1_n_0),
        .Q(touch_received),
        .R(1'b0));
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
