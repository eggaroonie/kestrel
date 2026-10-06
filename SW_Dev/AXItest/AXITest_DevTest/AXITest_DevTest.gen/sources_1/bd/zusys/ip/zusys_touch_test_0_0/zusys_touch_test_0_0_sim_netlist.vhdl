-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Oct  3 15:02:54 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jackson/projects/Kestrel/AXItest/AXITest/AXITest.gen/sources_1/bd/zusys/ip/zusys_touch_test_0_0/zusys_touch_test_0_0_sim_netlist.vhdl
-- Design      : zusys_touch_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_touch_test_0_0_touch_test is
  port (
    touch_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    touch_received : out STD_LOGIC;
    clk : in STD_LOGIC;
    touch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_ready : in STD_LOGIC;
    rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zusys_touch_test_0_0_touch_test : entity is "touch_test";
end zusys_touch_test_0_0_touch_test;

architecture STRUCTURE of zusys_touch_test_0_0_touch_test is
  signal clear : STD_LOGIC;
  signal \^touch_cnt\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \touch_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \touch_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \touch_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \touch_cnt_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \touch_cnt_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_10\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_11\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_12\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_13\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_14\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_15\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_8\ : STD_LOGIC;
  signal \touch_cnt_reg[31]_i_3_n_9\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \touch_cnt_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal \^touch_received\ : STD_LOGIC;
  signal touch_received_i_1_n_0 : STD_LOGIC;
  signal \NLW_touch_cnt_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \touch_cnt_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \touch_cnt_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \touch_cnt_reg[31]_i_3\ : label is 16;
  attribute ADDER_THRESHOLD of \touch_cnt_reg[7]_i_1\ : label is 16;
begin
  touch_cnt(31 downto 0) <= \^touch_cnt\(31 downto 0);
  touch_received <= \^touch_received\;
\touch_cnt[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => clear
    );
\touch_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^touch_received\,
      I1 => data_ready,
      O => \touch_cnt[31]_i_2_n_0\
    );
\touch_cnt[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => touch(1),
      I1 => \^touch_cnt\(1),
      O => \touch_cnt[7]_i_2_n_0\
    );
\touch_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => touch(0),
      I1 => \^touch_cnt\(0),
      O => \touch_cnt[7]_i_3_n_0\
    );
\touch_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[7]_i_1_n_15\,
      Q => \^touch_cnt\(0),
      R => clear
    );
\touch_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[15]_i_1_n_13\,
      Q => \^touch_cnt\(10),
      R => clear
    );
\touch_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[15]_i_1_n_12\,
      Q => \^touch_cnt\(11),
      R => clear
    );
\touch_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[15]_i_1_n_11\,
      Q => \^touch_cnt\(12),
      R => clear
    );
\touch_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[15]_i_1_n_10\,
      Q => \^touch_cnt\(13),
      R => clear
    );
\touch_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[15]_i_1_n_9\,
      Q => \^touch_cnt\(14),
      R => clear
    );
\touch_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[15]_i_1_n_8\,
      Q => \^touch_cnt\(15),
      R => clear
    );
\touch_cnt_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \touch_cnt_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \touch_cnt_reg[15]_i_1_n_0\,
      CO(6) => \touch_cnt_reg[15]_i_1_n_1\,
      CO(5) => \touch_cnt_reg[15]_i_1_n_2\,
      CO(4) => \touch_cnt_reg[15]_i_1_n_3\,
      CO(3) => \touch_cnt_reg[15]_i_1_n_4\,
      CO(2) => \touch_cnt_reg[15]_i_1_n_5\,
      CO(1) => \touch_cnt_reg[15]_i_1_n_6\,
      CO(0) => \touch_cnt_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \touch_cnt_reg[15]_i_1_n_8\,
      O(6) => \touch_cnt_reg[15]_i_1_n_9\,
      O(5) => \touch_cnt_reg[15]_i_1_n_10\,
      O(4) => \touch_cnt_reg[15]_i_1_n_11\,
      O(3) => \touch_cnt_reg[15]_i_1_n_12\,
      O(2) => \touch_cnt_reg[15]_i_1_n_13\,
      O(1) => \touch_cnt_reg[15]_i_1_n_14\,
      O(0) => \touch_cnt_reg[15]_i_1_n_15\,
      S(7 downto 0) => \^touch_cnt\(15 downto 8)
    );
