-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Oct  3 15:02:54 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jackson/projects/Kestrel/AXItest/AXITest/AXITest.gen/sources_1/bd/zusys/ip/zusys_capture_test1_0_0/zusys_capture_test1_0_0_sim_netlist.vhdl
-- Design      : zusys_capture_test1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_capture_test1_0_0_capture_test1 is
  port (
    cap_status_reg_0 : out STD_LOGIC;
    frame_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cap_enable : in STD_LOGIC;
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    frame_cnt_target : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zusys_capture_test1_0_0_capture_test1 : entity is "capture_test1";
end zusys_capture_test1_0_0_capture_test1;

architecture STRUCTURE of zusys_capture_test1_0_0_capture_test1 is
  signal cap_status0_out : STD_LOGIC;
  signal cap_status_i_10_n_0 : STD_LOGIC;
  signal cap_status_i_11_n_0 : STD_LOGIC;
  signal cap_status_i_12_n_0 : STD_LOGIC;
  signal cap_status_i_2_n_0 : STD_LOGIC;
  signal cap_status_i_4_n_0 : STD_LOGIC;
  signal cap_status_i_5_n_0 : STD_LOGIC;
  signal cap_status_i_6_n_0 : STD_LOGIC;
  signal cap_status_i_7_n_0 : STD_LOGIC;
  signal cap_status_i_8_n_0 : STD_LOGIC;
  signal cap_status_i_9_n_0 : STD_LOGIC;
  signal \^cap_status_reg_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal en_d : STD_LOGIC;
  signal \^frame_cnt\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \frame_cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_11_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_12_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_13_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal \frame_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \frame_cnt_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \frame_cnt_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_10\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_11\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_12\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_13\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_14\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_15\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_8\ : STD_LOGIC;
  signal \frame_cnt_reg[31]_i_3_n_9\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \frame_cnt_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal tick : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tick3 : STD_LOGIC;
  signal \tick3_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \tick3_carry__0_n_1\ : STD_LOGIC;
  signal \tick3_carry__0_n_2\ : STD_LOGIC;
  signal \tick3_carry__0_n_3\ : STD_LOGIC;
  signal \tick3_carry__0_n_4\ : STD_LOGIC;
  signal \tick3_carry__0_n_5\ : STD_LOGIC;
  signal \tick3_carry__0_n_6\ : STD_LOGIC;
  signal \tick3_carry__0_n_7\ : STD_LOGIC;
  signal tick3_carry_i_10_n_0 : STD_LOGIC;
  signal tick3_carry_i_11_n_0 : STD_LOGIC;
  signal tick3_carry_i_12_n_0 : STD_LOGIC;
  signal tick3_carry_i_13_n_0 : STD_LOGIC;
  signal tick3_carry_i_14_n_0 : STD_LOGIC;
  signal tick3_carry_i_15_n_0 : STD_LOGIC;
  signal tick3_carry_i_16_n_0 : STD_LOGIC;
  signal tick3_carry_i_1_n_0 : STD_LOGIC;
  signal tick3_carry_i_2_n_0 : STD_LOGIC;
  signal tick3_carry_i_3_n_0 : STD_LOGIC;
  signal tick3_carry_i_4_n_0 : STD_LOGIC;
  signal tick3_carry_i_5_n_0 : STD_LOGIC;
  signal tick3_carry_i_6_n_0 : STD_LOGIC;
  signal tick3_carry_i_7_n_0 : STD_LOGIC;
  signal tick3_carry_i_8_n_0 : STD_LOGIC;
  signal tick3_carry_i_9_n_0 : STD_LOGIC;
  signal tick3_carry_n_0 : STD_LOGIC;
  signal tick3_carry_n_1 : STD_LOGIC;
  signal tick3_carry_n_2 : STD_LOGIC;
  signal tick3_carry_n_3 : STD_LOGIC;
  signal tick3_carry_n_4 : STD_LOGIC;
  signal tick3_carry_n_5 : STD_LOGIC;
  signal tick3_carry_n_6 : STD_LOGIC;
  signal tick3_carry_n_7 : STD_LOGIC;
  signal \tick[31]_i_1_n_0\ : STD_LOGIC;
  signal tick_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tick_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \tick_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \tick_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \tick_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \tick_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \tick_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \tick_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \tick_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \tick_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \tick_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \tick_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \tick_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \tick_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \tick_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \tick_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \tick_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \tick_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \tick_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \tick_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \tick_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \tick_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \tick_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \tick_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \tick_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \tick_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \tick_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \tick_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \tick_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \tick_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \tick_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \NLW_frame_cnt_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_tick3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_tick3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_tick_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_tick_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \frame_cnt[31]_i_7\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \frame_cnt_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \frame_cnt_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \frame_cnt_reg[31]_i_3\ : label is 16;
  attribute ADDER_THRESHOLD of \frame_cnt_reg[7]_i_1\ : label is 16;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of tick3_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \tick3_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of \tick[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tick[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tick[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tick[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tick[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tick[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tick[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tick[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tick[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tick[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tick[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tick[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tick[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tick[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tick[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tick[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tick[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tick[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tick[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tick[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tick[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tick[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tick[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tick[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tick[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tick[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tick[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tick[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tick[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tick[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tick[9]_i_1\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD of \tick_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_reg[8]_i_2\ : label is 35;
begin
  cap_status_reg_0 <= \^cap_status_reg_0\;
  frame_cnt(31 downto 0) <= \^frame_cnt\(31 downto 0);
cap_status_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => p_0_in
    );
cap_status_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_cnt_target(25),
      I1 => frame_cnt_target(24),
      I2 => frame_cnt_target(27),
      I3 => frame_cnt_target(26),
      O => cap_status_i_10_n_0
    );
cap_status_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_cnt_target(5),
      I1 => frame_cnt_target(4),
      I2 => frame_cnt_target(7),
      I3 => frame_cnt_target(6),
      O => cap_status_i_11_n_0
    );
cap_status_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_cnt_target(13),
      I1 => frame_cnt_target(12),
      I2 => frame_cnt_target(15),
      I3 => frame_cnt_target(14),
      O => cap_status_i_12_n_0
    );
cap_status_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => cap_status0_out,
      I1 => en_d,
      I2 => cap_enable,
      I3 => \^cap_status_reg_0\,
      O => cap_status_i_2_n_0
    );
cap_status_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E0F000F000F0"
    )
        port map (
      I0 => cap_status_i_4_n_0,
      I1 => cap_status_i_5_n_0,
      I2 => \^cap_status_reg_0\,
      I3 => cap_enable,
      I4 => cap_status_i_6_n_0,
      I5 => tick3,
      O => cap_status0_out
    );
cap_status_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cap_status_i_7_n_0,
      I1 => frame_cnt_target(17),
      I2 => frame_cnt_target(16),
      I3 => cap_status_i_8_n_0,
      I4 => cap_status_i_9_n_0,
      I5 => cap_status_i_10_n_0,
      O => cap_status_i_4_n_0
    );
cap_status_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => frame_cnt_target(2),
      I1 => frame_cnt_target(3),
      I2 => frame_cnt_target(0),
      I3 => frame_cnt_target(1),
      I4 => cap_status_i_11_n_0,
      O => cap_status_i_5_n_0
    );
cap_status_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => frame_cnt_target(10),
      I1 => frame_cnt_target(11),
      I2 => frame_cnt_target(8),
      I3 => frame_cnt_target(9),
      I4 => cap_status_i_12_n_0,
      O => cap_status_i_6_n_0
    );
cap_status_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_cnt_target(21),
      I1 => frame_cnt_target(20),
      I2 => frame_cnt_target(23),
      I3 => frame_cnt_target(22),
      O => cap_status_i_7_n_0
    );
cap_status_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_cnt_target(18),
      I1 => frame_cnt_target(19),
      O => cap_status_i_8_n_0
    );
cap_status_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_cnt_target(29),
      I1 => frame_cnt_target(28),
      I2 => frame_cnt_target(31),
      I3 => frame_cnt_target(30),
      O => cap_status_i_9_n_0
    );
cap_status_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cap_status_i_2_n_0,
      Q => \^cap_status_reg_0\,
      R => p_0_in
    );
en_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cap_enable,
      Q => en_d,
      R => p_0_in
    );
\frame_cnt[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => en_d,
      I1 => cap_enable,
      I2 => rstn,
      O => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tick(13),
      I1 => tick(12),
      I2 => tick(15),
      I3 => tick(14),
      O => \frame_cnt[31]_i_10_n_0\
    );
\frame_cnt[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => tick(5),
      I1 => tick(4),
      I2 => tick(7),
      I3 => tick(6),
      O => \frame_cnt[31]_i_11_n_0\
    );
\frame_cnt[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tick(29),
      I1 => tick(28),
      I2 => tick(31),
      I3 => tick(30),
      O => \frame_cnt[31]_i_12_n_0\
    );
\frame_cnt[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tick(21),
      I1 => tick(20),
      I2 => tick(23),
      I3 => tick(22),
      O => \frame_cnt[31]_i_13_n_0\
    );
\frame_cnt[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => \^cap_status_reg_0\,
      I2 => cap_enable,
      I3 => \frame_cnt[31]_i_5_n_0\,
      O => \frame_cnt[31]_i_2_n_0\
    );
\frame_cnt[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \frame_cnt[31]_i_6_n_0\,
      I1 => \frame_cnt[31]_i_7_n_0\,
      I2 => \frame_cnt[31]_i_8_n_0\,
      I3 => \frame_cnt[31]_i_9_n_0\,
      O => \frame_cnt[31]_i_4_n_0\
    );
\frame_cnt[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => cap_status_i_4_n_0,
      I1 => cap_status_i_5_n_0,
      I2 => cap_status_i_6_n_0,
      I3 => tick3,
      O => \frame_cnt[31]_i_5_n_0\
    );
\frame_cnt[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => tick(10),
      I1 => tick(11),
      I2 => tick(9),
      I3 => tick(8),
      I4 => \frame_cnt[31]_i_10_n_0\,
      O => \frame_cnt[31]_i_6_n_0\
    );
\frame_cnt[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => tick(2),
      I1 => tick(3),
      I2 => tick(0),
      I3 => tick(1),
      I4 => \frame_cnt[31]_i_11_n_0\,
      O => \frame_cnt[31]_i_7_n_0\
    );
\frame_cnt[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tick(26),
      I1 => tick(27),
      I2 => tick(24),
      I3 => tick(25),
      I4 => \frame_cnt[31]_i_12_n_0\,
      O => \frame_cnt[31]_i_8_n_0\
    );
\frame_cnt[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tick(18),
      I1 => tick(19),
      I2 => tick(16),
      I3 => tick(17),
      I4 => \frame_cnt[31]_i_13_n_0\,
      O => \frame_cnt[31]_i_9_n_0\
    );
\frame_cnt[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^frame_cnt\(0),
      O => \frame_cnt[7]_i_2_n_0\
    );
\frame_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_15\,
      Q => \^frame_cnt\(0),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_13\,
      Q => \^frame_cnt\(10),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_12\,
      Q => \^frame_cnt\(11),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_11\,
      Q => \^frame_cnt\(12),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_10\,
      Q => \^frame_cnt\(13),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_9\,
      Q => \^frame_cnt\(14),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_8\,
      Q => \^frame_cnt\(15),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \frame_cnt_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \frame_cnt_reg[15]_i_1_n_0\,
      CO(6) => \frame_cnt_reg[15]_i_1_n_1\,
      CO(5) => \frame_cnt_reg[15]_i_1_n_2\,
      CO(4) => \frame_cnt_reg[15]_i_1_n_3\,
      CO(3) => \frame_cnt_reg[15]_i_1_n_4\,
      CO(2) => \frame_cnt_reg[15]_i_1_n_5\,
      CO(1) => \frame_cnt_reg[15]_i_1_n_6\,
      CO(0) => \frame_cnt_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \frame_cnt_reg[15]_i_1_n_8\,
      O(6) => \frame_cnt_reg[15]_i_1_n_9\,
      O(5) => \frame_cnt_reg[15]_i_1_n_10\,
      O(4) => \frame_cnt_reg[15]_i_1_n_11\,
      O(3) => \frame_cnt_reg[15]_i_1_n_12\,
      O(2) => \frame_cnt_reg[15]_i_1_n_13\,
      O(1) => \frame_cnt_reg[15]_i_1_n_14\,
      O(0) => \frame_cnt_reg[15]_i_1_n_15\,
      S(7 downto 0) => \^frame_cnt\(15 downto 8)
    );
\frame_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_15\,
      Q => \^frame_cnt\(16),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_14\,
      Q => \^frame_cnt\(17),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_13\,
      Q => \^frame_cnt\(18),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_12\,
      Q => \^frame_cnt\(19),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_14\,
      Q => \^frame_cnt\(1),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_11\,
      Q => \^frame_cnt\(20),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_10\,
      Q => \^frame_cnt\(21),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_9\,
      Q => \^frame_cnt\(22),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_8\,
      Q => \^frame_cnt\(23),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \frame_cnt_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \frame_cnt_reg[23]_i_1_n_0\,
      CO(6) => \frame_cnt_reg[23]_i_1_n_1\,
      CO(5) => \frame_cnt_reg[23]_i_1_n_2\,
      CO(4) => \frame_cnt_reg[23]_i_1_n_3\,
      CO(3) => \frame_cnt_reg[23]_i_1_n_4\,
      CO(2) => \frame_cnt_reg[23]_i_1_n_5\,
      CO(1) => \frame_cnt_reg[23]_i_1_n_6\,
      CO(0) => \frame_cnt_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \frame_cnt_reg[23]_i_1_n_8\,
      O(6) => \frame_cnt_reg[23]_i_1_n_9\,
      O(5) => \frame_cnt_reg[23]_i_1_n_10\,
      O(4) => \frame_cnt_reg[23]_i_1_n_11\,
      O(3) => \frame_cnt_reg[23]_i_1_n_12\,
      O(2) => \frame_cnt_reg[23]_i_1_n_13\,
      O(1) => \frame_cnt_reg[23]_i_1_n_14\,
      O(0) => \frame_cnt_reg[23]_i_1_n_15\,
      S(7 downto 0) => \^frame_cnt\(23 downto 16)
    );
\frame_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_15\,
      Q => \^frame_cnt\(24),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_14\,
      Q => \^frame_cnt\(25),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_13\,
      Q => \^frame_cnt\(26),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_12\,
      Q => \^frame_cnt\(27),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_11\,
      Q => \^frame_cnt\(28),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_10\,
      Q => \^frame_cnt\(29),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_13\,
      Q => \^frame_cnt\(2),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_9\,
      Q => \^frame_cnt\(30),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_8\,
      Q => \^frame_cnt\(31),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \frame_cnt_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_frame_cnt_reg[31]_i_3_CO_UNCONNECTED\(7),
      CO(6) => \frame_cnt_reg[31]_i_3_n_1\,
      CO(5) => \frame_cnt_reg[31]_i_3_n_2\,
      CO(4) => \frame_cnt_reg[31]_i_3_n_3\,
      CO(3) => \frame_cnt_reg[31]_i_3_n_4\,
      CO(2) => \frame_cnt_reg[31]_i_3_n_5\,
      CO(1) => \frame_cnt_reg[31]_i_3_n_6\,
      CO(0) => \frame_cnt_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \frame_cnt_reg[31]_i_3_n_8\,
      O(6) => \frame_cnt_reg[31]_i_3_n_9\,
      O(5) => \frame_cnt_reg[31]_i_3_n_10\,
      O(4) => \frame_cnt_reg[31]_i_3_n_11\,
      O(3) => \frame_cnt_reg[31]_i_3_n_12\,
      O(2) => \frame_cnt_reg[31]_i_3_n_13\,
      O(1) => \frame_cnt_reg[31]_i_3_n_14\,
      O(0) => \frame_cnt_reg[31]_i_3_n_15\,
      S(7 downto 0) => \^frame_cnt\(31 downto 24)
    );
\frame_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_12\,
      Q => \^frame_cnt\(3),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_11\,
      Q => \^frame_cnt\(4),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_10\,
      Q => \^frame_cnt\(5),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_9\,
      Q => \^frame_cnt\(6),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_8\,
      Q => \^frame_cnt\(7),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \frame_cnt_reg[7]_i_1_n_0\,
      CO(6) => \frame_cnt_reg[7]_i_1_n_1\,
      CO(5) => \frame_cnt_reg[7]_i_1_n_2\,
      CO(4) => \frame_cnt_reg[7]_i_1_n_3\,
      CO(3) => \frame_cnt_reg[7]_i_1_n_4\,
      CO(2) => \frame_cnt_reg[7]_i_1_n_5\,
      CO(1) => \frame_cnt_reg[7]_i_1_n_6\,
      CO(0) => \frame_cnt_reg[7]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \frame_cnt_reg[7]_i_1_n_8\,
      O(6) => \frame_cnt_reg[7]_i_1_n_9\,
      O(5) => \frame_cnt_reg[7]_i_1_n_10\,
      O(4) => \frame_cnt_reg[7]_i_1_n_11\,
      O(3) => \frame_cnt_reg[7]_i_1_n_12\,
      O(2) => \frame_cnt_reg[7]_i_1_n_13\,
      O(1) => \frame_cnt_reg[7]_i_1_n_14\,
      O(0) => \frame_cnt_reg[7]_i_1_n_15\,
      S(7 downto 1) => \^frame_cnt\(7 downto 1),
      S(0) => \frame_cnt[7]_i_2_n_0\
    );
\frame_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_15\,
      Q => \^frame_cnt\(8),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_14\,
      Q => \^frame_cnt\(9),
      R => \frame_cnt[31]_i_1_n_0\
    );
tick3_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => tick3_carry_n_0,
      CO(6) => tick3_carry_n_1,
      CO(5) => tick3_carry_n_2,
      CO(4) => tick3_carry_n_3,
      CO(3) => tick3_carry_n_4,
      CO(2) => tick3_carry_n_5,
      CO(1) => tick3_carry_n_6,
      CO(0) => tick3_carry_n_7,
      DI(7) => tick3_carry_i_1_n_0,
      DI(6) => tick3_carry_i_2_n_0,
      DI(5) => tick3_carry_i_3_n_0,
      DI(4) => tick3_carry_i_4_n_0,
      DI(3) => tick3_carry_i_5_n_0,
      DI(2) => tick3_carry_i_6_n_0,
      DI(1) => tick3_carry_i_7_n_0,
      DI(0) => tick3_carry_i_8_n_0,
      O(7 downto 0) => NLW_tick3_carry_O_UNCONNECTED(7 downto 0),
      S(7) => tick3_carry_i_9_n_0,
      S(6) => tick3_carry_i_10_n_0,
      S(5) => tick3_carry_i_11_n_0,
      S(4) => tick3_carry_i_12_n_0,
      S(3) => tick3_carry_i_13_n_0,
      S(2) => tick3_carry_i_14_n_0,
      S(1) => tick3_carry_i_15_n_0,
      S(0) => tick3_carry_i_16_n_0
    );
\tick3_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => tick3_carry_n_0,
      CI_TOP => '0',
      CO(7) => tick3,
      CO(6) => \tick3_carry__0_n_1\,
      CO(5) => \tick3_carry__0_n_2\,
      CO(4) => \tick3_carry__0_n_3\,
      CO(3) => \tick3_carry__0_n_4\,
      CO(2) => \tick3_carry__0_n_5\,
      CO(1) => \tick3_carry__0_n_6\,
      CO(0) => \tick3_carry__0_n_7\,
      DI(7) => \tick3_carry__0_i_1_n_0\,
      DI(6) => \tick3_carry__0_i_2_n_0\,
      DI(5) => \tick3_carry__0_i_3_n_0\,
      DI(4) => \tick3_carry__0_i_4_n_0\,
      DI(3) => \tick3_carry__0_i_5_n_0\,
      DI(2) => \tick3_carry__0_i_6_n_0\,
      DI(1) => \tick3_carry__0_i_7_n_0\,
      DI(0) => \tick3_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_tick3_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \tick3_carry__0_i_9_n_0\,
      S(6) => \tick3_carry__0_i_10_n_0\,
      S(5) => \tick3_carry__0_i_11_n_0\,
      S(4) => \tick3_carry__0_i_12_n_0\,
      S(3) => \tick3_carry__0_i_13_n_0\,
      S(2) => \tick3_carry__0_i_14_n_0\,
      S(1) => \tick3_carry__0_i_15_n_0\,
      S(0) => \tick3_carry__0_i_16_n_0\
    );
\tick3_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(31),
      I1 => frame_cnt_target(30),
      I2 => frame_cnt_target(31),
      I3 => \^frame_cnt\(30),
      O => \tick3_carry__0_i_1_n_0\
    );
\tick3_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(29),
      I1 => \^frame_cnt\(29),
      I2 => frame_cnt_target(28),
      I3 => \^frame_cnt\(28),
      O => \tick3_carry__0_i_10_n_0\
    );
\tick3_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(27),
      I1 => \^frame_cnt\(27),
      I2 => frame_cnt_target(26),
      I3 => \^frame_cnt\(26),
      O => \tick3_carry__0_i_11_n_0\
    );
\tick3_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(25),
      I1 => \^frame_cnt\(25),
      I2 => frame_cnt_target(24),
      I3 => \^frame_cnt\(24),
      O => \tick3_carry__0_i_12_n_0\
    );
\tick3_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(23),
      I1 => \^frame_cnt\(23),
      I2 => frame_cnt_target(22),
      I3 => \^frame_cnt\(22),
      O => \tick3_carry__0_i_13_n_0\
    );
\tick3_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(21),
      I1 => \^frame_cnt\(21),
      I2 => frame_cnt_target(20),
      I3 => \^frame_cnt\(20),
      O => \tick3_carry__0_i_14_n_0\
    );
\tick3_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(19),
      I1 => \^frame_cnt\(19),
      I2 => frame_cnt_target(18),
      I3 => \^frame_cnt\(18),
      O => \tick3_carry__0_i_15_n_0\
    );
\tick3_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(17),
      I1 => \^frame_cnt\(17),
      I2 => frame_cnt_target(16),
      I3 => \^frame_cnt\(16),
      O => \tick3_carry__0_i_16_n_0\
    );
\tick3_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(29),
      I1 => frame_cnt_target(28),
      I2 => frame_cnt_target(29),
      I3 => \^frame_cnt\(28),
      O => \tick3_carry__0_i_2_n_0\
    );
\tick3_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(27),
      I1 => frame_cnt_target(26),
      I2 => frame_cnt_target(27),
      I3 => \^frame_cnt\(26),
      O => \tick3_carry__0_i_3_n_0\
    );
