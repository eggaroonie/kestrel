-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Oct 29 18:30:11 2026
-- Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jackson/projects/kestrel/SW_Dev/KestrelDev_V_0_1/KestrelDev_V_0_1.gen/sources_1/bd/zusys/ip/zusys_capture_logic_test_0_0/zusys_capture_logic_test_0_0_sim_netlist.vhdl
-- Design      : zusys_capture_logic_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_capture_logic_test_0_0_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of zusys_capture_logic_test_0_0_xpm_cdc_async_rst : entity is "ASYNC_RST";
end zusys_capture_logic_test_0_0_xpm_cdc_async_rst;

architecture STRUCTURE of zusys_capture_logic_test_0_0_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  signal reset_pol : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[2]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[3]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(3);
\arststages_ff[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_arst,
      O => reset_pol
    );
\arststages_ff_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => '1',
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(0),
      Q => arststages_ff(1)
    );
\arststages_ff_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(1),
      Q => arststages_ff(2)
    );
\arststages_ff_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      CLR => reset_pol,
      D => arststages_ff(2),
      Q => arststages_ff(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_capture_logic_test_0_0_capture_logic_test is
  port (
    fifo_aresetn : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    frame_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    missed_words : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cap_status_reg_0 : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    cap_enable : in STD_LOGIC;
    mux_data_valid_o : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    gpio : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC;
    frame_cnt_target : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_mux0_data_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_mux1_data_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_mux2_data_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_mux3_data_o : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zusys_capture_logic_test_0_0_capture_logic_test : entity is "capture_logic_test";
end zusys_capture_logic_test_0_0_capture_logic_test;

architecture STRUCTURE of zusys_capture_logic_test_0_0_capture_logic_test is
  signal cap_status0 : STD_LOGIC;
  signal cap_status_i_1_n_0 : STD_LOGIC;
  signal cap_status_i_2_n_0 : STD_LOGIC;
  signal \^cap_status_reg_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^fifo_aresetn\ : STD_LOGIC;
  signal \^frame_cnt\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \frame_cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \frame_cnt[31]_i_11_n_0\ : STD_LOGIC;
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
  signal last_frame0 : STD_LOGIC;
  signal \last_frame0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_4_n_2\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_4_n_3\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_4_n_4\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_4_n_5\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_4_n_6\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_4_n_7\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \last_frame0_carry__0_n_6\ : STD_LOGIC;
  signal \last_frame0_carry__0_n_7\ : STD_LOGIC;
  signal last_frame0_carry_i_10_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_10_n_1 : STD_LOGIC;
  signal last_frame0_carry_i_10_n_2 : STD_LOGIC;
  signal last_frame0_carry_i_10_n_3 : STD_LOGIC;
  signal last_frame0_carry_i_10_n_4 : STD_LOGIC;
  signal last_frame0_carry_i_10_n_5 : STD_LOGIC;
  signal last_frame0_carry_i_10_n_6 : STD_LOGIC;
  signal last_frame0_carry_i_10_n_7 : STD_LOGIC;
  signal last_frame0_carry_i_11_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_11_n_1 : STD_LOGIC;
  signal last_frame0_carry_i_11_n_2 : STD_LOGIC;
  signal last_frame0_carry_i_11_n_3 : STD_LOGIC;
  signal last_frame0_carry_i_11_n_4 : STD_LOGIC;
  signal last_frame0_carry_i_11_n_5 : STD_LOGIC;
  signal last_frame0_carry_i_11_n_6 : STD_LOGIC;
  signal last_frame0_carry_i_11_n_7 : STD_LOGIC;
  signal last_frame0_carry_i_12_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_13_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_14_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_15_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_16_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_17_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_18_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_19_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_1_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_20_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_21_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_22_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_23_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_24_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_25_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_26_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_27_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_28_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_29_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_2_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_30_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_31_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_32_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_33_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_34_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_35_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_3_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_4_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_5_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_6_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_7_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_8_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_9_n_0 : STD_LOGIC;
  signal last_frame0_carry_i_9_n_1 : STD_LOGIC;
  signal last_frame0_carry_i_9_n_2 : STD_LOGIC;
  signal last_frame0_carry_i_9_n_3 : STD_LOGIC;
  signal last_frame0_carry_i_9_n_4 : STD_LOGIC;
  signal last_frame0_carry_i_9_n_5 : STD_LOGIC;
  signal last_frame0_carry_i_9_n_6 : STD_LOGIC;
  signal last_frame0_carry_i_9_n_7 : STD_LOGIC;
  signal last_frame0_carry_n_0 : STD_LOGIC;
  signal last_frame0_carry_n_1 : STD_LOGIC;
  signal last_frame0_carry_n_2 : STD_LOGIC;
  signal last_frame0_carry_n_3 : STD_LOGIC;
  signal last_frame0_carry_n_4 : STD_LOGIC;
  signal last_frame0_carry_n_5 : STD_LOGIC;
  signal last_frame0_carry_n_6 : STD_LOGIC;
  signal last_frame0_carry_n_7 : STD_LOGIC;
  signal last_frame1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal last_frame_i_1_n_0 : STD_LOGIC;
  signal last_frame_reg_n_0 : STD_LOGIC;
  signal line_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal line_cnt0 : STD_LOGIC;
  signal \line_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal line_cnt_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \line_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \line_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \line_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \line_cnt_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \line_cnt_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \line_cnt_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \line_cnt_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \line_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \line_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \line_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \line_cnt_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \line_cnt_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \line_cnt_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \line_cnt_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \line_cnt_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \line_cnt_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \line_cnt_reg[31]_i_4_n_4\ : STD_LOGIC;
  signal \line_cnt_reg[31]_i_4_n_5\ : STD_LOGIC;
  signal \line_cnt_reg[31]_i_4_n_6\ : STD_LOGIC;
  signal \line_cnt_reg[31]_i_4_n_7\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \line_cnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal m_axis_tlast1 : STD_LOGIC;
  signal \m_axis_tlast1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tlast1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tlast1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tlast1_carry__0_n_6\ : STD_LOGIC;
  signal \m_axis_tlast1_carry__0_n_7\ : STD_LOGIC;
  signal m_axis_tlast1_carry_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_i_5_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_i_6_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_i_7_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_i_8_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_n_0 : STD_LOGIC;
  signal m_axis_tlast1_carry_n_1 : STD_LOGIC;
  signal m_axis_tlast1_carry_n_2 : STD_LOGIC;
  signal m_axis_tlast1_carry_n_3 : STD_LOGIC;
  signal m_axis_tlast1_carry_n_4 : STD_LOGIC;
  signal m_axis_tlast1_carry_n_5 : STD_LOGIC;
  signal m_axis_tlast1_carry_n_6 : STD_LOGIC;
  signal m_axis_tlast1_carry_n_7 : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^missed_words\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \missed_words[31]_i_1_n_0\ : STD_LOGIC;
  signal \missed_words[7]_i_2_n_0\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \missed_words_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \missed_words_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_10\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_11\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_12\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_13\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_14\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_15\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_8\ : STD_LOGIC;
  signal \missed_words_reg[31]_i_2_n_9\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \missed_words_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal running5_out : STD_LOGIC;
  signal running_reg_n_0 : STD_LOGIC;
  signal \word_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal word_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_frame_cnt_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_last_frame0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_last_frame0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_last_frame0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_last_frame0_carry__0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_last_frame0_carry__0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_line_cnt_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_line_cnt_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_m_axis_tlast1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_m_axis_tlast1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_m_axis_tlast1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_missed_words_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cap_status_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \frame_cnt[31]_i_10\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \frame_cnt_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \frame_cnt_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \frame_cnt_reg[31]_i_3\ : label is 16;
  attribute ADDER_THRESHOLD of \frame_cnt_reg[7]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \last_frame0_carry__0_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of last_frame0_carry_i_10 : label is 35;
  attribute ADDER_THRESHOLD of last_frame0_carry_i_11 : label is 35;
  attribute ADDER_THRESHOLD of last_frame0_carry_i_9 : label is 35;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD of \line_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \line_cnt_reg[31]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \line_cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_2 : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \missed_words_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \missed_words_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \missed_words_reg[31]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \missed_words_reg[7]_i_1\ : label is 16;
  attribute DEF_VAL : string;
  attribute DEF_VAL of rstn_sync_inst : label is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rstn_sync_inst : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rstn_sync_inst : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of rstn_sync_inst : label is "1'b0";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of rstn_sync_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rstn_sync_inst : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rstn_sync_inst : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rstn_sync_inst : label is "TRUE";
  attribute SOFT_HLUTNM of running_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \word_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \word_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \word_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \word_cnt[4]_i_2\ : label is "soft_lutpair0";
begin
  cap_status_reg_0 <= \^cap_status_reg_0\;
  fifo_aresetn <= \^fifo_aresetn\;
  frame_cnt(31 downto 0) <= \^frame_cnt\(31 downto 0);
  m_axis_tvalid <= \^m_axis_tvalid\;
  missed_words(31 downto 0) <= \^missed_words\(31 downto 0);
cap_status_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fifo_aresetn\,
      O => cap_status_i_1_n_0
    );
cap_status_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^cap_status_reg_0\,
      I1 => running_reg_n_0,
      I2 => cap_enable,
      I3 => last_frame_reg_n_0,
      O => cap_status_i_2_n_0
    );
