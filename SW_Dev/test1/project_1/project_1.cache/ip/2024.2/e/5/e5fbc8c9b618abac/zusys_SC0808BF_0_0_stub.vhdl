-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Sep 25 16:30:04 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zusys_SC0808BF_0_0_stub.vhdl
-- Design      : zusys_SC0808BF_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    PS_AUX_DI : out STD_LOGIC;
    PS_AUX_DO : in STD_LOGIC;
    PS_AUX_OE : in STD_LOGIC;
    PS_DP_HPD : out STD_LOGIC;
    SC0 : out STD_LOGIC;
    SC5 : in STD_LOGIC;
    SC6 : out STD_LOGIC;
    SC7 : out STD_LOGIC;
    SC10_I : in STD_LOGIC;
    SC10_O : out STD_LOGIC;
    SC10_T : out STD_LOGIC;
    SC11 : out STD_LOGIC;
    SC12 : in STD_LOGIC;
    SC13 : in STD_LOGIC;
    SC15 : out STD_LOGIC;
    SC14 : out STD_LOGIC;
    SC16 : out STD_LOGIC;
    SC17 : out STD_LOGIC;
    SC18 : out STD_LOGIC;
    SC19 : in STD_LOGIC;
    CAN_RX : out STD_LOGIC;
    CAN_TX : in STD_LOGIC;
    CAN_S : in STD_LOGIC;
    LED_HD : in STD_LOGIC;
    LED_XMOD2 : in STD_LOGIC;
    RGPIO_M_CLK : in STD_LOGIC;
    RGPIO_M_RX : out STD_LOGIC;
    RGPIO_M_TX : in STD_LOGIC;
    RGPIO_S_CLK : in STD_LOGIC;
    RGPIO_S_RX : out STD_LOGIC;
    RGPIO_S_TX : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zusys_SC0808BF_0_0,SC0808BF,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "PS_AUX_DI,PS_AUX_DO,PS_AUX_OE,PS_DP_HPD,SC0,SC5,SC6,SC7,SC10_I,SC10_O,SC10_T,SC11,SC12,SC13,SC15,SC14,SC16,SC17,SC18,SC19,CAN_RX,CAN_TX,CAN_S,LED_HD,LED_XMOD2,RGPIO_M_CLK,RGPIO_M_RX,RGPIO_M_TX,RGPIO_S_CLK,RGPIO_S_RX,RGPIO_S_TX";
  attribute x_interface_info : string;
  attribute x_interface_info of SC0 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC0";
  attribute x_interface_mode : string;
  attribute x_interface_mode of SC0 : signal is "master BASE";
  attribute x_interface_info of SC5 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC5";
  attribute x_interface_info of SC6 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC6";
  attribute x_interface_info of SC7 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC7";
  attribute x_interface_info of SC10_I : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_I";
  attribute x_interface_info of SC10_O : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_O";
  attribute x_interface_info of SC10_T : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_T";
  attribute x_interface_info of SC11 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC11";
  attribute x_interface_info of SC12 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC12";
  attribute x_interface_info of SC13 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC13";
  attribute x_interface_info of SC15 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC15";
  attribute x_interface_info of SC14 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC14";
  attribute x_interface_info of SC16 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC16";
  attribute x_interface_info of SC17 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC17";
  attribute x_interface_info of SC18 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC18";
  attribute x_interface_info of SC19 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC19";
  attribute x_interface_info of CAN_RX : signal is "xilinx.com:interface:can:1.0 CAN RX";
  attribute x_interface_mode of CAN_RX : signal is "mirroredMaster CAN";
  attribute x_interface_info of CAN_TX : signal is "xilinx.com:interface:can:1.0 CAN TX";
  attribute x_interface_info of RGPIO_M_CLK : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_MASTER_CPLD CLK";
  attribute x_interface_mode of RGPIO_M_CLK : signal is "slave RGPIO_MASTER_CPLD";
  attribute x_interface_info of RGPIO_M_RX : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_MASTER_CPLD RX";
  attribute x_interface_info of RGPIO_M_TX : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_MASTER_CPLD TX";
  attribute x_interface_info of RGPIO_S_CLK : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_SLAVE_CPLD CLK";
  attribute x_interface_mode of RGPIO_S_CLK : signal is "slave RGPIO_SLAVE_CPLD";
  attribute x_interface_info of RGPIO_S_RX : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_SLAVE_CPLD RX";
  attribute x_interface_info of RGPIO_S_TX : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_SLAVE_CPLD TX";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "SC0808BF,Vivado 2024.2";
begin
end;
