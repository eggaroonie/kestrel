-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Sep 25 16:30:05 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jackson/projects/test1/project_1/project_1.gen/sources_1/bd/zusys/ip/zusys_axis_live_audio_0_0/zusys_axis_live_audio_0_0_sim_netlist.vhdl
-- Design      : zusys_axis_live_audio_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_axis_live_audio_0_0_axis_live_audio_v1_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axis_tid : out STD_LOGIC;
    DAC_SDATA : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    ADC_SDATA : in STD_LOGIC;
    BCLK : in STD_LOGIC;
    LRCLK : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zusys_axis_live_audio_0_0_axis_live_audio_v1_0 : entity is "axis_live_audio_v1_0";
end zusys_axis_live_audio_0_0_axis_live_audio_v1_0;

architecture STRUCTURE of zusys_axis_live_audio_0_0_axis_live_audio_v1_0 is
  signal bclk_sr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal left_audio_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal left_audio_data_1 : STD_LOGIC;
  signal \lrclk_sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \lrclk_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \lrclk_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \m_axis_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \receive_data_reg[7]_srl7_n_0\ : STD_LOGIC;
  signal \receive_data_reg_n_0_[0]\ : STD_LOGIC;
  signal right_audio_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal right_audio_data_0 : STD_LOGIC;
  signal transmit_data : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \transmit_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \transmit_data_reg_n_0_[9]\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \receive_data_reg[7]_srl7\ : label is "\U0/receive_data_reg ";
  attribute srl_name : string;
  attribute srl_name of \receive_data_reg[7]_srl7\ : label is "\U0/receive_data_reg[7]_srl7 ";
begin
  m_axis_tdata(25 downto 0) <= \^m_axis_tdata\(25 downto 0);
  m_axis_tvalid <= \^m_axis_tvalid\;
\bclk_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => BCLK,
      Q => bclk_sr(0),
      R => '0'
    );
\bclk_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => bclk_sr(0),
      Q => bclk_sr(1),
      R => '0'
    );
\left_audio_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid,
      O => left_audio_data_1
    );
\left_audio_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(0),
      Q => left_audio_data(0),
      R => '0'
    );
\left_audio_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(10),
      Q => left_audio_data(10),
      R => '0'
    );
\left_audio_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(11),
      Q => left_audio_data(11),
      R => '0'
    );
\left_audio_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(12),
      Q => left_audio_data(12),
      R => '0'
    );
\left_audio_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(13),
      Q => left_audio_data(13),
      R => '0'
    );
\left_audio_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(14),
      Q => left_audio_data(14),
      R => '0'
    );
\left_audio_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(15),
      Q => left_audio_data(15),
      R => '0'
    );
\left_audio_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(16),
      Q => left_audio_data(16),
      R => '0'
    );
\left_audio_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(17),
      Q => left_audio_data(17),
      R => '0'
    );
\left_audio_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(18),
      Q => left_audio_data(18),
      R => '0'
    );
\left_audio_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(19),
      Q => left_audio_data(19),
      R => '0'
    );
\left_audio_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(1),
      Q => left_audio_data(1),
      R => '0'
    );
\left_audio_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(20),
      Q => left_audio_data(20),
      R => '0'
    );
\left_audio_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(21),
      Q => left_audio_data(21),
      R => '0'
    );
\left_audio_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(22),
      Q => left_audio_data(22),
      R => '0'
    );
\left_audio_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(23),
      Q => left_audio_data(23),
      R => '0'
    );
\left_audio_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(2),
      Q => left_audio_data(2),
      R => '0'
    );
\left_audio_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(3),
      Q => left_audio_data(3),
      R => '0'
    );
\left_audio_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(4),
      Q => left_audio_data(4),
      R => '0'
    );
\left_audio_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(5),
      Q => left_audio_data(5),
      R => '0'
    );
\left_audio_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(6),
      Q => left_audio_data(6),
      R => '0'
    );
\left_audio_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(7),
      Q => left_audio_data(7),
      R => '0'
    );
\left_audio_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(8),
      Q => left_audio_data(8),
      R => '0'
    );
\left_audio_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => left_audio_data_1,
      D => s_axis_tdata(9),
      Q => left_audio_data(9),
      R => '0'
    );
\lrclk_sr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bclk_sr(0),
      I1 => bclk_sr(1),
      O => \lrclk_sr[1]_i_1_n_0\
    );