cap_status_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => cap_status_i_2_n_0,
      Q => \^cap_status_reg_0\,
      R => cap_status_i_1_n_0
    );
\frame_cnt[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => cap_enable,
      I2 => last_frame_reg_n_0,
      I3 => \^fifo_aresetn\,
      O => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => line_cnt(1),
      I1 => line_cnt(9),
      I2 => line_cnt(0),
      I3 => line_cnt(14),
      O => \frame_cnt[31]_i_10_n_0\
    );
\frame_cnt[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => line_cnt(20),
      I1 => line_cnt(17),
      I2 => line_cnt(22),
      I3 => line_cnt(19),
      O => \frame_cnt[31]_i_11_n_0\
    );
\frame_cnt[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \frame_cnt[31]_i_4_n_0\,
      I1 => \frame_cnt[31]_i_5_n_0\,
      I2 => \frame_cnt[31]_i_6_n_0\,
      I3 => \frame_cnt[31]_i_7_n_0\,
      I4 => line_cnt0,
      I5 => running_reg_n_0,
      O => \frame_cnt[31]_i_2_n_0\
    );
\frame_cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => line_cnt(28),
      I1 => line_cnt(7),
      I2 => line_cnt(30),
      I3 => line_cnt(6),
      I4 => \frame_cnt[31]_i_8_n_0\,
      O => \frame_cnt[31]_i_4_n_0\
    );
\frame_cnt[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => line_cnt(12),
      I1 => line_cnt(13),
      I2 => line_cnt(15),
      I3 => line_cnt(4),
      I4 => \frame_cnt[31]_i_9_n_0\,
      O => \frame_cnt[31]_i_5_n_0\
    );
\frame_cnt[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => line_cnt(10),
      I1 => line_cnt(2),
      I2 => line_cnt(8),
      I3 => line_cnt(11),
      I4 => \frame_cnt[31]_i_10_n_0\,
      O => \frame_cnt[31]_i_6_n_0\
    );
\frame_cnt[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => line_cnt(31),
      I1 => line_cnt(29),
      I2 => line_cnt(3),
      I3 => line_cnt(24),
      I4 => \frame_cnt[31]_i_11_n_0\,
      O => \frame_cnt[31]_i_7_n_0\
    );
\frame_cnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => line_cnt(23),
      I1 => line_cnt(21),
      I2 => line_cnt(18),
      I3 => line_cnt(16),
      O => \frame_cnt[31]_i_8_n_0\
    );
\frame_cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => line_cnt(26),
      I1 => line_cnt(27),
      I2 => line_cnt(5),
      I3 => line_cnt(25),
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
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_15\,
      Q => \^frame_cnt\(0),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_13\,
      Q => \^frame_cnt\(10),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_12\,
      Q => \^frame_cnt\(11),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_11\,
      Q => \^frame_cnt\(12),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_10\,
      Q => \^frame_cnt\(13),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_9\,
      Q => \^frame_cnt\(14),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
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
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_15\,
      Q => \^frame_cnt\(16),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_14\,
      Q => \^frame_cnt\(17),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_13\,
      Q => \^frame_cnt\(18),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_12\,
      Q => \^frame_cnt\(19),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_14\,
      Q => \^frame_cnt\(1),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_11\,
      Q => \^frame_cnt\(20),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_10\,
      Q => \^frame_cnt\(21),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[23]_i_1_n_9\,
      Q => \^frame_cnt\(22),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
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
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_15\,
      Q => \^frame_cnt\(24),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_14\,
      Q => \^frame_cnt\(25),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_13\,
      Q => \^frame_cnt\(26),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_12\,
      Q => \^frame_cnt\(27),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_11\,
      Q => \^frame_cnt\(28),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_10\,
      Q => \^frame_cnt\(29),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_13\,
      Q => \^frame_cnt\(2),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[31]_i_3_n_9\,
      Q => \^frame_cnt\(30),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
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
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_12\,
      Q => \^frame_cnt\(3),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_11\,
      Q => \^frame_cnt\(4),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_10\,
      Q => \^frame_cnt\(5),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[7]_i_1_n_9\,
      Q => \^frame_cnt\(6),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
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
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_15\,
      Q => \^frame_cnt\(8),
      R => \frame_cnt[31]_i_1_n_0\
    );
\frame_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \frame_cnt[31]_i_2_n_0\,
      D => \frame_cnt_reg[15]_i_1_n_14\,
      Q => \^frame_cnt\(9),
      R => \frame_cnt[31]_i_1_n_0\
    );
