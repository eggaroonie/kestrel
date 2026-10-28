-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed Oct 28 14:13:40 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jackson/projects/kestrel/SW_Dev/KestrelDev_V_0_1/KestrelDev_V_0_1.gen/sources_1/bd/zusys/ip/zusys_dummy_AISC110C_0_0/zusys_dummy_AISC110C_0_0_sim_netlist.vhdl
-- Design      : zusys_dummy_AISC110C_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_dummy_AISC110C_0_0_dummy_AISC110C is
  port (
    m_mux0_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_mux1_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_mux2_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_mux3_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    mux_data_valid_o : out STD_LOGIC;
    rstn : in STD_LOGIC;
    cap_enable : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    dummy_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zusys_dummy_AISC110C_0_0_dummy_AISC110C : entity is "dummy_AISC110C";
end zusys_dummy_AISC110C_0_0_dummy_AISC110C;

architecture STRUCTURE of zusys_dummy_AISC110C_0_0_dummy_AISC110C is
  signal \clk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cnt[11]_i_3_n_0\ : STD_LOGIC;
  signal \clk_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \clk_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \clk_cnt[11]_i_6_n_0\ : STD_LOGIC;
  signal \clk_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal clk_cnt_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \data_beat__7\ : STD_LOGIC;
  signal gpio10_in : STD_LOGIC;
  signal \gpio1__6\ : STD_LOGIC;
  signal \gpio[0]_i_1_n_0\ : STD_LOGIC;
  signal \gpio[0]_i_4_n_0\ : STD_LOGIC;
  signal \m_mux1_data_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux1_data_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux1_data_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux1_data_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux1_data_o[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux1_data_o[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux1_data_o[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux1_data_o[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux2_data_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux2_data_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux2_data_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux2_data_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux2_data_o[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux2_data_o[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux2_data_o[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux2_data_o[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux3_data_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux3_data_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux3_data_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux3_data_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux3_data_o[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux3_data_o[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux3_data_o[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_mux3_data_o[7]_i_1_n_0\ : STD_LOGIC;
  signal mux_data_valid_o_i_1_n_0 : STD_LOGIC;
  signal mux_data_valid_o_i_3_n_0 : STD_LOGIC;
  signal mux_data_valid_o_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal running : STD_LOGIC;
  signal \word_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \word_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \word_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal word_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \clk_cnt[11]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \clk_cnt[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \clk_cnt[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \clk_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_cnt[6]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \clk_cnt[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \clk_cnt[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_cnt[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gpio[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gpio[0]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gpio[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_mux0_data_o[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_mux0_data_o[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_mux0_data_o[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_mux0_data_o[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_mux0_data_o[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_mux0_data_o[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_mux0_data_o[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_mux0_data_o[7]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_mux1_data_o[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_mux1_data_o[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_mux1_data_o[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_mux1_data_o[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_mux1_data_o[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_mux1_data_o[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_mux1_data_o[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_mux1_data_o[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_mux2_data_o[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_mux2_data_o[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_mux2_data_o[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_mux2_data_o[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_mux2_data_o[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_mux2_data_o[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_mux2_data_o[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_mux2_data_o[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_mux3_data_o[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_mux3_data_o[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_mux3_data_o[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_mux3_data_o[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_mux3_data_o[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_mux3_data_o[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_mux3_data_o[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_mux3_data_o[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of mux_data_valid_o_i_4 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \word_cnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \word_cnt[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \word_cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \word_cnt[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \word_cnt[4]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \word_cnt[4]_i_4\ : label is "soft_lutpair3";
begin
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cnt_reg(0),
      O => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => clk_cnt_reg(8),
      I1 => clk_cnt_reg(6),
      I2 => \clk_cnt[10]_i_2_n_0\,
      I3 => clk_cnt_reg(7),
      I4 => clk_cnt_reg(9),
      I5 => clk_cnt_reg(10),
      O => \clk_cnt[10]_i_1_n_0\
    );
\clk_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => clk_cnt_reg(5),
      I1 => clk_cnt_reg(3),
      I2 => clk_cnt_reg(1),
      I3 => clk_cnt_reg(0),
      I4 => clk_cnt_reg(2),
      I5 => clk_cnt_reg(4),
      O => \clk_cnt[10]_i_2_n_0\
    );
\clk_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => \clk_cnt[11]_i_3_n_0\,
      I1 => \clk_cnt[11]_i_4_n_0\,
      I2 => clk_cnt_reg(6),
      I3 => clk_cnt_reg(10),
      I4 => clk_cnt_reg(11),
      I5 => clk_cnt_reg(9),
      O => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => clk_cnt_reg(9),
      I1 => clk_cnt_reg(7),
      I2 => \clk_cnt[11]_i_5_n_0\,
      I3 => clk_cnt_reg(8),
      I4 => clk_cnt_reg(10),
      I5 => clk_cnt_reg(11),
      O => \clk_cnt[11]_i_2_n_0\
    );
\clk_cnt[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rstn,
      I1 => cap_enable,
      I2 => running,
      O => \clk_cnt[11]_i_3_n_0\
    );
\clk_cnt[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFF"
    )
        port map (
      I0 => \clk_cnt[11]_i_6_n_0\,
      I1 => clk_cnt_reg(5),
      I2 => clk_cnt_reg(4),
      I3 => \clk_cnt[6]_i_2_n_0\,
      I4 => clk_cnt_reg(3),
      I5 => clk_cnt_reg(2),
      O => \clk_cnt[11]_i_4_n_0\
    );
\clk_cnt[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => clk_cnt_reg(6),
      I1 => clk_cnt_reg(4),
      I2 => clk_cnt_reg(2),
      I3 => \clk_cnt[6]_i_2_n_0\,
      I4 => clk_cnt_reg(3),
      I5 => clk_cnt_reg(5),
      O => \clk_cnt[11]_i_5_n_0\
    );
\clk_cnt[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk_cnt_reg(7),
      I1 => clk_cnt_reg(8),
      O => \clk_cnt[11]_i_6_n_0\
    );
\clk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_cnt_reg(0),
      I1 => clk_cnt_reg(1),
      O => \clk_cnt[1]_i_1_n_0\
    );
\clk_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_cnt_reg(0),
      I1 => clk_cnt_reg(1),
      I2 => clk_cnt_reg(2),
      O => \clk_cnt[2]_i_1_n_0\
    );
\clk_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_cnt_reg(1),
      I1 => clk_cnt_reg(0),
      I2 => clk_cnt_reg(2),
      I3 => clk_cnt_reg(3),
      O => \clk_cnt[3]_i_1_n_0\
    );
\clk_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => clk_cnt_reg(2),
      I1 => clk_cnt_reg(0),
      I2 => clk_cnt_reg(1),
      I3 => clk_cnt_reg(3),
      I4 => clk_cnt_reg(4),
      O => \clk_cnt[4]_i_1_n_0\
    );
\clk_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => clk_cnt_reg(3),
      I1 => clk_cnt_reg(1),
      I2 => clk_cnt_reg(0),
      I3 => clk_cnt_reg(2),
      I4 => clk_cnt_reg(4),
      I5 => clk_cnt_reg(5),
      O => \clk_cnt[5]_i_1_n_0\
    );
\clk_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => clk_cnt_reg(4),
      I1 => clk_cnt_reg(2),
      I2 => \clk_cnt[6]_i_2_n_0\,
      I3 => clk_cnt_reg(3),
      I4 => clk_cnt_reg(5),
      I5 => clk_cnt_reg(6),
      O => \clk_cnt[6]_i_1_n_0\
    );
\clk_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => clk_cnt_reg(1),
      I1 => clk_cnt_reg(0),
      O => \clk_cnt[6]_i_2_n_0\
    );
\clk_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_cnt[10]_i_2_n_0\,
      I1 => clk_cnt_reg(6),
      I2 => clk_cnt_reg(7),
      O => \clk_cnt[7]_i_1_n_0\
    );
\clk_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_cnt_reg(6),
      I1 => \clk_cnt[10]_i_2_n_0\,
      I2 => clk_cnt_reg(7),
      I3 => clk_cnt_reg(8),
      O => \clk_cnt[8]_i_1_n_0\
    );
\clk_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => clk_cnt_reg(7),
      I1 => \clk_cnt[10]_i_2_n_0\,
      I2 => clk_cnt_reg(6),
      I3 => clk_cnt_reg(8),
      I4 => clk_cnt_reg(9),
      O => \clk_cnt[9]_i_1_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[0]_i_1_n_0\,
      Q => clk_cnt_reg(0),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[10]_i_1_n_0\,
      Q => clk_cnt_reg(10),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[11]_i_2_n_0\,
      Q => clk_cnt_reg(11),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[1]_i_1_n_0\,
      Q => clk_cnt_reg(1),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[2]_i_1_n_0\,
      Q => clk_cnt_reg(2),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[3]_i_1_n_0\,
      Q => clk_cnt_reg(3),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[4]_i_1_n_0\,
      Q => clk_cnt_reg(4),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[5]_i_1_n_0\,
      Q => clk_cnt_reg(5),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[6]_i_1_n_0\,
      Q => clk_cnt_reg(6),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[7]_i_1_n_0\,
      Q => clk_cnt_reg(7),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[8]_i_1_n_0\,
      Q => clk_cnt_reg(8),
      R => \clk_cnt[11]_i_1_n_0\
    );
\clk_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \clk_cnt[9]_i_1_n_0\,
      Q => clk_cnt_reg(9),
      R => \clk_cnt[11]_i_1_n_0\
    );
\gpio[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \gpio1__6\,
      I1 => gpio10_in,
      I2 => running,
      I3 => cap_enable,
      I4 => rstn,
      O => \gpio[0]_i_1_n_0\
    );
\gpio[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => clk_cnt_reg(9),
      I1 => clk_cnt_reg(10),
      I2 => \gpio[0]_i_4_n_0\,
      I3 => clk_cnt_reg(11),
      O => \gpio1__6\
    );
\gpio[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => word_cnt_reg(3),
      I1 => word_cnt_reg(1),
      I2 => word_cnt_reg(0),
      I3 => word_cnt_reg(4),
      I4 => word_cnt_reg(2),
      O => gpio10_in
    );
\gpio[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFFFFFF"
    )
        port map (
      I0 => clk_cnt_reg(3),
      I1 => clk_cnt_reg(4),
      I2 => clk_cnt_reg(6),
      I3 => clk_cnt_reg(5),
      I4 => clk_cnt_reg(8),
      I5 => clk_cnt_reg(7),
      O => \gpio[0]_i_4_n_0\
    );
\gpio_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \gpio[0]_i_1_n_0\,
      Q => gpio(0),
      R => '0'
    );
\m_mux0_data_o[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(0),
      I3 => \data_beat__7\,
      O => p_1_in(0)
    );
\m_mux0_data_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(1),
      I3 => \data_beat__7\,
      O => p_1_in(1)
    );
\m_mux0_data_o[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(2),
      I3 => \data_beat__7\,
      O => p_1_in(2)
    );
\m_mux0_data_o[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(3),
      I3 => \data_beat__7\,
      O => p_1_in(3)
    );
\m_mux0_data_o[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(4),
      I3 => \data_beat__7\,
      O => p_1_in(4)
    );
\m_mux0_data_o[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(5),
      I3 => \data_beat__7\,
      O => p_1_in(5)
    );
\m_mux0_data_o[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(6),
      I3 => \data_beat__7\,
      O => p_1_in(6)
    );
\m_mux0_data_o[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => p_0_in
    );
\m_mux0_data_o[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(7),
      I3 => \data_beat__7\,
      O => p_1_in(7)
    );
\m_mux0_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_1_in(0),
      Q => m_mux0_data_o(0),
      R => p_0_in
    );
\m_mux0_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_1_in(1),
      Q => m_mux0_data_o(1),
      R => p_0_in
    );
\m_mux0_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_1_in(2),
      Q => m_mux0_data_o(2),
      R => p_0_in
    );
\m_mux0_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_1_in(3),
      Q => m_mux0_data_o(3),
      R => p_0_in
    );
\m_mux0_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_1_in(4),
      Q => m_mux0_data_o(4),
      R => p_0_in
    );
\m_mux0_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_1_in(5),
      Q => m_mux0_data_o(5),
      R => p_0_in
    );
\m_mux0_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_1_in(6),
      Q => m_mux0_data_o(6),
      R => p_0_in
    );
\m_mux0_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => p_1_in(7),
      Q => m_mux0_data_o(7),
      R => p_0_in
    );
\m_mux1_data_o[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(8),
      I3 => \data_beat__7\,
      O => \m_mux1_data_o[0]_i_1_n_0\
    );
\m_mux1_data_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(9),
      I3 => \data_beat__7\,
      O => \m_mux1_data_o[1]_i_1_n_0\
    );
\m_mux1_data_o[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(10),
      I3 => \data_beat__7\,
      O => \m_mux1_data_o[2]_i_1_n_0\
    );
\m_mux1_data_o[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(11),
      I3 => \data_beat__7\,
      O => \m_mux1_data_o[3]_i_1_n_0\
    );
\m_mux1_data_o[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(12),
      I3 => \data_beat__7\,
      O => \m_mux1_data_o[4]_i_1_n_0\
    );
\m_mux1_data_o[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(13),
      I3 => \data_beat__7\,
      O => \m_mux1_data_o[5]_i_1_n_0\
    );
\m_mux1_data_o[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(14),
      I3 => \data_beat__7\,
      O => \m_mux1_data_o[6]_i_1_n_0\
    );
\m_mux1_data_o[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(15),
      I3 => \data_beat__7\,
      O => \m_mux1_data_o[7]_i_1_n_0\
    );
\m_mux1_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux1_data_o[0]_i_1_n_0\,
      Q => m_mux1_data_o(0),
      R => p_0_in
    );
\m_mux1_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux1_data_o[1]_i_1_n_0\,
      Q => m_mux1_data_o(1),
      R => p_0_in
    );
\m_mux1_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux1_data_o[2]_i_1_n_0\,
      Q => m_mux1_data_o(2),
      R => p_0_in
    );
\m_mux1_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux1_data_o[3]_i_1_n_0\,
      Q => m_mux1_data_o(3),
      R => p_0_in
    );
\m_mux1_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux1_data_o[4]_i_1_n_0\,
      Q => m_mux1_data_o(4),
      R => p_0_in
    );
\m_mux1_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux1_data_o[5]_i_1_n_0\,
      Q => m_mux1_data_o(5),
      R => p_0_in
    );
\m_mux1_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux1_data_o[6]_i_1_n_0\,
      Q => m_mux1_data_o(6),
      R => p_0_in
    );
\m_mux1_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux1_data_o[7]_i_1_n_0\,
      Q => m_mux1_data_o(7),
      R => p_0_in
    );
\m_mux2_data_o[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(16),
      I3 => \data_beat__7\,
      O => \m_mux2_data_o[0]_i_1_n_0\
    );
\m_mux2_data_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(17),
      I3 => \data_beat__7\,
      O => \m_mux2_data_o[1]_i_1_n_0\
    );
\m_mux2_data_o[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(18),
      I3 => \data_beat__7\,
      O => \m_mux2_data_o[2]_i_1_n_0\
    );
\m_mux2_data_o[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(19),
      I3 => \data_beat__7\,
      O => \m_mux2_data_o[3]_i_1_n_0\
    );
\m_mux2_data_o[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(20),
      I3 => \data_beat__7\,
      O => \m_mux2_data_o[4]_i_1_n_0\
    );
\m_mux2_data_o[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(21),
      I3 => \data_beat__7\,
      O => \m_mux2_data_o[5]_i_1_n_0\
    );
\m_mux2_data_o[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(22),
      I3 => \data_beat__7\,
      O => \m_mux2_data_o[6]_i_1_n_0\
    );
\m_mux2_data_o[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(23),
      I3 => \data_beat__7\,
      O => \m_mux2_data_o[7]_i_1_n_0\
    );
\m_mux2_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux2_data_o[0]_i_1_n_0\,
      Q => m_mux2_data_o(0),
      R => p_0_in
    );
\m_mux2_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux2_data_o[1]_i_1_n_0\,
      Q => m_mux2_data_o(1),
      R => p_0_in
    );
\m_mux2_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux2_data_o[2]_i_1_n_0\,
      Q => m_mux2_data_o(2),
      R => p_0_in
    );
\m_mux2_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux2_data_o[3]_i_1_n_0\,
      Q => m_mux2_data_o(3),
      R => p_0_in
    );
\m_mux2_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux2_data_o[4]_i_1_n_0\,
      Q => m_mux2_data_o(4),
      R => p_0_in
    );
\m_mux2_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux2_data_o[5]_i_1_n_0\,
      Q => m_mux2_data_o(5),
      R => p_0_in
    );
\m_mux2_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux2_data_o[6]_i_1_n_0\,
      Q => m_mux2_data_o(6),
      R => p_0_in
    );
\m_mux2_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux2_data_o[7]_i_1_n_0\,
      Q => m_mux2_data_o(7),
      R => p_0_in
    );
\m_mux3_data_o[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(24),
      I3 => \data_beat__7\,
      O => \m_mux3_data_o[0]_i_1_n_0\
    );
\m_mux3_data_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(25),
      I3 => \data_beat__7\,
      O => \m_mux3_data_o[1]_i_1_n_0\
    );
\m_mux3_data_o[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(26),
      I3 => \data_beat__7\,
      O => \m_mux3_data_o[2]_i_1_n_0\
    );
\m_mux3_data_o[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(27),
      I3 => \data_beat__7\,
      O => \m_mux3_data_o[3]_i_1_n_0\
    );
\m_mux3_data_o[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(28),
      I3 => \data_beat__7\,
      O => \m_mux3_data_o[4]_i_1_n_0\
    );
\m_mux3_data_o[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(29),
      I3 => \data_beat__7\,
      O => \m_mux3_data_o[5]_i_1_n_0\
    );
\m_mux3_data_o[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(30),
      I3 => \data_beat__7\,
      O => \m_mux3_data_o[6]_i_1_n_0\
    );
\m_mux3_data_o[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cap_enable,
      I1 => running,
      I2 => dummy_data(31),
      I3 => \data_beat__7\,
      O => \m_mux3_data_o[7]_i_1_n_0\
    );
\m_mux3_data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux3_data_o[0]_i_1_n_0\,
      Q => m_mux3_data_o(0),
      R => p_0_in
    );
\m_mux3_data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux3_data_o[1]_i_1_n_0\,
      Q => m_mux3_data_o(1),
      R => p_0_in
    );
\m_mux3_data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux3_data_o[2]_i_1_n_0\,
      Q => m_mux3_data_o(2),
      R => p_0_in
    );
\m_mux3_data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux3_data_o[3]_i_1_n_0\,
      Q => m_mux3_data_o(3),
      R => p_0_in
    );
\m_mux3_data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux3_data_o[4]_i_1_n_0\,
      Q => m_mux3_data_o(4),
      R => p_0_in
    );
\m_mux3_data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux3_data_o[5]_i_1_n_0\,
      Q => m_mux3_data_o(5),
      R => p_0_in
    );
\m_mux3_data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux3_data_o[6]_i_1_n_0\,
      Q => m_mux3_data_o(6),
      R => p_0_in
    );
\m_mux3_data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \m_mux3_data_o[7]_i_1_n_0\,
      Q => m_mux3_data_o(7),
      R => p_0_in
    );
mux_data_valid_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \data_beat__7\,
      I1 => running,
      I2 => cap_enable,
      I3 => rstn,
      O => mux_data_valid_o_i_1_n_0
    );