\touch_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[23]_i_1_n_15\,
      Q => \^touch_cnt\(16),
      R => clear
    );
\touch_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[23]_i_1_n_14\,
      Q => \^touch_cnt\(17),
      R => clear
    );
\touch_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[23]_i_1_n_13\,
      Q => \^touch_cnt\(18),
      R => clear
    );
\touch_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[23]_i_1_n_12\,
      Q => \^touch_cnt\(19),
      R => clear
    );
\touch_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[7]_i_1_n_14\,
      Q => \^touch_cnt\(1),
      R => clear
    );
\touch_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[23]_i_1_n_11\,
      Q => \^touch_cnt\(20),
      R => clear
    );
\touch_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[23]_i_1_n_10\,
      Q => \^touch_cnt\(21),
      R => clear
    );
\touch_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[23]_i_1_n_9\,
      Q => \^touch_cnt\(22),
      R => clear
    );
\touch_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[23]_i_1_n_8\,
      Q => \^touch_cnt\(23),
      R => clear
    );
\touch_cnt_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \touch_cnt_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \touch_cnt_reg[23]_i_1_n_0\,
      CO(6) => \touch_cnt_reg[23]_i_1_n_1\,
      CO(5) => \touch_cnt_reg[23]_i_1_n_2\,
      CO(4) => \touch_cnt_reg[23]_i_1_n_3\,
      CO(3) => \touch_cnt_reg[23]_i_1_n_4\,
      CO(2) => \touch_cnt_reg[23]_i_1_n_5\,
      CO(1) => \touch_cnt_reg[23]_i_1_n_6\,
      CO(0) => \touch_cnt_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \touch_cnt_reg[23]_i_1_n_8\,
      O(6) => \touch_cnt_reg[23]_i_1_n_9\,
      O(5) => \touch_cnt_reg[23]_i_1_n_10\,
      O(4) => \touch_cnt_reg[23]_i_1_n_11\,
      O(3) => \touch_cnt_reg[23]_i_1_n_12\,
      O(2) => \touch_cnt_reg[23]_i_1_n_13\,
      O(1) => \touch_cnt_reg[23]_i_1_n_14\,
      O(0) => \touch_cnt_reg[23]_i_1_n_15\,
      S(7 downto 0) => \^touch_cnt\(23 downto 16)
    );
\touch_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[31]_i_3_n_15\,
      Q => \^touch_cnt\(24),
      R => clear
    );
\touch_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[31]_i_3_n_14\,
      Q => \^touch_cnt\(25),
      R => clear
    );
\touch_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[31]_i_3_n_13\,
      Q => \^touch_cnt\(26),
      R => clear
    );
\touch_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[31]_i_3_n_12\,
      Q => \^touch_cnt\(27),
      R => clear
    );
\touch_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[31]_i_3_n_11\,
      Q => \^touch_cnt\(28),
      R => clear
    );
\touch_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[31]_i_3_n_10\,
      Q => \^touch_cnt\(29),
      R => clear
    );
\touch_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[7]_i_1_n_13\,
      Q => \^touch_cnt\(2),
      R => clear
    );
\touch_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[31]_i_3_n_9\,
      Q => \^touch_cnt\(30),
      R => clear
    );
\touch_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[31]_i_3_n_8\,
      Q => \^touch_cnt\(31),
      R => clear
    );