\lrclk_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => LRCLK,
      Q => \lrclk_sr_reg_n_0_[0]\,
      R => '0'
    );
\lrclk_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => \lrclk_sr_reg_n_0_[0]\,
      Q => \lrclk_sr_reg_n_0_[1]\,
      R => '0'
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEEA"
    )
        port map (
      I0 => \^m_axis_tdata\(24),
      I1 => bclk_sr(0),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => LRCLK,
      I4 => bclk_sr(1),
      O => \m_axis_tdata[30]_i_1_n_0\
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => bclk_sr(1),
      I1 => bclk_sr(0),
      I2 => LRCLK,
      I3 => \lrclk_sr_reg_n_0_[0]\,
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_3_n_0\,
      I1 => \m_axis_tdata[31]_i_4_n_0\,
      I2 => \m_axis_tdata[31]_i_5_n_0\,
      I3 => \m_axis_tdata[31]_i_6_n_0\,
      O => p_0_out(31)
    );
\m_axis_tdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_out(4),
      I1 => p_0_out(27),
      I2 => p_0_out(8),
      I3 => p_0_out(7),
      I4 => p_0_out(6),
      I5 => p_0_out(5),
      O => \m_axis_tdata[31]_i_3_n_0\
    );
\m_axis_tdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_out(9),
      I1 => p_0_out(10),
      I2 => p_0_out(14),
      I3 => p_0_out(13),
      I4 => p_0_out(12),
      I5 => p_0_out(11),
      O => \m_axis_tdata[31]_i_4_n_0\
    );
\m_axis_tdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_out(16),
      I1 => p_0_out(15),
      I2 => p_0_out(19),
      I3 => p_0_out(20),
      I4 => p_0_out(17),
      I5 => p_0_out(18),
      O => \m_axis_tdata[31]_i_5_n_0\
    );
\m_axis_tdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_out(22),
      I1 => p_0_out(21),
      I2 => p_0_out(26),
      I3 => p_0_out(25),
      I4 => p_0_out(23),
      I5 => p_0_out(24),
      O => \m_axis_tdata[31]_i_6_n_0\
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(10),
      Q => \^m_axis_tdata\(6),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(11),
      Q => \^m_axis_tdata\(7),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(12),
      Q => \^m_axis_tdata\(8),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(13),
      Q => \^m_axis_tdata\(9),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(14),
      Q => \^m_axis_tdata\(10),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(15),
      Q => \^m_axis_tdata\(11),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(16),
      Q => \^m_axis_tdata\(12),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(17),
      Q => \^m_axis_tdata\(13),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(18),
      Q => \^m_axis_tdata\(14),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(19),
      Q => \^m_axis_tdata\(15),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(20),
      Q => \^m_axis_tdata\(16),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(21),
      Q => \^m_axis_tdata\(17),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(22),
      Q => \^m_axis_tdata\(18),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(23),
      Q => \^m_axis_tdata\(19),
      R => '0'
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(24),
      Q => \^m_axis_tdata\(20),
      R => '0'
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(25),
      Q => \^m_axis_tdata\(21),
      R => '0'
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(26),
      Q => \^m_axis_tdata\(22),
      R => '0'
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(27),
      Q => \^m_axis_tdata\(23),
      R => '0'
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => \m_axis_tdata[30]_i_1_n_0\,
      Q => \^m_axis_tdata\(24),
      R => '0'
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(31),
      Q => \^m_axis_tdata\(25),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(4),
      Q => \^m_axis_tdata\(0),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(5),
      Q => \^m_axis_tdata\(1),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(6),
      Q => \^m_axis_tdata\(2),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(7),
      Q => \^m_axis_tdata\(3),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(8),
      Q => \^m_axis_tdata\(4),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_0_out(9),
      Q => \^m_axis_tdata\(5),
      R => '0'
    );
m_axis_tid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => \lrclk_sr_reg_n_0_[0]\,
      Q => m_axis_tid,
      R => '0'
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BE00"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => \lrclk_sr_reg_n_0_[0]\,
      I2 => LRCLK,
      I3 => bclk_sr(0),
      I4 => bclk_sr(1),
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
\receive_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => ADC_SDATA,
      Q => \receive_data_reg_n_0_[0]\,
      R => '0'
    );