last_frame0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => last_frame0_carry_n_0,
      CO(6) => last_frame0_carry_n_1,
      CO(5) => last_frame0_carry_n_2,
      CO(4) => last_frame0_carry_n_3,
      CO(3) => last_frame0_carry_n_4,
      CO(2) => last_frame0_carry_n_5,
      CO(1) => last_frame0_carry_n_6,
      CO(0) => last_frame0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_last_frame0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => last_frame0_carry_i_1_n_0,
      S(6) => last_frame0_carry_i_2_n_0,
      S(5) => last_frame0_carry_i_3_n_0,
      S(4) => last_frame0_carry_i_4_n_0,
      S(3) => last_frame0_carry_i_5_n_0,
      S(2) => last_frame0_carry_i_6_n_0,
      S(1) => last_frame0_carry_i_7_n_0,
      S(0) => last_frame0_carry_i_8_n_0
    );
\last_frame0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => last_frame0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_last_frame0_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => last_frame0,
      CO(1) => \last_frame0_carry__0_n_6\,
      CO(0) => \last_frame0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_last_frame0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \last_frame0_carry__0_i_1_n_0\,
      S(1) => \last_frame0_carry__0_i_2_n_0\,
      S(0) => \last_frame0_carry__0_i_3_n_0\
    );
\last_frame0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => last_frame1(31),
      I1 => \^frame_cnt\(31),
      I2 => last_frame1(30),
      I3 => \^frame_cnt\(30),
      O => \last_frame0_carry__0_i_1_n_0\
    );
\last_frame0_carry__0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(26),
      O => \last_frame0_carry__0_i_10_n_0\
    );
\last_frame0_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(25),
      O => \last_frame0_carry__0_i_11_n_0\
    );
\last_frame0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^frame_cnt\(28),
      I1 => last_frame1(28),
      I2 => \^frame_cnt\(27),
      I3 => last_frame1(27),
      I4 => last_frame1(29),
      I5 => \^frame_cnt\(29),
      O => \last_frame0_carry__0_i_2_n_0\
    );
\last_frame0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^frame_cnt\(26),
      I1 => last_frame1(26),
      I2 => \^frame_cnt\(24),
      I3 => last_frame1(24),
      I4 => last_frame1(25),
      I5 => \^frame_cnt\(25),
      O => \last_frame0_carry__0_i_3_n_0\
    );
\last_frame0_carry__0_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => last_frame0_carry_i_9_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_last_frame0_carry__0_i_4_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \last_frame0_carry__0_i_4_n_2\,
      CO(4) => \last_frame0_carry__0_i_4_n_3\,
      CO(3) => \last_frame0_carry__0_i_4_n_4\,
      CO(2) => \last_frame0_carry__0_i_4_n_5\,
      CO(1) => \last_frame0_carry__0_i_4_n_6\,
      CO(0) => \last_frame0_carry__0_i_4_n_7\,
      DI(7 downto 6) => B"00",
      DI(5 downto 0) => frame_cnt_target(30 downto 25),
      O(7) => \NLW_last_frame0_carry__0_i_4_O_UNCONNECTED\(7),
      O(6 downto 0) => last_frame1(31 downto 25),
      S(7) => '0',
      S(6) => \last_frame0_carry__0_i_5_n_0\,
      S(5) => \last_frame0_carry__0_i_6_n_0\,
      S(4) => \last_frame0_carry__0_i_7_n_0\,
      S(3) => \last_frame0_carry__0_i_8_n_0\,
      S(2) => \last_frame0_carry__0_i_9_n_0\,
      S(1) => \last_frame0_carry__0_i_10_n_0\,
      S(0) => \last_frame0_carry__0_i_11_n_0\
    );
\last_frame0_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(31),
      O => \last_frame0_carry__0_i_5_n_0\
    );
\last_frame0_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(30),
      O => \last_frame0_carry__0_i_6_n_0\
    );
\last_frame0_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(29),
      O => \last_frame0_carry__0_i_7_n_0\
    );
\last_frame0_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(28),
      O => \last_frame0_carry__0_i_8_n_0\
    );
\last_frame0_carry__0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(27),
      O => \last_frame0_carry__0_i_9_n_0\
    );
last_frame0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^frame_cnt\(21),
      I1 => last_frame1(21),
      I2 => \^frame_cnt\(22),
      I3 => last_frame1(22),
      I4 => last_frame1(23),
      I5 => \^frame_cnt\(23),
      O => last_frame0_carry_i_1_n_0
    );
last_frame0_carry_i_10: unisim.vcomponents.CARRY8
     port map (
      CI => last_frame0_carry_i_11_n_0,
      CI_TOP => '0',
      CO(7) => last_frame0_carry_i_10_n_0,
      CO(6) => last_frame0_carry_i_10_n_1,
      CO(5) => last_frame0_carry_i_10_n_2,
      CO(4) => last_frame0_carry_i_10_n_3,
      CO(3) => last_frame0_carry_i_10_n_4,
      CO(2) => last_frame0_carry_i_10_n_5,
      CO(1) => last_frame0_carry_i_10_n_6,
      CO(0) => last_frame0_carry_i_10_n_7,
      DI(7 downto 0) => frame_cnt_target(16 downto 9),
      O(7 downto 0) => last_frame1(16 downto 9),
      S(7) => last_frame0_carry_i_20_n_0,
      S(6) => last_frame0_carry_i_21_n_0,
      S(5) => last_frame0_carry_i_22_n_0,
      S(4) => last_frame0_carry_i_23_n_0,
      S(3) => last_frame0_carry_i_24_n_0,
      S(2) => last_frame0_carry_i_25_n_0,
      S(1) => last_frame0_carry_i_26_n_0,
      S(0) => last_frame0_carry_i_27_n_0
    );
last_frame0_carry_i_11: unisim.vcomponents.CARRY8
     port map (
      CI => frame_cnt_target(0),
      CI_TOP => '0',
      CO(7) => last_frame0_carry_i_11_n_0,
      CO(6) => last_frame0_carry_i_11_n_1,
      CO(5) => last_frame0_carry_i_11_n_2,
      CO(4) => last_frame0_carry_i_11_n_3,
      CO(3) => last_frame0_carry_i_11_n_4,
      CO(2) => last_frame0_carry_i_11_n_5,
      CO(1) => last_frame0_carry_i_11_n_6,
      CO(0) => last_frame0_carry_i_11_n_7,
      DI(7 downto 0) => frame_cnt_target(8 downto 1),
      O(7 downto 0) => last_frame1(8 downto 1),
      S(7) => last_frame0_carry_i_28_n_0,
      S(6) => last_frame0_carry_i_29_n_0,
      S(5) => last_frame0_carry_i_30_n_0,
      S(4) => last_frame0_carry_i_31_n_0,
      S(3) => last_frame0_carry_i_32_n_0,
      S(2) => last_frame0_carry_i_33_n_0,
      S(1) => last_frame0_carry_i_34_n_0,
      S(0) => last_frame0_carry_i_35_n_0
    );
last_frame0_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(24),
      O => last_frame0_carry_i_12_n_0
    );
