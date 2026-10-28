-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed Oct 28 14:13:40 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jackson/projects/kestrel/SW_Dev/KestrelDev_V_0_1/KestrelDev_V_0_1.gen/sources_1/bd/zusys/ip/zusys_dummy_AISC110C_0_0/zusys_dummy_AISC110C_0_0_stub.vhdl
-- Design      : zusys_dummy_AISC110C_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zusys_dummy_AISC110C_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    cap_enable : in STD_LOGIC;
    rstn : in STD_LOGIC;
    dummy_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mux_data_valid_o : out STD_LOGIC;
    m_mux0_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_mux1_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_mux2_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_mux3_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_out : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_dummy_AISC110C_0_0 : entity is "zusys_dummy_AISC110C_0_0,dummy_AISC110C,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of zusys_dummy_AISC110C_0_0 : entity is "zusys_dummy_AISC110C_0_0,dummy_AISC110C,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=dummy_AISC110C,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zusys_dummy_AISC110C_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zusys_dummy_AISC110C_0_0 : entity is "module_ref";
end zusys_dummy_AISC110C_0_0;

architecture stub of zusys_dummy_AISC110C_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_in,cap_enable,rstn,dummy_data[31:0],gpio[3:0],mux_data_valid_o,m_mux0_data_o[7:0],m_mux1_data_o[7:0],m_mux2_data_o[7:0],m_mux3_data_o[7:0],clk_out";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of rstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "dummy_AISC110C,Vivado 2024.2";
begin
end;