\tick3_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(25),
      I1 => frame_cnt_target(24),
      I2 => frame_cnt_target(25),
      I3 => \^frame_cnt\(24),
      O => \tick3_carry__0_i_4_n_0\
    );
\tick3_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(23),
      I1 => frame_cnt_target(22),
      I2 => frame_cnt_target(23),
      I3 => \^frame_cnt\(22),
      O => \tick3_carry__0_i_5_n_0\
    );
\tick3_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(21),
      I1 => frame_cnt_target(20),
      I2 => frame_cnt_target(21),
      I3 => \^frame_cnt\(20),
      O => \tick3_carry__0_i_6_n_0\
    );
\tick3_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(19),
      I1 => frame_cnt_target(18),
      I2 => frame_cnt_target(19),
      I3 => \^frame_cnt\(18),
      O => \tick3_carry__0_i_7_n_0\
    );
\tick3_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(17),
      I1 => frame_cnt_target(16),
      I2 => frame_cnt_target(17),
      I3 => \^frame_cnt\(16),
      O => \tick3_carry__0_i_8_n_0\
    );
\tick3_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(31),
      I1 => \^frame_cnt\(31),
      I2 => frame_cnt_target(30),
      I3 => \^frame_cnt\(30),
      O => \tick3_carry__0_i_9_n_0\
    );