mux_data_valid_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0E0E0E0EEE0E"
    )
        port map (
      I0 => mux_data_valid_o_i_3_n_0,
      I1 => mux_data_valid_o_i_4_n_0,
      I2 => clk_cnt_reg(11),
      I3 => \gpio[0]_i_4_n_0\,
      I4 => clk_cnt_reg(10),
      I5 => clk_cnt_reg(9),
      O => \data_beat__7\
    );
mux_data_valid_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEEE"
    )
        port map (
      I0 => clk_cnt_reg(10),
      I1 => clk_cnt_reg(9),
      I2 => clk_cnt_reg(5),
      I3 => clk_cnt_reg(3),
      I4 => clk_cnt_reg(4),
      I5 => clk_cnt_reg(11),
      O => mux_data_valid_o_i_3_n_0
    );
mux_data_valid_o_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => clk_cnt_reg(6),
      I1 => clk_cnt_reg(8),
      I2 => clk_cnt_reg(7),
      O => mux_data_valid_o_i_4_n_0
    );
mux_data_valid_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => mux_data_valid_o_i_1_n_0,
      Q => mux_data_valid_o,
      R => '0'
    );
running_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => cap_enable,
      Q => running,
      R => p_0_in
    );
\word_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => word_cnt_reg(0),
      O => \word_cnt[0]_i_1_n_0\
    );