last_frame0_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(23),
      O => last_frame0_carry_i_13_n_0
    );
last_frame0_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(22),
      O => last_frame0_carry_i_14_n_0
    );
last_frame0_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(21),
      O => last_frame0_carry_i_15_n_0
    );
last_frame0_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(20),
      O => last_frame0_carry_i_16_n_0
    );
last_frame0_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(19),
      O => last_frame0_carry_i_17_n_0
    );
last_frame0_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(18),
      O => last_frame0_carry_i_18_n_0
    );
last_frame0_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(17),
      O => last_frame0_carry_i_19_n_0
    );
last_frame0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^frame_cnt\(18),
      I1 => last_frame1(18),
      I2 => \^frame_cnt\(19),
      I3 => last_frame1(19),
      I4 => last_frame1(20),
      I5 => \^frame_cnt\(20),
      O => last_frame0_carry_i_2_n_0
    );
last_frame0_carry_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(16),
      O => last_frame0_carry_i_20_n_0
    );
last_frame0_carry_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(15),
      O => last_frame0_carry_i_21_n_0
    );
last_frame0_carry_i_22: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(14),
      O => last_frame0_carry_i_22_n_0
    );
last_frame0_carry_i_23: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(13),
      O => last_frame0_carry_i_23_n_0
    );
last_frame0_carry_i_24: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(12),
      O => last_frame0_carry_i_24_n_0
    );
last_frame0_carry_i_25: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(11),
      O => last_frame0_carry_i_25_n_0
    );
last_frame0_carry_i_26: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(10),
      O => last_frame0_carry_i_26_n_0
    );
last_frame0_carry_i_27: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(9),
      O => last_frame0_carry_i_27_n_0
    );
last_frame0_carry_i_28: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(8),
      O => last_frame0_carry_i_28_n_0
    );
last_frame0_carry_i_29: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(7),
      O => last_frame0_carry_i_29_n_0
    );
last_frame0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^frame_cnt\(15),
      I1 => last_frame1(15),
      I2 => \^frame_cnt\(16),
      I3 => last_frame1(16),
      I4 => last_frame1(17),
      I5 => \^frame_cnt\(17),
      O => last_frame0_carry_i_3_n_0
    );
last_frame0_carry_i_30: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(6),
      O => last_frame0_carry_i_30_n_0
    );
last_frame0_carry_i_31: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(5),
      O => last_frame0_carry_i_31_n_0
    );
last_frame0_carry_i_32: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(4),
      O => last_frame0_carry_i_32_n_0
    );
last_frame0_carry_i_33: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(3),
      O => last_frame0_carry_i_33_n_0
    );
last_frame0_carry_i_34: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(2),
      O => last_frame0_carry_i_34_n_0
    );
last_frame0_carry_i_35: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_cnt_target(1),
      O => last_frame0_carry_i_35_n_0
    );
last_frame0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^frame_cnt\(12),
      I1 => last_frame1(12),
      I2 => \^frame_cnt\(13),
      I3 => last_frame1(13),
      I4 => last_frame1(14),
      I5 => \^frame_cnt\(14),
      O => last_frame0_carry_i_4_n_0
    );
last_frame0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => last_frame1(10),
      I1 => \^frame_cnt\(10),
      I2 => \^frame_cnt\(11),
      I3 => last_frame1(11),
      I4 => \^frame_cnt\(9),
      I5 => last_frame1(9),
      O => last_frame0_carry_i_5_n_0
    );
last_frame0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^frame_cnt\(6),
      I1 => last_frame1(6),
      I2 => \^frame_cnt\(7),
      I3 => last_frame1(7),
      I4 => last_frame1(8),
      I5 => \^frame_cnt\(8),
      O => last_frame0_carry_i_6_n_0
    );
last_frame0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^frame_cnt\(3),
      I1 => last_frame1(3),
      I2 => \^frame_cnt\(4),
      I3 => last_frame1(4),
      I4 => last_frame1(5),
      I5 => \^frame_cnt\(5),
      O => last_frame0_carry_i_7_n_0
    );
last_frame0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => \^frame_cnt\(1),
      I1 => last_frame1(1),
      I2 => \^frame_cnt\(2),
      I3 => last_frame1(2),
      I4 => frame_cnt_target(0),
      I5 => \^frame_cnt\(0),
      O => last_frame0_carry_i_8_n_0
    );
last_frame0_carry_i_9: unisim.vcomponents.CARRY8
     port map (
      CI => last_frame0_carry_i_10_n_0,
      CI_TOP => '0',
      CO(7) => last_frame0_carry_i_9_n_0,
      CO(6) => last_frame0_carry_i_9_n_1,
      CO(5) => last_frame0_carry_i_9_n_2,
      CO(4) => last_frame0_carry_i_9_n_3,
      CO(3) => last_frame0_carry_i_9_n_4,
      CO(2) => last_frame0_carry_i_9_n_5,
      CO(1) => last_frame0_carry_i_9_n_6,
      CO(0) => last_frame0_carry_i_9_n_7,
      DI(7 downto 0) => frame_cnt_target(24 downto 17),
      O(7 downto 0) => last_frame1(24 downto 17),
      S(7) => last_frame0_carry_i_12_n_0,
      S(6) => last_frame0_carry_i_13_n_0,
      S(5) => last_frame0_carry_i_14_n_0,
      S(4) => last_frame0_carry_i_15_n_0,
      S(3) => last_frame0_carry_i_16_n_0,
      S(2) => last_frame0_carry_i_17_n_0,
      S(1) => last_frame0_carry_i_18_n_0,
      S(0) => last_frame0_carry_i_19_n_0
    );
last_frame_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC88CC88CC88CC88"
    )
        port map (
      I0 => cap_enable,
      I1 => last_frame_reg_n_0,
      I2 => last_frame0,
      I3 => running_reg_n_0,
      I4 => gpio(0),
      I5 => mux_data_valid_o,
      O => last_frame_i_1_n_0
    );
last_frame_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => last_frame_i_1_n_0,
      Q => last_frame_reg_n_0,
      R => cap_status_i_1_n_0
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_cnt(0),
      O => line_cnt_0(0)
    );
\line_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(10),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(10)
    );
\line_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(11),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(11)
    );
\line_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(12),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(12)
    );
\line_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(13),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(13)
    );
\line_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(14),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(14)
    );
\line_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(15),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(15)
    );
\line_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(16),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(16)
    );
\line_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(17),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(17)
    );
\line_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(18),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(18)
    );
\line_cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(19),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(19)
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(1),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(1)
    );
\line_cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(20),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(20)
    );
\line_cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(21),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(21)
    );
\line_cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(22),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(22)
    );
\line_cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(23),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(23)
    );
\line_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(24),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(24)
    );
\line_cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(25),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(25)
    );
\line_cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(26),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(26)
    );
\line_cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(27),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(27)
    );
\line_cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(28),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(28)
    );
\line_cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(29),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(29)
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(2),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(2)
    );
\line_cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(30),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(30)
    );
