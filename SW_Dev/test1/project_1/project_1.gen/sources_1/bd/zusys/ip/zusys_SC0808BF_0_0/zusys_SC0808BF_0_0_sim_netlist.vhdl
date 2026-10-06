-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Sep 25 16:30:05 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jackson/projects/test1/project_1/project_1.gen/sources_1/bd/zusys/ip/zusys_SC0808BF_0_0/zusys_SC0808BF_0_0_sim_netlist.vhdl
-- Design      : zusys_SC0808BF_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_SC0808BF_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zusys_SC0808BF_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_SC0808BF_0_0 : entity is "zusys_SC0808BF_0_0,SC0808BF,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zusys_SC0808BF_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zusys_SC0808BF_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of zusys_SC0808BF_0_0 : entity is "SC0808BF,Vivado 2024.2";
end zusys_SC0808BF_0_0;

architecture STRUCTURE of zusys_SC0808BF_0_0 is
  signal \^can_s\ : STD_LOGIC;
  signal \^can_tx\ : STD_LOGIC;
  signal \^led_hd\ : STD_LOGIC;
  signal \^led_xmod2\ : STD_LOGIC;
  signal \^ps_aux_do\ : STD_LOGIC;
  signal \^ps_aux_oe\ : STD_LOGIC;
  signal \^rgpio_m_clk\ : STD_LOGIC;
  signal \^rgpio_m_tx\ : STD_LOGIC;
  signal \^rgpio_s_clk\ : STD_LOGIC;
  signal \^rgpio_s_tx\ : STD_LOGIC;
  signal \^sc10_i\ : STD_LOGIC;
  signal \^sc12\ : STD_LOGIC;
  signal \^sc13\ : STD_LOGIC;
  signal \^sc19\ : STD_LOGIC;
  signal \^sc5\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of CAN_RX : signal is "xilinx.com:interface:can:1.0 CAN RX";
  attribute x_interface_mode : string;
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
  attribute x_interface_info of SC0 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC0";
  attribute x_interface_mode of SC0 : signal is "master BASE";
  attribute x_interface_info of SC10_I : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_I";
  attribute x_interface_info of SC10_O : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_O";
  attribute x_interface_info of SC10_T : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_T";
  attribute x_interface_info of SC11 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC11";
  attribute x_interface_info of SC12 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC12";
  attribute x_interface_info of SC13 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC13";
  attribute x_interface_info of SC14 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC14";
  attribute x_interface_info of SC15 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC15";
  attribute x_interface_info of SC16 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC16";
  attribute x_interface_info of SC17 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC17";
  attribute x_interface_info of SC18 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC18";
  attribute x_interface_info of SC19 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC19";
  attribute x_interface_info of SC5 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC5";
  attribute x_interface_info of SC6 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC6";
  attribute x_interface_info of SC7 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC7";
begin
  CAN_RX <= \^sc19\;
  PS_AUX_DI <= \^sc10_i\;
  PS_DP_HPD <= \^sc12\;
  RGPIO_M_RX <= \^sc13\;
  RGPIO_S_RX <= \^sc5\;
  SC0 <= \^led_hd\;
  SC10_O <= \^ps_aux_do\;
  SC10_T <= \^ps_aux_oe\;
  SC14 <= \^rgpio_m_tx\;
  SC15 <= \^rgpio_m_clk\;
  SC16 <= \^can_s\;
  SC17 <= \^led_xmod2\;
  SC18 <= \^can_tx\;
  SC6 <= \^rgpio_s_clk\;
  SC7 <= \^rgpio_s_tx\;
  \^can_s\ <= CAN_S;
  \^can_tx\ <= CAN_TX;
  \^led_hd\ <= LED_HD;
  \^led_xmod2\ <= LED_XMOD2;
  \^ps_aux_do\ <= PS_AUX_DO;
  \^ps_aux_oe\ <= PS_AUX_OE;
  \^rgpio_m_clk\ <= RGPIO_M_CLK;
  \^rgpio_m_tx\ <= RGPIO_M_TX;
  \^rgpio_s_clk\ <= RGPIO_S_CLK;
  \^rgpio_s_tx\ <= RGPIO_S_TX;
  \^sc10_i\ <= SC10_I;
  \^sc12\ <= SC12;
  \^sc13\ <= SC13;
  \^sc19\ <= SC19;
  \^sc5\ <= SC5;
SC11_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ps_aux_oe\,
      O => SC11
    );
end STRUCTURE;