tick3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(15),
      I1 => frame_cnt_target(14),
      I2 => frame_cnt_target(15),
      I3 => \^frame_cnt\(14),
      O => tick3_carry_i_1_n_0
    );
tick3_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(13),
      I1 => \^frame_cnt\(13),
      I2 => frame_cnt_target(12),
      I3 => \^frame_cnt\(12),
      O => tick3_carry_i_10_n_0
    );
tick3_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(11),
      I1 => \^frame_cnt\(11),
      I2 => frame_cnt_target(10),
      I3 => \^frame_cnt\(10),
      O => tick3_carry_i_11_n_0
    );
tick3_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(9),
      I1 => \^frame_cnt\(9),
      I2 => frame_cnt_target(8),
      I3 => \^frame_cnt\(8),
      O => tick3_carry_i_12_n_0
    );
tick3_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(7),
      I1 => \^frame_cnt\(7),
      I2 => frame_cnt_target(6),
      I3 => \^frame_cnt\(6),
      O => tick3_carry_i_13_n_0
    );
tick3_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(5),
      I1 => \^frame_cnt\(5),
      I2 => frame_cnt_target(4),
      I3 => \^frame_cnt\(4),
      O => tick3_carry_i_14_n_0
    );
tick3_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(3),
      I1 => \^frame_cnt\(3),
      I2 => frame_cnt_target(2),
      I3 => \^frame_cnt\(2),
      O => tick3_carry_i_15_n_0
    );
