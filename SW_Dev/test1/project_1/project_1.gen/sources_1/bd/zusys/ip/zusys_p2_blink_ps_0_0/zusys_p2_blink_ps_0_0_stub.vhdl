-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Sep 25 16:30:07 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jackson/projects/test1/project_1/project_1.gen/sources_1/bd/zusys/ip/zusys_p2_blink_ps_0_0/zusys_p2_blink_ps_0_0_stub.vhdl
-- Design      : zusys_p2_blink_ps_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zusys_p2_blink_ps_0_0 is
  Port ( 
    p2_clk : in STD_LOGIC;
    ex_io5 : out STD_LOGIC;
    dir4 : out STD_LOGIC;
    dir_unused : out STD_LOGIC_VECTOR ( 2 downto 0 );
    blink_to_ps : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_p2_blink_ps_0_0 : entity is "zusys_p2_blink_ps_0_0,p2_blink_ps,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of zusys_p2_blink_ps_0_0 : entity is "zusys_p2_blink_ps_0_0,p2_blink_ps,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=p2_blink_ps,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zusys_p2_blink_ps_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zusys_p2_blink_ps_0_0 : entity is "module_ref";
end zusys_p2_blink_ps_0_0;

architecture stub of zusys_p2_blink_ps_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "p2_clk,ex_io5,dir4,dir_unused[2:0],blink_to_ps";
  attribute x_interface_info : string;
  attribute x_interface_info of p2_clk : signal is "xilinx.com:signal:clock:1.0 p2_clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of p2_clk : signal is "slave p2_clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of p2_clk : signal is "FREQ_HZ 100000000";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "p2_blink_ps,Vivado 2024.2";
begin
end;
