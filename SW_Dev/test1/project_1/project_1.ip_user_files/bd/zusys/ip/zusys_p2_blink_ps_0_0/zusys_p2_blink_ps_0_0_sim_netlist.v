// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Sep 25 16:30:07 2026
// Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/jackson/projects/test1/project_1/project_1.gen/sources_1/bd/zusys/ip/zusys_p2_blink_ps_0_0/zusys_p2_blink_ps_0_0_sim_netlist.v
// Design      : zusys_p2_blink_ps_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zusys_p2_blink_ps_0_0,p2_blink_ps,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "p2_blink_ps,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module zusys_p2_blink_ps_0_0
   (p2_clk,
    ex_io5,
    dir4,
    dir_unused,
    blink_to_ps);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 p2_clk CLK" *) (* x_interface_mode = "slave p2_clk" *) (* x_interface_parameter = "FREQ_HZ 100000000" *) input p2_clk;
  output ex_io5;
  output dir4;
  output [2:0]dir_unused;
  output blink_to_ps;

  wire \<const0> ;
  wire \<const1> ;
  wire blink_to_ps;
  wire p2_clk;

  assign dir4 = \<const1> ;
  assign dir_unused[2] = \<const0> ;
  assign dir_unused[1] = \<const0> ;
  assign dir_unused[0] = \<const0> ;
  assign ex_io5 = blink_to_ps;
  GND GND
       (.G(\<const0> ));
  zusys_p2_blink_ps_0_0_p2_blink_ps U0
       (.blink_to_ps(blink_to_ps),
        .p2_clk(p2_clk));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "p2_blink_ps" *) 
module zusys_p2_blink_ps_0_0_p2_blink_ps
   (blink_to_ps,
    p2_clk);
  output blink_to_ps;
  input p2_clk;

  wire blink_to_ps;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_10 ;
  wire \cnt_reg[0]_i_1_n_11 ;
  wire \cnt_reg[0]_i_1_n_12 ;
  wire \cnt_reg[0]_i_1_n_13 ;
  wire \cnt_reg[0]_i_1_n_14 ;
  wire \cnt_reg[0]_i_1_n_15 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[0]_i_1_n_8 ;
  wire \cnt_reg[0]_i_1_n_9 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_10 ;
  wire \cnt_reg[16]_i_1_n_11 ;
  wire \cnt_reg[16]_i_1_n_12 ;
  wire \cnt_reg[16]_i_1_n_13 ;
  wire \cnt_reg[16]_i_1_n_14 ;
  wire \cnt_reg[16]_i_1_n_15 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_8 ;
  wire \cnt_reg[16]_i_1_n_9 ;
  wire \cnt_reg[26]_i_1_n_13 ;
  wire \cnt_reg[26]_i_1_n_14 ;
  wire \cnt_reg[26]_i_1_n_15 ;
  wire \cnt_reg[26]_i_1_n_6 ;
  wire \cnt_reg[26]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_10 ;
  wire \cnt_reg[8]_i_1_n_11 ;
  wire \cnt_reg[8]_i_1_n_12 ;
  wire \cnt_reg[8]_i_1_n_13 ;
  wire \cnt_reg[8]_i_1_n_14 ;
  wire \cnt_reg[8]_i_1_n_15 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_8 ;
  wire \cnt_reg[8]_i_1_n_9 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[25] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire p2_clk;
  wire [7:2]\NLW_cnt_reg[26]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_cnt_reg[26]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_15 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 ,\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_8 ,\cnt_reg[0]_i_1_n_9 ,\cnt_reg[0]_i_1_n_10 ,\cnt_reg[0]_i_1_n_11 ,\cnt_reg[0]_i_1_n_12 ,\cnt_reg[0]_i_1_n_13 ,\cnt_reg[0]_i_1_n_14 ,\cnt_reg[0]_i_1_n_15 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_13 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_12 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_11 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_10 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_9 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_8 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_15 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 ,\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_8 ,\cnt_reg[16]_i_1_n_9 ,\cnt_reg[16]_i_1_n_10 ,\cnt_reg[16]_i_1_n_11 ,\cnt_reg[16]_i_1_n_12 ,\cnt_reg[16]_i_1_n_13 ,\cnt_reg[16]_i_1_n_14 ,\cnt_reg[16]_i_1_n_15 }),
        .S({\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] ,\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] ,\cnt_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_14 ),
        .Q(\cnt_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_13 ),
        .Q(\cnt_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_12 ),
        .Q(\cnt_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_14 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_11 ),
        .Q(\cnt_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_10 ),
        .Q(\cnt_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_9 ),
        .Q(\cnt_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_8 ),
        .Q(\cnt_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[26]_i_1_n_15 ),
        .Q(\cnt_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[26]_i_1_n_14 ),
        .Q(\cnt_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[26]_i_1_n_13 ),
        .Q(blink_to_ps),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_reg[26]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cnt_reg[26]_i_1_CO_UNCONNECTED [7:2],\cnt_reg[26]_i_1_n_6 ,\cnt_reg[26]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[26]_i_1_O_UNCONNECTED [7:3],\cnt_reg[26]_i_1_n_13 ,\cnt_reg[26]_i_1_n_14 ,\cnt_reg[26]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,blink_to_ps,\cnt_reg_n_0_[25] ,\cnt_reg_n_0_[24] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_13 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_12 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_11 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_10 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_9 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_8 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_15 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 ,\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_8 ,\cnt_reg[8]_i_1_n_9 ,\cnt_reg[8]_i_1_n_10 ,\cnt_reg[8]_i_1_n_11 ,\cnt_reg[8]_i_1_n_12 ,\cnt_reg[8]_i_1_n_13 ,\cnt_reg[8]_i_1_n_14 ,\cnt_reg[8]_i_1_n_15 }),
        .S({\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(p2_clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_14 ),
        .Q(\cnt_reg_n_0_[9] ),
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