tick3_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(1),
      I1 => \^frame_cnt\(1),
      I2 => frame_cnt_target(0),
      I3 => \^frame_cnt\(0),
      O => tick3_carry_i_16_n_0
    );
tick3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(13),
      I1 => frame_cnt_target(12),
      I2 => frame_cnt_target(13),
      I3 => \^frame_cnt\(12),
      O => tick3_carry_i_2_n_0
    );
tick3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(11),
      I1 => frame_cnt_target(10),
      I2 => frame_cnt_target(11),
      I3 => \^frame_cnt\(10),
      O => tick3_carry_i_3_n_0
    );
tick3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(9),
      I1 => frame_cnt_target(8),
      I2 => frame_cnt_target(9),
      I3 => \^frame_cnt\(8),
      O => tick3_carry_i_4_n_0
    );
tick3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(7),
      I1 => frame_cnt_target(6),
      I2 => frame_cnt_target(7),
      I3 => \^frame_cnt\(6),
      O => tick3_carry_i_5_n_0
    );
tick3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(5),
      I1 => frame_cnt_target(4),
      I2 => frame_cnt_target(5),
      I3 => \^frame_cnt\(4),
      O => tick3_carry_i_6_n_0
    );
tick3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(3),
      I1 => frame_cnt_target(2),
      I2 => frame_cnt_target(3),
      I3 => \^frame_cnt\(2),
      O => tick3_carry_i_7_n_0
    );