\word_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => word_cnt_reg(0),
      I1 => word_cnt_reg(1),
      O => \word_cnt[1]_i_1_n_0\
    );
\word_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => word_cnt_reg(0),
      I1 => word_cnt_reg(1),
      I2 => word_cnt_reg(2),
      O => \word_cnt[2]_i_1_n_0\
    );
\word_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => word_cnt_reg(1),
      I1 => word_cnt_reg(0),
      I2 => word_cnt_reg(2),
      I3 => word_cnt_reg(3),
      O => \word_cnt[3]_i_1_n_0\
    );
\word_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1FFFFFFF"
    )
        port map (
      I0 => \word_cnt[4]_i_3_n_0\,
      I1 => \clk_cnt[11]_i_4_n_0\,
      I2 => cap_enable,
      I3 => running,
      I4 => rstn,
      I5 => \word_cnt[4]_i_4_n_0\,
      O => \word_cnt[4]_i_1_n_0\
    );
\word_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => word_cnt_reg(2),
      I1 => word_cnt_reg(0),
      I2 => word_cnt_reg(1),
      I3 => word_cnt_reg(3),
      I4 => word_cnt_reg(4),
      O => \word_cnt[4]_i_2_n_0\
    );
\word_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => clk_cnt_reg(6),
      I1 => clk_cnt_reg(10),
      I2 => clk_cnt_reg(11),
      I3 => clk_cnt_reg(9),
      O => \word_cnt[4]_i_3_n_0\
    );