\line_cnt[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => \^fifo_aresetn\,
      O => \line_cnt[31]_i_1_n_0\
    );
\line_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gpio(0),
      I1 => mux_data_valid_o,
      O => line_cnt0
    );
\line_cnt[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(31),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(31)
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(3),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(3)
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(4),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(4)
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(5),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(5)
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(6),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(6)
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(7),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(7)
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(8),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(8)
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(9),
      I1 => \frame_cnt[31]_i_4_n_0\,
      I2 => \frame_cnt[31]_i_5_n_0\,
      I3 => \frame_cnt[31]_i_6_n_0\,
      I4 => \frame_cnt[31]_i_7_n_0\,
      O => line_cnt_0(9)
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(0),
      Q => line_cnt(0),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(10),
      Q => line_cnt(10),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(11),
      Q => line_cnt(11),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(12),
      Q => line_cnt(12),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(13),
      Q => line_cnt(13),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(14),
      Q => line_cnt(14),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(15),
      Q => line_cnt(15),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(16),
      Q => line_cnt(16),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \line_cnt_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \line_cnt_reg[16]_i_2_n_0\,
      CO(6) => \line_cnt_reg[16]_i_2_n_1\,
      CO(5) => \line_cnt_reg[16]_i_2_n_2\,
      CO(4) => \line_cnt_reg[16]_i_2_n_3\,
      CO(3) => \line_cnt_reg[16]_i_2_n_4\,
      CO(2) => \line_cnt_reg[16]_i_2_n_5\,
      CO(1) => \line_cnt_reg[16]_i_2_n_6\,
      CO(0) => \line_cnt_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(16 downto 9),
      S(7 downto 0) => line_cnt(16 downto 9)
    );
\line_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(17),
      Q => line_cnt(17),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(18),
      Q => line_cnt(18),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(19),
      Q => line_cnt(19),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(1),
      Q => line_cnt(1),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(20),
      Q => line_cnt(20),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(21),
      Q => line_cnt(21),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(22),
      Q => line_cnt(22),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(23),
      Q => line_cnt(23),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(24),
      Q => line_cnt(24),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \line_cnt_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \line_cnt_reg[24]_i_2_n_0\,
      CO(6) => \line_cnt_reg[24]_i_2_n_1\,
      CO(5) => \line_cnt_reg[24]_i_2_n_2\,
      CO(4) => \line_cnt_reg[24]_i_2_n_3\,
      CO(3) => \line_cnt_reg[24]_i_2_n_4\,
      CO(2) => \line_cnt_reg[24]_i_2_n_5\,
      CO(1) => \line_cnt_reg[24]_i_2_n_6\,
      CO(0) => \line_cnt_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(24 downto 17),
      S(7 downto 0) => line_cnt(24 downto 17)
    );
\line_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(25),
      Q => line_cnt(25),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(26),
      Q => line_cnt(26),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(27),
      Q => line_cnt(27),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(28),
      Q => line_cnt(28),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(29),
      Q => line_cnt(29),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(2),
      Q => line_cnt(2),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(30),
      Q => line_cnt(30),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(31),
      Q => line_cnt(31),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[31]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \line_cnt_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_line_cnt_reg[31]_i_4_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \line_cnt_reg[31]_i_4_n_2\,
      CO(4) => \line_cnt_reg[31]_i_4_n_3\,
      CO(3) => \line_cnt_reg[31]_i_4_n_4\,
      CO(2) => \line_cnt_reg[31]_i_4_n_5\,
      CO(1) => \line_cnt_reg[31]_i_4_n_6\,
      CO(0) => \line_cnt_reg[31]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_line_cnt_reg[31]_i_4_O_UNCONNECTED\(7),
      O(6 downto 0) => data0(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => line_cnt(31 downto 25)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(3),
      Q => line_cnt(3),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(4),
      Q => line_cnt(4),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(5),
      Q => line_cnt(5),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(6),
      Q => line_cnt(6),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(7),
      Q => line_cnt(7),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(8),
      Q => line_cnt(8),
      R => \line_cnt[31]_i_1_n_0\
    );
\line_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => line_cnt(0),
      CI_TOP => '0',
      CO(7) => \line_cnt_reg[8]_i_2_n_0\,
      CO(6) => \line_cnt_reg[8]_i_2_n_1\,
      CO(5) => \line_cnt_reg[8]_i_2_n_2\,
      CO(4) => \line_cnt_reg[8]_i_2_n_3\,
      CO(3) => \line_cnt_reg[8]_i_2_n_4\,
      CO(2) => \line_cnt_reg[8]_i_2_n_5\,
      CO(1) => \line_cnt_reg[8]_i_2_n_6\,
      CO(0) => \line_cnt_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data0(8 downto 1),
      S(7 downto 0) => line_cnt(8 downto 1)
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => line_cnt0,
      D => line_cnt_0(9),
      Q => line_cnt(9),
      R => \line_cnt[31]_i_1_n_0\
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux3_data_o(0),
      O => p_2_in(0)
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux2_data_o(2),
      O => p_2_in(10)
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux2_data_o(3),
      O => p_2_in(11)
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux2_data_o(4),
      O => p_2_in(12)
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux2_data_o(5),
      O => p_2_in(13)
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux2_data_o(6),
      O => p_2_in(14)
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux2_data_o(7),
      O => p_2_in(15)
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux1_data_o(0),
      O => p_2_in(16)
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux1_data_o(1),
      O => p_2_in(17)
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux1_data_o(2),
      O => p_2_in(18)
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux1_data_o(3),
      O => p_2_in(19)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux3_data_o(1),
      O => p_2_in(1)
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux1_data_o(4),
      O => p_2_in(20)
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux1_data_o(5),
      O => p_2_in(21)
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux1_data_o(6),
      O => p_2_in(22)
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux1_data_o(7),
      O => p_2_in(23)
    );
\m_axis_tdata[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux0_data_o(0),
      O => p_2_in(24)
    );
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux0_data_o(1),
      O => p_2_in(25)
    );
\m_axis_tdata[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux0_data_o(2),
      O => p_2_in(26)
    );
\m_axis_tdata[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux0_data_o(3),
      O => p_2_in(27)
    );
\m_axis_tdata[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux0_data_o(4),
      O => p_2_in(28)
    );
