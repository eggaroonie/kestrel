-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Sep 25 16:30:07 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jackson/projects/test1/project_1/project_1.gen/sources_1/bd/zusys/ip/zusys_p2_blink_ps_0_0/zusys_p2_blink_ps_0_0_sim_netlist.vhdl
-- Design      : zusys_p2_blink_ps_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_p2_blink_ps_0_0_p2_blink_ps is
  port (
    blink_to_ps : out STD_LOGIC;
    p2_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zusys_p2_blink_ps_0_0_p2_blink_ps : entity is "p2_blink_ps";
end zusys_p2_blink_ps_0_0_p2_blink_ps;

architecture STRUCTURE of zusys_p2_blink_ps_0_0_p2_blink_ps is
  signal \^blink_to_ps\ : STD_LOGIC;
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \cnt_reg[26]_i_1_n_13\ : STD_LOGIC;
  signal \cnt_reg[26]_i_1_n_14\ : STD_LOGIC;
  signal \cnt_reg[26]_i_1_n_15\ : STD_LOGIC;
  signal \cnt_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_cnt_reg[26]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_cnt_reg[26]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \cnt_reg[26]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 16;
begin
  blink_to_ps <= \^blink_to_ps\;
\cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_15\,
      Q => \cnt_reg_n_0_[0]\,
      R => '0'
    );
\cnt_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \cnt_reg[0]_i_1_n_0\,
      CO(6) => \cnt_reg[0]_i_1_n_1\,
      CO(5) => \cnt_reg[0]_i_1_n_2\,
      CO(4) => \cnt_reg[0]_i_1_n_3\,
      CO(3) => \cnt_reg[0]_i_1_n_4\,
      CO(2) => \cnt_reg[0]_i_1_n_5\,
      CO(1) => \cnt_reg[0]_i_1_n_6\,
      CO(0) => \cnt_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \cnt_reg[0]_i_1_n_8\,
      O(6) => \cnt_reg[0]_i_1_n_9\,
      O(5) => \cnt_reg[0]_i_1_n_10\,
      O(4) => \cnt_reg[0]_i_1_n_11\,
      O(3) => \cnt_reg[0]_i_1_n_12\,
      O(2) => \cnt_reg[0]_i_1_n_13\,
      O(1) => \cnt_reg[0]_i_1_n_14\,
      O(0) => \cnt_reg[0]_i_1_n_15\,
      S(7) => \cnt_reg_n_0_[7]\,
      S(6) => \cnt_reg_n_0_[6]\,
      S(5) => \cnt_reg_n_0_[5]\,
      S(4) => \cnt_reg_n_0_[4]\,
      S(3) => \cnt_reg_n_0_[3]\,
      S(2) => \cnt_reg_n_0_[2]\,
      S(1) => \cnt_reg_n_0_[1]\,
      S(0) => \cnt[0]_i_2_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_13\,
      Q => \cnt_reg_n_0_[10]\,
      R => '0'
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_12\,
      Q => \cnt_reg_n_0_[11]\,
      R => '0'
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_11\,
      Q => \cnt_reg_n_0_[12]\,
      R => '0'
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_10\,
      Q => \cnt_reg_n_0_[13]\,
      R => '0'
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_9\,
      Q => \cnt_reg_n_0_[14]\,
      R => '0'
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_8\,
      Q => \cnt_reg_n_0_[15]\,
      R => '0'
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_15\,
      Q => \cnt_reg_n_0_[16]\,
      R => '0'
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \cnt_reg[16]_i_1_n_0\,
      CO(6) => \cnt_reg[16]_i_1_n_1\,
      CO(5) => \cnt_reg[16]_i_1_n_2\,
      CO(4) => \cnt_reg[16]_i_1_n_3\,
      CO(3) => \cnt_reg[16]_i_1_n_4\,
      CO(2) => \cnt_reg[16]_i_1_n_5\,
      CO(1) => \cnt_reg[16]_i_1_n_6\,
      CO(0) => \cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \cnt_reg[16]_i_1_n_8\,
      O(6) => \cnt_reg[16]_i_1_n_9\,
      O(5) => \cnt_reg[16]_i_1_n_10\,
      O(4) => \cnt_reg[16]_i_1_n_11\,
      O(3) => \cnt_reg[16]_i_1_n_12\,
      O(2) => \cnt_reg[16]_i_1_n_13\,
      O(1) => \cnt_reg[16]_i_1_n_14\,
      O(0) => \cnt_reg[16]_i_1_n_15\,
      S(7) => \cnt_reg_n_0_[23]\,
      S(6) => \cnt_reg_n_0_[22]\,
      S(5) => \cnt_reg_n_0_[21]\,
      S(4) => \cnt_reg_n_0_[20]\,
      S(3) => \cnt_reg_n_0_[19]\,
      S(2) => \cnt_reg_n_0_[18]\,
      S(1) => \cnt_reg_n_0_[17]\,
      S(0) => \cnt_reg_n_0_[16]\
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_14\,
      Q => \cnt_reg_n_0_[17]\,
      R => '0'
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_13\,
      Q => \cnt_reg_n_0_[18]\,
      R => '0'
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_12\,
      Q => \cnt_reg_n_0_[19]\,
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_14\,
      Q => \cnt_reg_n_0_[1]\,
      R => '0'
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_11\,
      Q => \cnt_reg_n_0_[20]\,
      R => '0'
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_10\,
      Q => \cnt_reg_n_0_[21]\,
      R => '0'
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_9\,
      Q => \cnt_reg_n_0_[22]\,
      R => '0'
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_8\,
      Q => \cnt_reg_n_0_[23]\,
      R => '0'
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[26]_i_1_n_15\,
      Q => \cnt_reg_n_0_[24]\,
      R => '0'
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[26]_i_1_n_14\,
      Q => \cnt_reg_n_0_[25]\,
      R => '0'
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[26]_i_1_n_13\,
      Q => \^blink_to_ps\,
      R => '0'
    );