tick3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^frame_cnt\(1),
      I1 => frame_cnt_target(0),
      I2 => frame_cnt_target(1),
      I3 => \^frame_cnt\(0),
      O => tick3_carry_i_8_n_0
    );
tick3_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(15),
      I1 => \^frame_cnt\(15),
      I2 => frame_cnt_target(14),
      I3 => \^frame_cnt\(14),
      O => tick3_carry_i_9_n_0
    );
\tick[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tick(0),
      O => tick_0(0)
    );
\tick[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(10),
      O => tick_0(10)
    );
\tick[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(11),
      O => tick_0(11)
    );
\tick[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(12),
      O => tick_0(12)
    );
\tick[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(13),
      O => tick_0(13)
    );
\tick[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(14),
      O => tick_0(14)
    );
\tick[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(15),
      O => tick_0(15)
    );
\tick[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(16),
      O => tick_0(16)
    );
\tick[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(17),
      O => tick_0(17)
    );
\tick[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(18),
      O => tick_0(18)
    );
\tick[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(19),
      O => tick_0(19)
    );
\tick[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(1),
      O => tick_0(1)
    );
\tick[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(20),
      O => tick_0(20)
    );
\tick[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(21),
      O => tick_0(21)
    );
\tick[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(22),
      O => tick_0(22)
    );