\m_axis_tdata[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux0_data_o(5),
      O => p_2_in(29)
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux3_data_o(2),
      O => p_2_in(2)
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux0_data_o(6),
      O => p_2_in(30)
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => cap_enable,
      I2 => last_frame_reg_n_0,
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux0_data_o(7),
      O => p_2_in(31)
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux3_data_o(3),
      O => p_2_in(3)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux3_data_o(4),
      O => p_2_in(4)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux3_data_o(5),
      O => p_2_in(5)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux3_data_o(6),
      O => p_2_in(6)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux3_data_o(7),
      O => p_2_in(7)
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux2_data_o(0),
      O => p_2_in(8)
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => running_reg_n_0,
      I1 => s_mux2_data_o(1),
      O => p_2_in(9)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(0),
      Q => m_axis_tdata(0),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(10),
      Q => m_axis_tdata(10),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(11),
      Q => m_axis_tdata(11),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(12),
      Q => m_axis_tdata(12),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(13),
      Q => m_axis_tdata(13),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(14),
      Q => m_axis_tdata(14),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(15),
      Q => m_axis_tdata(15),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(16),
      Q => m_axis_tdata(16),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(17),
      Q => m_axis_tdata(17),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(18),
      Q => m_axis_tdata(18),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(19),
      Q => m_axis_tdata(19),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(1),
      Q => m_axis_tdata(1),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(20),
      Q => m_axis_tdata(20),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(21),
      Q => m_axis_tdata(21),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(22),
      Q => m_axis_tdata(22),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(23),
      Q => m_axis_tdata(23),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(24),
      Q => m_axis_tdata(24),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(25),
      Q => m_axis_tdata(25),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(26),
      Q => m_axis_tdata(26),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(27),
      Q => m_axis_tdata(27),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(28),
      Q => m_axis_tdata(28),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(29),
      Q => m_axis_tdata(29),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(2),
      Q => m_axis_tdata(2),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(30),
      Q => m_axis_tdata(30),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(31),
      Q => m_axis_tdata(31),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(3),
      Q => m_axis_tdata(3),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(4),
      Q => m_axis_tdata(4),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(5),
      Q => m_axis_tdata(5),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(6),
      Q => m_axis_tdata(6),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(7),
      Q => m_axis_tdata(7),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(8),
      Q => m_axis_tdata(8),
      R => cap_status_i_1_n_0
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => p_2_in(9),
      Q => m_axis_tdata(9),
      R => cap_status_i_1_n_0
    );
m_axis_tlast1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => m_axis_tlast1_carry_n_0,
      CO(6) => m_axis_tlast1_carry_n_1,
      CO(5) => m_axis_tlast1_carry_n_2,
      CO(4) => m_axis_tlast1_carry_n_3,
      CO(3) => m_axis_tlast1_carry_n_4,
      CO(2) => m_axis_tlast1_carry_n_5,
      CO(1) => m_axis_tlast1_carry_n_6,
      CO(0) => m_axis_tlast1_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_m_axis_tlast1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => m_axis_tlast1_carry_i_1_n_0,
      S(6) => m_axis_tlast1_carry_i_2_n_0,
      S(5) => m_axis_tlast1_carry_i_3_n_0,
      S(4) => m_axis_tlast1_carry_i_4_n_0,
      S(3) => m_axis_tlast1_carry_i_5_n_0,
      S(2) => m_axis_tlast1_carry_i_6_n_0,
      S(1) => m_axis_tlast1_carry_i_7_n_0,
      S(0) => m_axis_tlast1_carry_i_8_n_0
    );
\m_axis_tlast1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => m_axis_tlast1_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_m_axis_tlast1_carry__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => m_axis_tlast1,
      CO(1) => \m_axis_tlast1_carry__0_n_6\,
      CO(0) => \m_axis_tlast1_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_m_axis_tlast1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7 downto 3) => B"00000",
      S(2) => \m_axis_tlast1_carry__0_i_1_n_0\,
      S(1) => \m_axis_tlast1_carry__0_i_2_n_0\,
      S(0) => \m_axis_tlast1_carry__0_i_3_n_0\
    );
\m_axis_tlast1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => frame_cnt_target(30),
      I1 => \^frame_cnt\(30),
      I2 => frame_cnt_target(31),
      I3 => \^frame_cnt\(31),
      O => \m_axis_tlast1_carry__0_i_1_n_0\
    );
\m_axis_tlast1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(28),
      I1 => \^frame_cnt\(28),
      I2 => \^frame_cnt\(29),
      I3 => frame_cnt_target(29),
      I4 => \^frame_cnt\(27),
      I5 => frame_cnt_target(27),
      O => \m_axis_tlast1_carry__0_i_2_n_0\
    );
\m_axis_tlast1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(24),
      I1 => \^frame_cnt\(24),
      I2 => \^frame_cnt\(26),
      I3 => frame_cnt_target(26),
      I4 => \^frame_cnt\(25),
      I5 => frame_cnt_target(25),
      O => \m_axis_tlast1_carry__0_i_3_n_0\
    );
m_axis_tlast1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(22),
      I1 => \^frame_cnt\(22),
      I2 => \^frame_cnt\(23),
      I3 => frame_cnt_target(23),
      I4 => \^frame_cnt\(21),
      I5 => frame_cnt_target(21),
      O => m_axis_tlast1_carry_i_1_n_0
    );
m_axis_tlast1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(19),
      I1 => \^frame_cnt\(19),
      I2 => \^frame_cnt\(20),
      I3 => frame_cnt_target(20),
      I4 => \^frame_cnt\(18),
      I5 => frame_cnt_target(18),
      O => m_axis_tlast1_carry_i_2_n_0
    );
m_axis_tlast1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(16),
      I1 => \^frame_cnt\(16),
      I2 => \^frame_cnt\(17),
      I3 => frame_cnt_target(17),
      I4 => \^frame_cnt\(15),
      I5 => frame_cnt_target(15),
      O => m_axis_tlast1_carry_i_3_n_0
    );
m_axis_tlast1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(13),
      I1 => \^frame_cnt\(13),
      I2 => \^frame_cnt\(14),
      I3 => frame_cnt_target(14),
      I4 => \^frame_cnt\(12),
      I5 => frame_cnt_target(12),
      O => m_axis_tlast1_carry_i_4_n_0
    );
m_axis_tlast1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(10),
      I1 => \^frame_cnt\(10),
      I2 => \^frame_cnt\(11),
      I3 => frame_cnt_target(11),
      I4 => \^frame_cnt\(9),
      I5 => frame_cnt_target(9),
      O => m_axis_tlast1_carry_i_5_n_0
    );
m_axis_tlast1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(6),
      I1 => \^frame_cnt\(6),
      I2 => \^frame_cnt\(8),
      I3 => frame_cnt_target(8),
      I4 => \^frame_cnt\(7),
      I5 => frame_cnt_target(7),
      O => m_axis_tlast1_carry_i_6_n_0
    );
m_axis_tlast1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(4),
      I1 => \^frame_cnt\(4),
      I2 => \^frame_cnt\(5),
      I3 => frame_cnt_target(5),
      I4 => \^frame_cnt\(3),
      I5 => frame_cnt_target(3),
      O => m_axis_tlast1_carry_i_7_n_0
    );