\cnt_reg[26]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \cnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_cnt_reg[26]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \cnt_reg[26]_i_1_n_6\,
      CO(0) => \cnt_reg[26]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_cnt_reg[26]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2) => \cnt_reg[26]_i_1_n_13\,
      O(1) => \cnt_reg[26]_i_1_n_14\,
      O(0) => \cnt_reg[26]_i_1_n_15\,
      S(7 downto 3) => B"00000",
      S(2) => \^blink_to_ps\,
      S(1) => \cnt_reg_n_0_[25]\,
      S(0) => \cnt_reg_n_0_[24]\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_13\,
      Q => \cnt_reg_n_0_[2]\,
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_12\,
      Q => \cnt_reg_n_0_[3]\,
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_11\,
      Q => \cnt_reg_n_0_[4]\,
      R => '0'
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_10\,
      Q => \cnt_reg_n_0_[5]\,
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_9\,
      Q => \cnt_reg_n_0_[6]\,
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[0]_i_1_n_8\,
      Q => \cnt_reg_n_0_[7]\,
      R => '0'
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_15\,
      Q => \cnt_reg_n_0_[8]\,
      R => '0'
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \cnt_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \cnt_reg[8]_i_1_n_0\,
      CO(6) => \cnt_reg[8]_i_1_n_1\,
      CO(5) => \cnt_reg[8]_i_1_n_2\,
      CO(4) => \cnt_reg[8]_i_1_n_3\,
      CO(3) => \cnt_reg[8]_i_1_n_4\,
      CO(2) => \cnt_reg[8]_i_1_n_5\,
      CO(1) => \cnt_reg[8]_i_1_n_6\,
      CO(0) => \cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \cnt_reg[8]_i_1_n_8\,
      O(6) => \cnt_reg[8]_i_1_n_9\,
      O(5) => \cnt_reg[8]_i_1_n_10\,
      O(4) => \cnt_reg[8]_i_1_n_11\,
      O(3) => \cnt_reg[8]_i_1_n_12\,
      O(2) => \cnt_reg[8]_i_1_n_13\,
      O(1) => \cnt_reg[8]_i_1_n_14\,
      O(0) => \cnt_reg[8]_i_1_n_15\,
      S(7) => \cnt_reg_n_0_[15]\,
      S(6) => \cnt_reg_n_0_[14]\,
      S(5) => \cnt_reg_n_0_[13]\,
      S(4) => \cnt_reg_n_0_[12]\,
      S(3) => \cnt_reg_n_0_[11]\,
      S(2) => \cnt_reg_n_0_[10]\,
      S(1) => \cnt_reg_n_0_[9]\,
      S(0) => \cnt_reg_n_0_[8]\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p2_clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_14\,
      Q => \cnt_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_p2_blink_ps_0_0 is
  port (
    p2_clk : in STD_LOGIC;
    ex_io5 : out STD_LOGIC;
    dir4 : out STD_LOGIC;
    dir_unused : out STD_LOGIC_VECTOR ( 2 downto 0 );
    blink_to_ps : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zusys_p2_blink_ps_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_p2_blink_ps_0_0 : entity is "zusys_p2_blink_ps_0_0,p2_blink_ps,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zusys_p2_blink_ps_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zusys_p2_blink_ps_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zusys_p2_blink_ps_0_0 : entity is "p2_blink_ps,Vivado 2024.2";
end zusys_p2_blink_ps_0_0;

architecture STRUCTURE of zusys_p2_blink_ps_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^blink_to_ps\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of p2_clk : signal is "xilinx.com:signal:clock:1.0 p2_clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of p2_clk : signal is "slave p2_clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of p2_clk : signal is "FREQ_HZ 100000000";
begin
  blink_to_ps <= \^blink_to_ps\;
  dir4 <= \<const1>\;
  dir_unused(2) <= \<const0>\;
  dir_unused(1) <= \<const0>\;
  dir_unused(0) <= \<const0>\;
  ex_io5 <= \^blink_to_ps\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.zusys_p2_blink_ps_0_0_p2_blink_ps
     port map (
      blink_to_ps => \^blink_to_ps\,
      p2_clk => p2_clk
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