\receive_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(5),
      Q => p_0_out(6),
      R => '0'
    );
\receive_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(6),
      Q => p_0_out(7),
      R => '0'
    );
\receive_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(7),
      Q => p_0_out(8),
      R => '0'
    );
\receive_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(8),
      Q => p_0_out(9),
      R => '0'
    );
\receive_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(9),
      Q => p_0_out(10),
      R => '0'
    );
\receive_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(10),
      Q => p_0_out(11),
      R => '0'
    );
\receive_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(11),
      Q => p_0_out(12),
      R => '0'
    );
\receive_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(12),
      Q => p_0_out(13),
      R => '0'
    );
\receive_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(13),
      Q => p_0_out(14),
      R => '0'
    );
\receive_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(14),
      Q => p_0_out(15),
      R => '0'
    );
\receive_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(15),
      Q => p_0_out(16),
      R => '0'
    );
\receive_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(16),
      Q => p_0_out(17),
      R => '0'
    );
\receive_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(17),
      Q => p_0_out(18),
      R => '0'
    );
\receive_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(18),
      Q => p_0_out(19),
      R => '0'
    );
\receive_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(19),
      Q => p_0_out(20),
      R => '0'
    );
\receive_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(20),
      Q => p_0_out(21),
      R => '0'
    );
\receive_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(21),
      Q => p_0_out(22),
      R => '0'
    );
\receive_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(22),
      Q => p_0_out(23),
      R => '0'
    );
\receive_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(23),
      Q => p_0_out(24),
      R => '0'
    );
\receive_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(24),
      Q => p_0_out(25),
      R => '0'
    );
\receive_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(25),
      Q => p_0_out(26),
      R => '0'
    );
\receive_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(26),
      Q => p_0_out(27),
      R => '0'
    );
\receive_data_reg[7]_srl7\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => \lrclk_sr[1]_i_1_n_0\,
      CLK => axis_aclk,
      D => \receive_data_reg_n_0_[0]\,
      Q => \receive_data_reg[7]_srl7_n_0\
    );
\receive_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => \receive_data_reg[7]_srl7_n_0\,
      Q => p_0_out(4),
      R => '0'
    );
\receive_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => \lrclk_sr[1]_i_1_n_0\,
      D => p_0_out(4),
      Q => p_0_out(5),
      R => '0'
    );
\right_audio_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid,
      O => right_audio_data_0
    );
\right_audio_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(0),
      Q => right_audio_data(0),
      R => '0'
    );
\right_audio_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(10),
      Q => right_audio_data(10),
      R => '0'
    );
\right_audio_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(11),
      Q => right_audio_data(11),
      R => '0'
    );
\right_audio_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(12),
      Q => right_audio_data(12),
      R => '0'
    );
\right_audio_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(13),
      Q => right_audio_data(13),
      R => '0'
    );
\right_audio_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(14),
      Q => right_audio_data(14),
      R => '0'
    );
\right_audio_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(15),
      Q => right_audio_data(15),
      R => '0'
    );
\right_audio_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(16),
      Q => right_audio_data(16),
      R => '0'
    );
\right_audio_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(17),
      Q => right_audio_data(17),
      R => '0'
    );
\right_audio_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(18),
      Q => right_audio_data(18),
      R => '0'
    );
\right_audio_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(19),
      Q => right_audio_data(19),
      R => '0'
    );
\right_audio_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(1),
      Q => right_audio_data(1),
      R => '0'
    );
\right_audio_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(20),
      Q => right_audio_data(20),
      R => '0'
    );
\right_audio_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(21),
      Q => right_audio_data(21),
      R => '0'
    );
\right_audio_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(22),
      Q => right_audio_data(22),
      R => '0'
    );
\right_audio_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(23),
      Q => right_audio_data(23),
      R => '0'
    );
\right_audio_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(2),
      Q => right_audio_data(2),
      R => '0'
    );
\right_audio_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(3),
      Q => right_audio_data(3),
      R => '0'
    );
\right_audio_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(4),
      Q => right_audio_data(4),
      R => '0'
    );
\right_audio_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(5),
      Q => right_audio_data(5),
      R => '0'
    );
\right_audio_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(6),
      Q => right_audio_data(6),
      R => '0'
    );
\right_audio_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(7),
      Q => right_audio_data(7),
      R => '0'
    );