m_axis_tlast1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => frame_cnt_target(0),
      I1 => \^frame_cnt\(0),
      I2 => \^frame_cnt\(2),
      I3 => frame_cnt_target(2),
      I4 => \^frame_cnt\(1),
      I5 => frame_cnt_target(1),
      O => m_axis_tlast1_carry_i_8_n_0
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000FFFFFFFF"
    )
        port map (
      I0 => word_cnt_reg(1),
      I1 => word_cnt_reg(0),
      I2 => m_axis_tlast1,
      I3 => mux_data_valid_o,
      I4 => m_axis_tlast_i_3_n_0,
      I5 => running_reg_n_0,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => word_cnt_reg(1),
      I1 => word_cnt_reg(0),
      I2 => m_axis_tlast1,
      I3 => mux_data_valid_o,
      I4 => m_axis_tlast_i_3_n_0,
      I5 => running_reg_n_0,
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => gpio(0),
      I1 => word_cnt_reg(4),
      I2 => word_cnt_reg(3),
      I3 => word_cnt_reg(2),
      O => m_axis_tlast_i_3_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tlast_i_1_n_0,
      D => m_axis_tlast_i_2_n_0,
      Q => m_axis_tlast,
      R => cap_status_i_1_n_0
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC00000000000"
    )
        port map (
      I0 => cap_status0,
      I1 => mux_data_valid_o,
      I2 => \^cap_status_reg_0\,
      I3 => running_reg_n_0,
      I4 => \^m_axis_tvalid\,
      I5 => \^fifo_aresetn\,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cap_enable,
      I1 => last_frame_reg_n_0,
      O => cap_status0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
\missed_words[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^cap_status_reg_0\,
      I1 => mux_data_valid_o,
      I2 => running_reg_n_0,
      I3 => m_axis_tready,
      O => \missed_words[31]_i_1_n_0\
    );
\missed_words[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^missed_words\(0),
      O => \missed_words[7]_i_2_n_0\
    );
\missed_words_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[7]_i_1_n_15\,
      Q => \^missed_words\(0),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[15]_i_1_n_13\,
      Q => \^missed_words\(10),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[15]_i_1_n_12\,
      Q => \^missed_words\(11),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[15]_i_1_n_11\,
      Q => \^missed_words\(12),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[15]_i_1_n_10\,
      Q => \^missed_words\(13),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[15]_i_1_n_9\,
      Q => \^missed_words\(14),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[15]_i_1_n_8\,
      Q => \^missed_words\(15),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \missed_words_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \missed_words_reg[15]_i_1_n_0\,
      CO(6) => \missed_words_reg[15]_i_1_n_1\,
      CO(5) => \missed_words_reg[15]_i_1_n_2\,
      CO(4) => \missed_words_reg[15]_i_1_n_3\,
      CO(3) => \missed_words_reg[15]_i_1_n_4\,
      CO(2) => \missed_words_reg[15]_i_1_n_5\,
      CO(1) => \missed_words_reg[15]_i_1_n_6\,
      CO(0) => \missed_words_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \missed_words_reg[15]_i_1_n_8\,
      O(6) => \missed_words_reg[15]_i_1_n_9\,
      O(5) => \missed_words_reg[15]_i_1_n_10\,
      O(4) => \missed_words_reg[15]_i_1_n_11\,
      O(3) => \missed_words_reg[15]_i_1_n_12\,
      O(2) => \missed_words_reg[15]_i_1_n_13\,
      O(1) => \missed_words_reg[15]_i_1_n_14\,
      O(0) => \missed_words_reg[15]_i_1_n_15\,
      S(7 downto 0) => \^missed_words\(15 downto 8)
    );
\missed_words_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[23]_i_1_n_15\,
      Q => \^missed_words\(16),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[23]_i_1_n_14\,
      Q => \^missed_words\(17),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[23]_i_1_n_13\,
      Q => \^missed_words\(18),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[23]_i_1_n_12\,
      Q => \^missed_words\(19),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[7]_i_1_n_14\,
      Q => \^missed_words\(1),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[23]_i_1_n_11\,
      Q => \^missed_words\(20),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[23]_i_1_n_10\,
      Q => \^missed_words\(21),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[23]_i_1_n_9\,
      Q => \^missed_words\(22),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[23]_i_1_n_8\,
      Q => \^missed_words\(23),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \missed_words_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \missed_words_reg[23]_i_1_n_0\,
      CO(6) => \missed_words_reg[23]_i_1_n_1\,
      CO(5) => \missed_words_reg[23]_i_1_n_2\,
      CO(4) => \missed_words_reg[23]_i_1_n_3\,
      CO(3) => \missed_words_reg[23]_i_1_n_4\,
      CO(2) => \missed_words_reg[23]_i_1_n_5\,
      CO(1) => \missed_words_reg[23]_i_1_n_6\,
      CO(0) => \missed_words_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \missed_words_reg[23]_i_1_n_8\,
      O(6) => \missed_words_reg[23]_i_1_n_9\,
      O(5) => \missed_words_reg[23]_i_1_n_10\,
      O(4) => \missed_words_reg[23]_i_1_n_11\,
      O(3) => \missed_words_reg[23]_i_1_n_12\,
      O(2) => \missed_words_reg[23]_i_1_n_13\,
      O(1) => \missed_words_reg[23]_i_1_n_14\,
      O(0) => \missed_words_reg[23]_i_1_n_15\,
      S(7 downto 0) => \^missed_words\(23 downto 16)
    );
\missed_words_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[31]_i_2_n_15\,
      Q => \^missed_words\(24),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[31]_i_2_n_14\,
      Q => \^missed_words\(25),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[31]_i_2_n_13\,
      Q => \^missed_words\(26),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[31]_i_2_n_12\,
      Q => \^missed_words\(27),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[31]_i_2_n_11\,
      Q => \^missed_words\(28),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[31]_i_2_n_10\,
      Q => \^missed_words\(29),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[7]_i_1_n_13\,
      Q => \^missed_words\(2),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[31]_i_2_n_9\,
      Q => \^missed_words\(30),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[31]_i_2_n_8\,
      Q => \^missed_words\(31),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \missed_words_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_missed_words_reg[31]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \missed_words_reg[31]_i_2_n_1\,
      CO(5) => \missed_words_reg[31]_i_2_n_2\,
      CO(4) => \missed_words_reg[31]_i_2_n_3\,
      CO(3) => \missed_words_reg[31]_i_2_n_4\,
      CO(2) => \missed_words_reg[31]_i_2_n_5\,
      CO(1) => \missed_words_reg[31]_i_2_n_6\,
      CO(0) => \missed_words_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \missed_words_reg[31]_i_2_n_8\,
      O(6) => \missed_words_reg[31]_i_2_n_9\,
      O(5) => \missed_words_reg[31]_i_2_n_10\,
      O(4) => \missed_words_reg[31]_i_2_n_11\,
      O(3) => \missed_words_reg[31]_i_2_n_12\,
      O(2) => \missed_words_reg[31]_i_2_n_13\,
      O(1) => \missed_words_reg[31]_i_2_n_14\,
      O(0) => \missed_words_reg[31]_i_2_n_15\,
      S(7 downto 0) => \^missed_words\(31 downto 24)
    );