\tick[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(23),
      O => tick_0(23)
    );
\tick[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(24),
      O => tick_0(24)
    );
\tick[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(25),
      O => tick_0(25)
    );
\tick[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(26),
      O => tick_0(26)
    );
\tick[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(27),
      O => tick_0(27)
    );
\tick[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(28),
      O => tick_0(28)
    );
\tick[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(29),
      O => tick_0(29)
    );
\tick[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(2),
      O => tick_0(2)
    );
\tick[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(30),
      O => tick_0(30)
    );
\tick[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => cap_enable,
      I1 => \^cap_status_reg_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      O => \tick[31]_i_1_n_0\
    );
\tick[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(31),
      O => tick_0(31)
    );
\tick[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(3),
      O => tick_0(3)
    );
\tick[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(4),
      O => tick_0(4)
    );
\tick[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(5),
      O => tick_0(5)
    );
\tick[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(6),
      O => tick_0(6)
    );
\tick[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(7),
      O => tick_0(7)
    );
\tick[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(8),
      O => tick_0(8)
    );
\tick[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => data0(9),
      O => tick_0(9)
    );
\tick_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(0),
      Q => tick(0),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(10),
      Q => tick(10),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(11),
      Q => tick(11),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(12),
      Q => tick(12),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(13),
      Q => tick(13),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(14),
      Q => tick(14),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(15),
      Q => tick(15),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(16),
      Q => tick(16),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \tick_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \tick_reg[16]_i_2_n_0\,
      CO(6) => \tick_reg[16]_i_2_n_1\,
      CO(5) => \tick_reg[16]_i_2_n_2\,
      CO(4) => \tick_reg[16]_i_2_n_3\,
      CO(3) => \tick_reg[16]_i_2_n_4\,
      CO(2) => \tick_reg[16]_i_2_n_5\,
      CO(1) => \tick_reg[16]_i_2_n_6\,
      CO(0) => \tick_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(16 downto 9),
      S(7 downto 0) => tick(16 downto 9)
    );