\right_audio_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(8),
      Q => right_audio_data(8),
      R => '0'
    );
\right_audio_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => right_audio_data_0,
      D => s_axis_tdata(9),
      Q => right_audio_data(9),
      R => '0'
    );
\transmit_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(2),
      I1 => left_audio_data(2),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[9]\,
      O => p_1_in(10)
    );
\transmit_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(3),
      I1 => left_audio_data(3),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[10]\,
      O => p_1_in(11)
    );
\transmit_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(4),
      I1 => left_audio_data(4),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[11]\,
      O => p_1_in(12)
    );
\transmit_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(5),
      I1 => left_audio_data(5),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[12]\,
      O => p_1_in(13)
    );
\transmit_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(6),
      I1 => left_audio_data(6),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[13]\,
      O => p_1_in(14)
    );
\transmit_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(7),
      I1 => left_audio_data(7),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[14]\,
      O => p_1_in(15)
    );
\transmit_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(8),
      I1 => left_audio_data(8),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[15]\,
      O => p_1_in(16)
    );
\transmit_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(9),
      I1 => left_audio_data(9),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[16]\,
      O => p_1_in(17)
    );
\transmit_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(10),
      I1 => left_audio_data(10),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[17]\,
      O => p_1_in(18)
    );
\transmit_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(11),
      I1 => left_audio_data(11),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[18]\,
      O => p_1_in(19)
    );
\transmit_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(12),
      I1 => left_audio_data(12),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[19]\,
      O => p_1_in(20)
    );
\transmit_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(13),
      I1 => left_audio_data(13),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[20]\,
      O => p_1_in(21)
    );
\transmit_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(14),
      I1 => left_audio_data(14),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[21]\,
      O => p_1_in(22)
    );
\transmit_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(15),
      I1 => left_audio_data(15),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[22]\,
      O => p_1_in(23)
    );
\transmit_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(16),
      I1 => left_audio_data(16),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[23]\,
      O => p_1_in(24)
    );
\transmit_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(17),
      I1 => left_audio_data(17),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[24]\,
      O => p_1_in(25)
    );
\transmit_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(18),
      I1 => left_audio_data(18),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[25]\,
      O => p_1_in(26)
    );
\transmit_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(19),
      I1 => left_audio_data(19),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[26]\,
      O => p_1_in(27)
    );
\transmit_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(20),
      I1 => left_audio_data(20),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[27]\,
      O => p_1_in(28)
    );
\transmit_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(21),
      I1 => left_audio_data(21),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[28]\,
      O => p_1_in(29)
    );
\transmit_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(22),
      I1 => left_audio_data(22),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[29]\,
      O => p_1_in(30)
    );
\transmit_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bclk_sr(1),
      I1 => bclk_sr(0),
      O => transmit_data(31)
    );
\transmit_data[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(23),
      I1 => left_audio_data(23),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[30]\,
      O => p_1_in(31)
    );
\transmit_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5808"
    )
        port map (
      I0 => \lrclk_sr_reg_n_0_[1]\,
      I1 => left_audio_data(0),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => right_audio_data(0),
      O => p_1_in(8)
    );
\transmit_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => right_audio_data(1),
      I1 => left_audio_data(1),
      I2 => \lrclk_sr_reg_n_0_[0]\,
      I3 => \lrclk_sr_reg_n_0_[1]\,
      I4 => \transmit_data_reg_n_0_[8]\,
      O => p_1_in(9)
    );
\transmit_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(10),
      Q => \transmit_data_reg_n_0_[10]\,
      R => '0'
    );
\transmit_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(11),
      Q => \transmit_data_reg_n_0_[11]\,
      R => '0'
    );
\transmit_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(12),
      Q => \transmit_data_reg_n_0_[12]\,
      R => '0'
    );
\transmit_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(13),
      Q => \transmit_data_reg_n_0_[13]\,
      R => '0'
    );
\transmit_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(14),
      Q => \transmit_data_reg_n_0_[14]\,
      R => '0'
    );
\transmit_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(15),
      Q => \transmit_data_reg_n_0_[15]\,
      R => '0'
    );
\transmit_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(16),
      Q => \transmit_data_reg_n_0_[16]\,
      R => '0'
    );
\transmit_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(17),
      Q => \transmit_data_reg_n_0_[17]\,
      R => '0'
    );