\missed_words_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[7]_i_1_n_12\,
      Q => \^missed_words\(3),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[7]_i_1_n_11\,
      Q => \^missed_words\(4),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[7]_i_1_n_10\,
      Q => \^missed_words\(5),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[7]_i_1_n_9\,
      Q => \^missed_words\(6),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[7]_i_1_n_8\,
      Q => \^missed_words\(7),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \missed_words_reg[7]_i_1_n_0\,
      CO(6) => \missed_words_reg[7]_i_1_n_1\,
      CO(5) => \missed_words_reg[7]_i_1_n_2\,
      CO(4) => \missed_words_reg[7]_i_1_n_3\,
      CO(3) => \missed_words_reg[7]_i_1_n_4\,
      CO(2) => \missed_words_reg[7]_i_1_n_5\,
      CO(1) => \missed_words_reg[7]_i_1_n_6\,
      CO(0) => \missed_words_reg[7]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \missed_words_reg[7]_i_1_n_8\,
      O(6) => \missed_words_reg[7]_i_1_n_9\,
      O(5) => \missed_words_reg[7]_i_1_n_10\,
      O(4) => \missed_words_reg[7]_i_1_n_11\,
      O(3) => \missed_words_reg[7]_i_1_n_12\,
      O(2) => \missed_words_reg[7]_i_1_n_13\,
      O(1) => \missed_words_reg[7]_i_1_n_14\,
      O(0) => \missed_words_reg[7]_i_1_n_15\,
      S(7 downto 1) => \^missed_words\(7 downto 1),
      S(0) => \missed_words[7]_i_2_n_0\
    );
\missed_words_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[15]_i_1_n_15\,
      Q => \^missed_words\(8),
      R => \frame_cnt[31]_i_1_n_0\
    );
\missed_words_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => \missed_words[31]_i_1_n_0\,
      D => \missed_words_reg[15]_i_1_n_14\,
      Q => \^missed_words\(9),
      R => \frame_cnt[31]_i_1_n_0\
    );
rstn_sync_inst: entity work.zusys_capture_logic_test_0_0_xpm_cdc_async_rst
     port map (
      dest_arst => \^fifo_aresetn\,
      dest_clk => clk_in,
      src_arst => m_axis_aresetn
    );
running_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => last_frame_reg_n_0,
      I1 => cap_enable,
      I2 => running_reg_n_0,
      O => running5_out
    );
running_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => m_axis_tlast_i_1_n_0,
      D => running5_out,
      Q => running_reg_n_0,
      R => cap_status_i_1_n_0
    );
\word_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => word_cnt_reg(0),
      O => p_0_in(0)
    );
\word_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => word_cnt_reg(0),
      I1 => word_cnt_reg(1),
      O => p_0_in(1)
    );
\word_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => word_cnt_reg(2),
      I1 => word_cnt_reg(1),
      I2 => word_cnt_reg(0),
      O => p_0_in(2)
    );
\word_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => word_cnt_reg(3),
      I1 => word_cnt_reg(0),
      I2 => word_cnt_reg(1),
      I3 => word_cnt_reg(2),
      O => p_0_in(3)
    );
\word_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FFF"
    )
        port map (
      I0 => mux_data_valid_o,
      I1 => gpio(0),
      I2 => \^fifo_aresetn\,
      I3 => running_reg_n_0,
      O => \word_cnt[4]_i_1_n_0\
    );
\word_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => word_cnt_reg(4),
      I1 => word_cnt_reg(2),
      I2 => word_cnt_reg(1),
      I3 => word_cnt_reg(0),
      I4 => word_cnt_reg(3),
      O => p_0_in(4)
    );
\word_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => mux_data_valid_o,
      D => p_0_in(0),
      Q => word_cnt_reg(0),
      R => \word_cnt[4]_i_1_n_0\
    );
\word_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => mux_data_valid_o,
      D => p_0_in(1),
      Q => word_cnt_reg(1),
      R => \word_cnt[4]_i_1_n_0\
    );
\word_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => mux_data_valid_o,
      D => p_0_in(2),
      Q => word_cnt_reg(2),
      R => \word_cnt[4]_i_1_n_0\
    );
\word_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => mux_data_valid_o,
      D => p_0_in(3),
      Q => word_cnt_reg(3),
      R => \word_cnt[4]_i_1_n_0\
    );
\word_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => mux_data_valid_o,
      D => p_0_in(4),
      Q => word_cnt_reg(4),
      R => \word_cnt[4]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zusys_capture_logic_test_0_0 is
  port (
    ctrl : in STD_LOGIC_VECTOR ( 31 downto 0 );
    frame_cnt_target : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cap_enable : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    cap_status : out STD_LOGIC;
    frame_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_aresetn : out STD_LOGIC;
    missed_words : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_aclk : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    mux_data_valid_o : in STD_LOGIC;
    gpio : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_mux0_data_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_mux1_data_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_mux2_data_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_mux3_data_o : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zusys_capture_logic_test_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zusys_capture_logic_test_0_0 : entity is "zusys_capture_logic_test_0_0,capture_logic_test,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zusys_capture_logic_test_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zusys_capture_logic_test_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zusys_capture_logic_test_0_0 : entity is "capture_logic_test,Vivado 2024.2";
end zusys_capture_logic_test_0_0;

architecture STRUCTURE of zusys_capture_logic_test_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^clk_in\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of fifo_aresetn : signal is "xilinx.com:signal:reset:1.0 fifo_aresetn RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of fifo_aresetn : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of fifo_aresetn : signal is "XIL_INTERFACENAME fifo_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 m_axis_aclk CLK";
  attribute X_INTERFACE_MODE of m_axis_aclk : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME m_axis_aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zusys_capture_logic_test_0_0_m_axis_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axis_aresetn RST";
  attribute X_INTERFACE_MODE of m_axis_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of m_axis_aresetn : signal is "XIL_INTERFACENAME m_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN zusys_capture_logic_test_0_0_m_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
begin
  \^clk_in\ <= clk_in;
  m_axis_aclk <= \^clk_in\;
  m_axis_tkeep(3) <= \<const1>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.zusys_capture_logic_test_0_0_capture_logic_test
     port map (
      cap_enable => cap_enable,
      cap_status_reg_0 => cap_status,
      clk_in => \^clk_in\,
      fifo_aresetn => fifo_aresetn,
      frame_cnt(31 downto 0) => frame_cnt(31 downto 0),
      frame_cnt_target(31 downto 0) => frame_cnt_target(31 downto 0),
      gpio(0) => gpio(0),
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      missed_words(31 downto 0) => missed_words(31 downto 0),
      mux_data_valid_o => mux_data_valid_o,
      s_mux0_data_o(7 downto 0) => s_mux0_data_o(7 downto 0),
      s_mux1_data_o(7 downto 0) => s_mux1_data_o(7 downto 0),
      s_mux2_data_o(7 downto 0) => s_mux2_data_o(7 downto 0),
      s_mux3_data_o(7 downto 0) => s_mux3_data_o(7 downto 0)
    );
end STRUCTURE;