\tick_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(17),
      Q => tick(17),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(18),
      Q => tick(18),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(19),
      Q => tick(19),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(1),
      Q => tick(1),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(20),
      Q => tick(20),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(21),
      Q => tick(21),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(22),
      Q => tick(22),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(23),
      Q => tick(23),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(24),
      Q => tick(24),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \tick_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \tick_reg[24]_i_2_n_0\,
      CO(6) => \tick_reg[24]_i_2_n_1\,
      CO(5) => \tick_reg[24]_i_2_n_2\,
      CO(4) => \tick_reg[24]_i_2_n_3\,
      CO(3) => \tick_reg[24]_i_2_n_4\,
      CO(2) => \tick_reg[24]_i_2_n_5\,
      CO(1) => \tick_reg[24]_i_2_n_6\,
      CO(0) => \tick_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(24 downto 17),
      S(7 downto 0) => tick(24 downto 17)
    );
\tick_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(25),
      Q => tick(25),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(26),
      Q => tick(26),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(27),
      Q => tick(27),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(28),
      Q => tick(28),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(29),
      Q => tick(29),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(2),
      Q => tick(2),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(30),
      Q => tick(30),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(31),
      Q => tick(31),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \tick_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_tick_reg[31]_i_3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \tick_reg[31]_i_3_n_2\,
      CO(4) => \tick_reg[31]_i_3_n_3\,
      CO(3) => \tick_reg[31]_i_3_n_4\,
      CO(2) => \tick_reg[31]_i_3_n_5\,
      CO(1) => \tick_reg[31]_i_3_n_6\,
      CO(0) => \tick_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_tick_reg[31]_i_3_O_UNCONNECTED\(7),
      O(6 downto 0) => data0(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => tick(31 downto 25)
    );