\word_cnt[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => word_cnt_reg(3),
      I1 => word_cnt_reg(1),
      I2 => word_cnt_reg(0),
      I3 => word_cnt_reg(2),
      I4 => word_cnt_reg(4),
      O => \word_cnt[4]_i_4_n_0\
    );
\word_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \word_cnt[0]_i_1_n_0\,
      Q => word_cnt_reg(0),
      R => \word_cnt[4]_i_1_n_0\
    );
\word_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \word_cnt[1]_i_1_n_0\,
      Q => word_cnt_reg(1),
      R => \word_cnt[4]_i_1_n_0\
    );
\word_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \word_cnt[2]_i_1_n_0\,
      Q => word_cnt_reg(2),
      R => \word_cnt[4]_i_1_n_0\
    );
\word_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \word_cnt[3]_i_1_n_0\,
      Q => word_cnt_reg(3),
      R => \word_cnt[4]_i_1_n_0\
    );
\word_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => \word_cnt[4]_i_2_n_0\,
      Q => word_cnt_reg(4),
      R => \word_cnt[4]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_dummy_AISC110C_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zusys_dummy_AISC110C_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_dummy_AISC110C_0_0 : entity is "zusys_dummy_AISC110C_0_0,dummy_AISC110C,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zusys_dummy_AISC110C_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zusys_dummy_AISC110C_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zusys_dummy_AISC110C_0_0 : entity is "dummy_AISC110C,Vivado 2024.2";
end zusys_dummy_AISC110C_0_0;

architecture STRUCTURE of zusys_dummy_AISC110C_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^clk_in\ : STD_LOGIC;
  signal \^gpio\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of rstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^clk_in\ <= clk_in;
  clk_out <= \^clk_in\;
  gpio(3) <= \<const0>\;
  gpio(2) <= \<const0>\;
  gpio(1) <= \<const0>\;
  gpio(0) <= \^gpio\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.zusys_dummy_AISC110C_0_0_dummy_AISC110C
     port map (
      cap_enable => cap_enable,
      clk_in => \^clk_in\,
      dummy_data(31 downto 0) => dummy_data(31 downto 0),
      gpio(0) => \^gpio\(0),
      m_mux0_data_o(7 downto 0) => m_mux0_data_o(7 downto 0),
      m_mux1_data_o(7 downto 0) => m_mux1_data_o(7 downto 0),
      m_mux2_data_o(7 downto 0) => m_mux2_data_o(7 downto 0),
      m_mux3_data_o(7 downto 0) => m_mux3_data_o(7 downto 0),
      mux_data_valid_o => mux_data_valid_o,
      rstn => rstn
    );
end STRUCTURE;
