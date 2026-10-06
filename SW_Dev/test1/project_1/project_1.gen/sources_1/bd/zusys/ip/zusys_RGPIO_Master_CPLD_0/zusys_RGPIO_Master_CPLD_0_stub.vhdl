-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Sep 25 16:30:05 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jackson/projects/test1/project_1/project_1.gen/sources_1/bd/zusys/ip/zusys_RGPIO_Master_CPLD_0/zusys_RGPIO_Master_CPLD_0_stub.vhdl
-- Design      : zusys_RGPIO_Master_CPLD_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zusys_RGPIO_Master_CPLD_0 is
  Port ( 
    RGPIO_M_CLK : out STD_LOGIC;
    RGPIO_M_RX : in STD_LOGIC;
    RGPIO_M_TX : out STD_LOGIC;
    RGPIO_M_OUT : out STD_LOGIC_VECTOR ( 23 downto 0 );
    RGPIO_M_IN : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RGPIO_M_ENABLE : in STD_LOGIC;
    RGPIO_M_USRCLK : in STD_LOGIC;
    RGPIO_M_RESET_N : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_RGPIO_Master_CPLD_0 : entity is "zusys_RGPIO_Master_CPLD_0,RGPIO_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zusys_RGPIO_Master_CPLD_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zusys_RGPIO_Master_CPLD_0 : entity is "package_project";
end zusys_RGPIO_Master_CPLD_0;

architecture stub of zusys_RGPIO_Master_CPLD_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "RGPIO_M_CLK,RGPIO_M_RX,RGPIO_M_TX,RGPIO_M_OUT[23:0],RGPIO_M_IN[23:0],RGPIO_M_ENABLE,RGPIO_M_USRCLK,RGPIO_M_RESET_N";
  attribute x_interface_info : string;
  attribute x_interface_info of RGPIO_M_CLK : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_M_EXT CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of RGPIO_M_CLK : signal is "master RGPIO_M_EXT";
  attribute x_interface_info of RGPIO_M_RX : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_M_EXT RX";
  attribute x_interface_info of RGPIO_M_TX : signal is "trenz.biz:user:RGPIO_EXT:1.0 RGPIO_M_EXT TX";
  attribute x_interface_info of RGPIO_M_OUT : signal is "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR DATA_OUT";
  attribute x_interface_mode of RGPIO_M_OUT : signal is "slave RGPIO_M_USR";
  attribute x_interface_info of RGPIO_M_IN : signal is "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR DATA_IN";
  attribute x_interface_info of RGPIO_M_ENABLE : signal is "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR ENABLE";
  attribute x_interface_info of RGPIO_M_USRCLK : signal is "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR CLK";
  attribute x_interface_info of RGPIO_M_RESET_N : signal is "trenz.biz:user:RGPIO_M_USR:1.0 RGPIO_M_USR RESET_N";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "RGPIO_top,Vivado 2024.2";
begin
end;