\tick_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(3),
      Q => tick(3),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(4),
      Q => tick(4),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(5),
      Q => tick(5),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(6),
      Q => tick(6),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(7),
      Q => tick(7),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(8),
      Q => tick(8),
      R => \frame_cnt[31]_i_1_n_0\
    );
\tick_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => tick(0),
      CI_TOP => '0',
      CO(7) => \tick_reg[8]_i_2_n_0\,
      CO(6) => \tick_reg[8]_i_2_n_1\,
      CO(5) => \tick_reg[8]_i_2_n_2\,
      CO(4) => \tick_reg[8]_i_2_n_3\,
      CO(3) => \tick_reg[8]_i_2_n_4\,
      CO(2) => \tick_reg[8]_i_2_n_5\,
      CO(1) => \tick_reg[8]_i_2_n_6\,
      CO(0) => \tick_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(8 downto 1),
      S(7 downto 0) => tick(8 downto 1)
    );
\tick_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tick[31]_i_1_n_0\,
      D => tick_0(9),
      Q => tick(9),
      R => \frame_cnt[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_capture_test1_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    cap_enable : in STD_LOGIC;
    frame_cnt_target : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cap_status : out STD_LOGIC;
    frame_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zusys_capture_test1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_capture_test1_0_0 : entity is "zusys_capture_test1_0_0,capture_test1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zusys_capture_test1_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zusys_capture_test1_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zusys_capture_test1_0_0 : entity is "capture_test1,Vivado 2024.2";
end zusys_capture_test1_0_0;

architecture STRUCTURE of zusys_capture_test1_0_0 is
  attribute X_INTERFACE_IGNORE : string;
  attribute X_INTERFACE_IGNORE of cap_enable : signal is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_MODE of rstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.zusys_capture_test1_0_0_capture_test1
     port map (
      cap_enable => cap_enable,
      cap_status_reg_0 => cap_status,
      clk => clk,
      frame_cnt(31 downto 0) => frame_cnt(31 downto 0),
      frame_cnt_target(31 downto 0) => frame_cnt_target(31 downto 0),
      rstn => rstn
    );
end STRUCTURE;