\touch_cnt_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \touch_cnt_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_touch_cnt_reg[31]_i_3_CO_UNCONNECTED\(7),
      CO(6) => \touch_cnt_reg[31]_i_3_n_1\,
      CO(5) => \touch_cnt_reg[31]_i_3_n_2\,
      CO(4) => \touch_cnt_reg[31]_i_3_n_3\,
      CO(3) => \touch_cnt_reg[31]_i_3_n_4\,
      CO(2) => \touch_cnt_reg[31]_i_3_n_5\,
      CO(1) => \touch_cnt_reg[31]_i_3_n_6\,
      CO(0) => \touch_cnt_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \touch_cnt_reg[31]_i_3_n_8\,
      O(6) => \touch_cnt_reg[31]_i_3_n_9\,
      O(5) => \touch_cnt_reg[31]_i_3_n_10\,
      O(4) => \touch_cnt_reg[31]_i_3_n_11\,
      O(3) => \touch_cnt_reg[31]_i_3_n_12\,
      O(2) => \touch_cnt_reg[31]_i_3_n_13\,
      O(1) => \touch_cnt_reg[31]_i_3_n_14\,
      O(0) => \touch_cnt_reg[31]_i_3_n_15\,
      S(7 downto 0) => \^touch_cnt\(31 downto 24)
    );
\touch_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[7]_i_1_n_12\,
      Q => \^touch_cnt\(3),
      R => clear
    );
\touch_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[7]_i_1_n_11\,
      Q => \^touch_cnt\(4),
      R => clear
    );
\touch_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[7]_i_1_n_10\,
      Q => \^touch_cnt\(5),
      R => clear
    );
\touch_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[7]_i_1_n_9\,
      Q => \^touch_cnt\(6),
      R => clear
    );
\touch_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[7]_i_1_n_8\,
      Q => \^touch_cnt\(7),
      R => clear
    );
\touch_cnt_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \touch_cnt_reg[7]_i_1_n_0\,
      CO(6) => \touch_cnt_reg[7]_i_1_n_1\,
      CO(5) => \touch_cnt_reg[7]_i_1_n_2\,
      CO(4) => \touch_cnt_reg[7]_i_1_n_3\,
      CO(3) => \touch_cnt_reg[7]_i_1_n_4\,
      CO(2) => \touch_cnt_reg[7]_i_1_n_5\,
      CO(1) => \touch_cnt_reg[7]_i_1_n_6\,
      CO(0) => \touch_cnt_reg[7]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => touch(1 downto 0),
      O(7) => \touch_cnt_reg[7]_i_1_n_8\,
      O(6) => \touch_cnt_reg[7]_i_1_n_9\,
      O(5) => \touch_cnt_reg[7]_i_1_n_10\,
      O(4) => \touch_cnt_reg[7]_i_1_n_11\,
      O(3) => \touch_cnt_reg[7]_i_1_n_12\,
      O(2) => \touch_cnt_reg[7]_i_1_n_13\,
      O(1) => \touch_cnt_reg[7]_i_1_n_14\,
      O(0) => \touch_cnt_reg[7]_i_1_n_15\,
      S(7 downto 2) => \^touch_cnt\(7 downto 2),
      S(1) => \touch_cnt[7]_i_2_n_0\,
      S(0) => \touch_cnt[7]_i_3_n_0\
    );
\touch_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[15]_i_1_n_15\,
      Q => \^touch_cnt\(8),
      R => clear
    );
\touch_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \touch_cnt[31]_i_2_n_0\,
      D => \touch_cnt_reg[15]_i_1_n_14\,
      Q => \^touch_cnt\(9),
      R => clear
    );
touch_received_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_ready,
      I1 => rstn,
      O => touch_received_i_1_n_0
    );
touch_received_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => touch_received_i_1_n_0,
      Q => \^touch_received\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_touch_test_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    touch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    touch_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    touch_received : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zusys_touch_test_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_touch_test_0_0 : entity is "zusys_touch_test_0_0,touch_test,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zusys_touch_test_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zusys_touch_test_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zusys_touch_test_0_0 : entity is "touch_test,Vivado 2024.2";
end zusys_touch_test_0_0;

architecture STRUCTURE of zusys_touch_test_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_IGNORE : string;
  attribute X_INTERFACE_IGNORE of data_ready : signal is "true";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_MODE of rstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.zusys_touch_test_0_0_touch_test
     port map (
      clk => clk,
      data_ready => data_ready,
      rstn => rstn,
      touch(1 downto 0) => touch(1 downto 0),
      touch_cnt(31 downto 0) => touch_cnt(31 downto 0),
      touch_received => touch_received
    );
end STRUCTURE;