\transmit_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(18),
      Q => \transmit_data_reg_n_0_[18]\,
      R => '0'
    );
\transmit_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(19),
      Q => \transmit_data_reg_n_0_[19]\,
      R => '0'
    );
\transmit_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(20),
      Q => \transmit_data_reg_n_0_[20]\,
      R => '0'
    );
\transmit_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(21),
      Q => \transmit_data_reg_n_0_[21]\,
      R => '0'
    );
\transmit_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(22),
      Q => \transmit_data_reg_n_0_[22]\,
      R => '0'
    );
\transmit_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(23),
      Q => \transmit_data_reg_n_0_[23]\,
      R => '0'
    );
\transmit_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(24),
      Q => \transmit_data_reg_n_0_[24]\,
      R => '0'
    );
\transmit_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(25),
      Q => \transmit_data_reg_n_0_[25]\,
      R => '0'
    );
\transmit_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(26),
      Q => \transmit_data_reg_n_0_[26]\,
      R => '0'
    );
\transmit_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(27),
      Q => \transmit_data_reg_n_0_[27]\,
      R => '0'
    );
\transmit_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(28),
      Q => \transmit_data_reg_n_0_[28]\,
      R => '0'
    );
\transmit_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(29),
      Q => \transmit_data_reg_n_0_[29]\,
      R => '0'
    );
\transmit_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(30),
      Q => \transmit_data_reg_n_0_[30]\,
      R => '0'
    );
\transmit_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(31),
      Q => DAC_SDATA,
      R => '0'
    );
\transmit_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(8),
      Q => \transmit_data_reg_n_0_[8]\,
      R => '0'
    );
\transmit_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => transmit_data(31),
      D => p_1_in(9),
      Q => \transmit_data_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_axis_live_audio_0_0 is
  port (
    axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tid : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    BCLK : in STD_LOGIC;
    LRCLK : in STD_LOGIC;
    DAC_SDATA : out STD_LOGIC;
    ADC_SDATA : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zusys_axis_live_audio_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_axis_live_audio_0_0 : entity is "zusys_axis_live_audio_0_0,axis_live_audio_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zusys_axis_live_audio_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of zusys_axis_live_audio_0_0 : entity is "axis_live_audio_v1_0,Vivado 2024.2";
end zusys_axis_live_audio_0_0;

architecture STRUCTURE of zusys_axis_live_audio_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  attribute x_interface_info : string;
  attribute x_interface_info of ADC_SDATA : signal is "trenz.biz:user:I2S:1.0 I2S SDOUT";
  attribute x_interface_info of BCLK : signal is "trenz.biz:user:I2S:1.0 I2S BCLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of BCLK : signal is "slave I2S";
  attribute x_interface_info of DAC_SDATA : signal is "trenz.biz:user:I2S:1.0 I2S SDIN";
  attribute x_interface_info of LRCLK : signal is "trenz.biz:user:I2S:1.0 I2S LRCLK";
  attribute x_interface_info of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute x_interface_mode of axis_aclk : signal is "slave axis_aclk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axis_aclk : signal is "XIL_INTERFACENAME axis_aclk, ASSOCIATED_BUSIF s_axis:m_axis, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_dp_audio_ref_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_mode of m_axis_tdata : signal is "master m_axis";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_dp_audio_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_mode of s_axis_tdata : signal is "slave s_axis";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_dp_audio_ref_clk, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  m_axis_tdata(31) <= \^m_axis_tdata\(31);
  m_axis_tdata(30) <= \^m_axis_tdata\(28);
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28 downto 4) <= \^m_axis_tdata\(28 downto 4);
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \^m_axis_tdata\(28);
  m_axis_tdata(0) <= \<const0>\;
  s_axis_tready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.zusys_axis_live_audio_0_0_axis_live_audio_v1_0
     port map (
      ADC_SDATA => ADC_SDATA,
      BCLK => BCLK,
      DAC_SDATA => DAC_SDATA,
      LRCLK => LRCLK,
      axis_aclk => axis_aclk,
      m_axis_tdata(25) => \^m_axis_tdata\(31),
      m_axis_tdata(24 downto 0) => \^m_axis_tdata\(28 downto 4),
      m_axis_tid => m_axis_tid,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(27 downto 4),
      s_axis_tid => s_axis_tid,
      s_axis_tvalid => s_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
