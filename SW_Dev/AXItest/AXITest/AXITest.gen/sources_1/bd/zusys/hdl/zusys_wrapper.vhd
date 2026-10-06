--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
--Date        : Thu Sep 24 12:10:35 2026
--Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
--Command     : generate_target zusys_wrapper.bd
--Design      : zusys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_wrapper is
  port (
    BASE_sc0 : out STD_LOGIC;
    BASE_sc10_io : inout STD_LOGIC;
    BASE_sc11 : out STD_LOGIC;
    BASE_sc12 : in STD_LOGIC;
    BASE_sc13 : in STD_LOGIC;
    BASE_sc14 : out STD_LOGIC;
    BASE_sc15 : out STD_LOGIC;
    BASE_sc16 : out STD_LOGIC;
    BASE_sc17 : out STD_LOGIC;
    BASE_sc18 : out STD_LOGIC;
    BASE_sc19 : in STD_LOGIC;
    BASE_sc5 : in STD_LOGIC;
    BASE_sc6 : out STD_LOGIC;
    BASE_sc7 : out STD_LOGIC;
    I2S_bclk : in STD_LOGIC;
    I2S_lrclk : in STD_LOGIC;
    I2S_sdin : out STD_LOGIC;
    I2S_sdout : in STD_LOGIC
  );
end zusys_wrapper;

architecture STRUCTURE of zusys_wrapper is
  component zusys is
  port (
    BASE_sc5 : in STD_LOGIC;
    BASE_sc7 : out STD_LOGIC;
    BASE_sc6 : out STD_LOGIC;
    BASE_sc10_i : in STD_LOGIC;
    BASE_sc15 : out STD_LOGIC;
    BASE_sc13 : in STD_LOGIC;
    BASE_sc14 : out STD_LOGIC;
    BASE_sc10_o : out STD_LOGIC;
    BASE_sc11 : out STD_LOGIC;
    BASE_sc12 : in STD_LOGIC;
    BASE_sc10_t : out STD_LOGIC;
    BASE_sc0 : out STD_LOGIC;
    BASE_sc17 : out STD_LOGIC;
    BASE_sc18 : out STD_LOGIC;
    BASE_sc16 : out STD_LOGIC;
    BASE_sc19 : in STD_LOGIC;
    I2S_sdin : out STD_LOGIC;
    I2S_lrclk : in STD_LOGIC;
    I2S_sdout : in STD_LOGIC;
    I2S_bclk : in STD_LOGIC
  );
  end component zusys;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal BASE_sc10_i : STD_LOGIC;
  signal BASE_sc10_o : STD_LOGIC;
  signal BASE_sc10_t : STD_LOGIC;
begin
BASE_sc10_iobuf: component IOBUF
     port map (
      I => BASE_sc10_o,
      IO => BASE_sc10_io,
      O => BASE_sc10_i,
      T => BASE_sc10_t
    );
zusys_i: component zusys
     port map (
      BASE_sc0 => BASE_sc0,
      BASE_sc10_i => BASE_sc10_i,
      BASE_sc10_o => BASE_sc10_o,
      BASE_sc10_t => BASE_sc10_t,
      BASE_sc11 => BASE_sc11,
      BASE_sc12 => BASE_sc12,
      BASE_sc13 => BASE_sc13,
      BASE_sc14 => BASE_sc14,
      BASE_sc15 => BASE_sc15,
      BASE_sc16 => BASE_sc16,
      BASE_sc17 => BASE_sc17,
      BASE_sc18 => BASE_sc18,
      BASE_sc19 => BASE_sc19,
      BASE_sc5 => BASE_sc5,
      BASE_sc6 => BASE_sc6,
      BASE_sc7 => BASE_sc7,
      I2S_bclk => I2S_bclk,
      I2S_lrclk => I2S_lrclk,
      I2S_sdin => I2S_sdin,
      I2S_sdout => I2S_sdout
    );
end STRUCTURE;
