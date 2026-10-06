--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
--Date        : Thu Sep 24 12:10:35 2026
--Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
--Command     : generate_target zusys.bd
--Design      : zusys
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RGPIO_imp_139ZQEB is
  port (
    RGPIO_M_EXT1_clk : out STD_LOGIC;
    RGPIO_M_EXT1_rx : in STD_LOGIC;
    RGPIO_M_EXT1_tx : out STD_LOGIC;
    RGPIO_M_EXT_clk : out STD_LOGIC;
    RGPIO_M_EXT_rx : in STD_LOGIC;
    RGPIO_M_EXT_tx : out STD_LOGIC;
    RGPIO_M_RESET_N : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk1 : in STD_LOGIC
  );
end RGPIO_imp_139ZQEB;

architecture STRUCTURE of RGPIO_imp_139ZQEB is
  component zusys_RGPIO_Master_CPLD_0 is
  port (
    RGPIO_M_CLK : out STD_LOGIC;
    RGPIO_M_RX : in STD_LOGIC;
    RGPIO_M_TX : out STD_LOGIC;
    RGPIO_M_OUT : out STD_LOGIC_VECTOR ( 23 downto 0 );
    RGPIO_M_IN : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RGPIO_M_ENABLE : in STD_LOGIC;
    RGPIO_M_USRCLK : in STD_LOGIC;
    RGPIO_M_RESET_N : in STD_LOGIC
  );
  end component zusys_RGPIO_Master_CPLD_0;
  component zusys_RGPIO_Slave_CPLD_0 is
  port (
    RGPIO_M_CLK : out STD_LOGIC;
    RGPIO_M_RX : in STD_LOGIC;
    RGPIO_M_TX : out STD_LOGIC;
    RGPIO_M_OUT : out STD_LOGIC_VECTOR ( 23 downto 0 );
    RGPIO_M_IN : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RGPIO_M_ENABLE : in STD_LOGIC;
    RGPIO_M_USRCLK : in STD_LOGIC;
    RGPIO_M_RESET_N : in STD_LOGIC
  );
  end component zusys_RGPIO_Slave_CPLD_0;
  component zusys_vio_rgpio_0 is
  port (
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in8 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe_in9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_in11 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe_in12 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe_in13 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_in14 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe_in15 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe_in16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_out4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    probe_out5 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    probe_out6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    probe_out7 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component zusys_vio_rgpio_0;
  component zusys_xlconcat_2_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component zusys_xlconcat_2_0;
  component zusys_xlconcat_3_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component zusys_xlconcat_3_0;
  component zusys_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_0_0;
  component zusys_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_1_0;
  component zusys_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_2_0;
  component zusys_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_3_0;
  component zusys_xlslice_4_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_4_0;
  component zusys_xlslice_5_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_5_0;
  component zusys_xlslice_6_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_6_0;
  component zusys_xlslice_7_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_7_0;
  component zusys_xlslice_8_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component zusys_xlslice_8_0;
  component zusys_xlslice_9_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_9_0;
  component zusys_xlslice_10_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component zusys_xlslice_10_0;
  component zusys_xlslice_11_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component zusys_xlslice_11_0;
  component zusys_xlslice_12_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zusys_xlslice_12_0;
  component zusys_xlslice_13_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component zusys_xlslice_13_0;
  component zusys_xlslice_14_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component zusys_xlslice_14_0;
  component zusys_xlslice_15_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component zusys_xlslice_15_0;
  component zusys_xlslice_16_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_16_0;
  component zusys_xlslice_17_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_17_0;
  component zusys_xlslice_18_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_18_0;
  component zusys_xlslice_19_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_xlslice_19_0;
  signal RGPIO_Master_CPLD_RGPIO_M_OUT : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal RGPIO_Slave_CPLD_RGPIO_M_OUT : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal clk1_1 : STD_LOGIC;
  signal vio_rgpio_m_11dt8_MUX : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vio_rgpio_m_11dt8_muxsel : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vio_rgpio_m_12_CAN_FAULT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_15dt13_PHY_LEDS : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vio_rgpio_m_16_XMOD2BUTTON : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_17_S5_3_USER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_18_S5_4_FMCVADJ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_19_reserved : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_20_SD_WP : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_21_FMC_CLKDIR : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_22_PJTAG_TRST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_23_PJTAG_SRST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_m_23dt12_unused : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vio_rgpio_m_5dt0_leds : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vio_rgpio_m_7dt0_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vio_rgpio_m_7dt6_unused : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vio_rgpio_m_enable : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_s_0_S5_1_bootmode : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_s_11dt8_bootmode : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vio_rgpio_s_1_S5_2_bootmode : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_s_23dt12_PG : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vio_rgpio_s_23dt8_unused : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal vio_rgpio_s_2_xmod1_button : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_s_3_unused : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_rgpio_s_6dt5_SD_CD : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vio_rgpio_s_7dt0_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vio_rgpio_s_7dt6_ER_ERST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vio_rgpio_s_enable : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xlconcat_3_dout : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  clk1_1 <= clk1;
RGPIO_Master_CPLD: component zusys_RGPIO_Master_CPLD_0
     port map (
      RGPIO_M_CLK => RGPIO_M_EXT_clk,
      RGPIO_M_ENABLE => vio_rgpio_m_enable(0),
      RGPIO_M_IN(23 downto 0) => xlconcat_2_dout(23 downto 0),
      RGPIO_M_OUT(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      RGPIO_M_RESET_N => RGPIO_M_RESET_N,
      RGPIO_M_RX => RGPIO_M_EXT_rx,
      RGPIO_M_TX => RGPIO_M_EXT_tx,
      RGPIO_M_USRCLK => clk
    );
RGPIO_Slave_CPLD: component zusys_RGPIO_Slave_CPLD_0
     port map (
      RGPIO_M_CLK => RGPIO_M_EXT1_clk,
      RGPIO_M_ENABLE => vio_rgpio_s_enable(0),
      RGPIO_M_IN(23 downto 0) => xlconcat_3_dout(23 downto 0),
      RGPIO_M_OUT(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      RGPIO_M_RESET_N => RGPIO_M_RESET_N,
      RGPIO_M_RX => RGPIO_M_EXT1_rx,
      RGPIO_M_TX => RGPIO_M_EXT1_tx,
      RGPIO_M_USRCLK => clk
    );
vio_rgpio: component zusys_vio_rgpio_0
     port map (
      clk => clk1_1,
      probe_in0(0) => vio_rgpio_m_23_PJTAG_SRST(0),
      probe_in1(0) => vio_rgpio_m_22_PJTAG_TRST(0),
      probe_in10(3 downto 0) => vio_rgpio_m_11dt8_MUX(3 downto 0),
      probe_in11(7 downto 0) => vio_rgpio_m_7dt0_data(7 downto 0),
      probe_in12(11 downto 0) => vio_rgpio_s_23dt12_PG(11 downto 0),
      probe_in13(3 downto 0) => vio_rgpio_s_11dt8_bootmode(3 downto 0),
      probe_in14(1 downto 0) => vio_rgpio_s_7dt6_ER_ERST(1 downto 0),
      probe_in15(1 downto 0) => vio_rgpio_s_6dt5_SD_CD(1 downto 0),
      probe_in16(0) => vio_rgpio_s_3_unused(0),
      probe_in17(0) => vio_rgpio_s_2_xmod1_button(0),
      probe_in18(0) => vio_rgpio_s_1_S5_2_bootmode(0),
      probe_in19(0) => vio_rgpio_s_0_S5_1_bootmode(0),
      probe_in2(0) => vio_rgpio_m_21_FMC_CLKDIR(0),
      probe_in3(0) => vio_rgpio_m_20_SD_WP(0),
      probe_in4(0) => vio_rgpio_m_19_reserved(0),
      probe_in5(0) => vio_rgpio_m_18_S5_4_FMCVADJ(0),
      probe_in6(0) => vio_rgpio_m_17_S5_3_USER(0),
      probe_in7(0) => vio_rgpio_m_16_XMOD2BUTTON(0),
      probe_in8(2 downto 0) => vio_rgpio_m_15dt13_PHY_LEDS(2 downto 0),
      probe_in9(0) => vio_rgpio_m_12_CAN_FAULT(0),
      probe_out0(0) => vio_rgpio_m_enable(0),
      probe_out1(0) => vio_rgpio_s_enable(0),
      probe_out2(11 downto 0) => vio_rgpio_m_23dt12_unused(11 downto 0),
      probe_out3(3 downto 0) => vio_rgpio_m_11dt8_muxsel(3 downto 0),
      probe_out4(1 downto 0) => vio_rgpio_m_7dt6_unused(1 downto 0),
      probe_out5(5 downto 0) => vio_rgpio_m_5dt0_leds(5 downto 0),
      probe_out6(15 downto 0) => vio_rgpio_s_23dt8_unused(15 downto 0),
      probe_out7(7 downto 0) => vio_rgpio_s_7dt0_data(7 downto 0)
    );
xlconcat_2: component zusys_xlconcat_2_0
     port map (
      In0(5 downto 0) => vio_rgpio_m_5dt0_leds(5 downto 0),
      In1(1 downto 0) => vio_rgpio_m_7dt6_unused(1 downto 0),
      In2(3 downto 0) => vio_rgpio_m_11dt8_muxsel(3 downto 0),
      In3(11 downto 0) => vio_rgpio_m_23dt12_unused(11 downto 0),
      dout(23 downto 0) => xlconcat_2_dout(23 downto 0)
    );
xlconcat_3: component zusys_xlconcat_3_0
     port map (
      In0(7 downto 0) => vio_rgpio_s_7dt0_data(7 downto 0),
      In1(15 downto 0) => vio_rgpio_s_23dt8_unused(15 downto 0),
      dout(23 downto 0) => xlconcat_3_dout(23 downto 0)
    );
xlslice_0: component zusys_xlslice_0_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_23_PJTAG_SRST(0)
    );
xlslice_1: component zusys_xlslice_1_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_22_PJTAG_TRST(0)
    );
xlslice_10: component zusys_xlslice_10_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(3 downto 0) => vio_rgpio_m_11dt8_MUX(3 downto 0)
    );
xlslice_11: component zusys_xlslice_11_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(7 downto 0) => vio_rgpio_m_7dt0_data(7 downto 0)
    );
xlslice_12: component zusys_xlslice_12_0
     port map (
      Din(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(11 downto 0) => vio_rgpio_s_23dt12_PG(11 downto 0)
    );
xlslice_13: component zusys_xlslice_13_0
     port map (
      Din(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(3 downto 0) => vio_rgpio_s_11dt8_bootmode(3 downto 0)
    );
xlslice_14: component zusys_xlslice_14_0
     port map (
      Din(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(1 downto 0) => vio_rgpio_s_7dt6_ER_ERST(1 downto 0)
    );
xlslice_15: component zusys_xlslice_15_0
     port map (
      Din(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(1 downto 0) => vio_rgpio_s_6dt5_SD_CD(1 downto 0)
    );
xlslice_16: component zusys_xlslice_16_0
     port map (
      Din(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_s_3_unused(0)
    );
xlslice_17: component zusys_xlslice_17_0
     port map (
      Din(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_s_2_xmod1_button(0)
    );
xlslice_18: component zusys_xlslice_18_0
     port map (
      Din(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_s_1_S5_2_bootmode(0)
    );
xlslice_19: component zusys_xlslice_19_0
     port map (
      Din(23 downto 0) => RGPIO_Slave_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_s_0_S5_1_bootmode(0)
    );
xlslice_2: component zusys_xlslice_2_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_21_FMC_CLKDIR(0)
    );
xlslice_3: component zusys_xlslice_3_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_20_SD_WP(0)
    );
xlslice_4: component zusys_xlslice_4_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_19_reserved(0)
    );
xlslice_5: component zusys_xlslice_5_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_18_S5_4_FMCVADJ(0)
    );
xlslice_6: component zusys_xlslice_6_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_17_S5_3_USER(0)
    );
xlslice_7: component zusys_xlslice_7_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_16_XMOD2BUTTON(0)
    );
xlslice_8: component zusys_xlslice_8_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(2 downto 0) => vio_rgpio_m_15dt13_PHY_LEDS(2 downto 0)
    );
xlslice_9: component zusys_xlslice_9_0
     port map (
      Din(23 downto 0) => RGPIO_Master_CPLD_RGPIO_M_OUT(23 downto 0),
      Dout(0) => vio_rgpio_m_12_CAN_FAULT(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- Important TEBF0808 CPLD Update to REV07 is needed to use this RGPIO definition!!!
  -- Important TEBF0808 CPLD Update to REV07 is needed to use this RGPIO definition!!!
  entity zusys is
  port (
    BASE_sc0 : out STD_LOGIC;
    BASE_sc10_i : in STD_LOGIC;
    BASE_sc10_o : out STD_LOGIC;
    BASE_sc10_t : out STD_LOGIC;
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of zusys : entity is "zusys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zusys,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=31,numReposBlks=30,numNonXlnxBlks=4,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,""da_zynq_ultra_ps_e_cnt""=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of zusys : entity is "zusys.hwdef";
end zusys;

architecture STRUCTURE of zusys is
  component zusys_SC0808BF_0_0 is
  port (
    PS_AUX_DI : out STD_LOGIC;
    PS_AUX_DO : in STD_LOGIC;
    PS_AUX_OE : in STD_LOGIC;
    PS_DP_HPD : out STD_LOGIC;
    SC0 : out STD_LOGIC;
    SC5 : in STD_LOGIC;
    SC6 : out STD_LOGIC;
    SC7 : out STD_LOGIC;
    SC10_I : in STD_LOGIC;
    SC10_O : out STD_LOGIC;
    SC10_T : out STD_LOGIC;
    SC11 : out STD_LOGIC;
    SC12 : in STD_LOGIC;
    SC13 : in STD_LOGIC;
    SC15 : out STD_LOGIC;
    SC14 : out STD_LOGIC;
    SC16 : out STD_LOGIC;
    SC17 : out STD_LOGIC;
    SC18 : out STD_LOGIC;
    SC19 : in STD_LOGIC;
    CAN_RX : out STD_LOGIC;
    CAN_TX : in STD_LOGIC;
    CAN_S : in STD_LOGIC;
    LED_HD : in STD_LOGIC;
    LED_XMOD2 : in STD_LOGIC;
    RGPIO_M_CLK : in STD_LOGIC;
    RGPIO_M_RX : out STD_LOGIC;
    RGPIO_M_TX : in STD_LOGIC;
    RGPIO_S_CLK : in STD_LOGIC;
    RGPIO_S_RX : out STD_LOGIC;
    RGPIO_S_TX : in STD_LOGIC
  );
  end component zusys_SC0808BF_0_0;
  component zusys_axis_live_audio_0_0 is
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
  end component zusys_axis_live_audio_0_0;
  component zusys_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_proc_sys_reset_0_0;
  component zusys_vio_general_0 is
  port (
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zusys_vio_general_0;
  component zusys_zynq_ultra_ps_e_0_0 is
  port (
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    emio_can0_phy_tx : out STD_LOGIC;
    emio_can0_phy_rx : in STD_LOGIC;
    dp_audio_ref_clk : out STD_LOGIC;
    dp_s_axis_audio_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dp_s_axis_audio_tid : in STD_LOGIC;
    dp_s_axis_audio_tvalid : in STD_LOGIC;
    dp_s_axis_audio_tready : out STD_LOGIC;
    dp_m_axis_mixed_audio_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dp_m_axis_mixed_audio_tid : out STD_LOGIC;
    dp_m_axis_mixed_audio_tvalid : out STD_LOGIC;
    dp_m_axis_mixed_audio_tready : in STD_LOGIC;
    dp_s_axis_audio_clk : in STD_LOGIC;
    dp_aux_data_in : in STD_LOGIC;
    dp_aux_data_out : out STD_LOGIC;
    dp_aux_data_oe_n : out STD_LOGIC;
    dp_hot_plug_detect : in STD_LOGIC;
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC;
    pl_clk1 : out STD_LOGIC
  );
  end component zusys_zynq_ultra_ps_e_0_0;
  signal RGPIO_Master_CPLD_RGPIO_M_EXT_CLK : STD_LOGIC;
  signal RGPIO_Master_CPLD_RGPIO_M_EXT_RX : STD_LOGIC;
  signal RGPIO_Master_CPLD_RGPIO_M_EXT_TX : STD_LOGIC;
  signal RGPIO_Slave_CPLD_RGPIO_M_EXT_CLK : STD_LOGIC;
  signal RGPIO_Slave_CPLD_RGPIO_M_EXT_RX : STD_LOGIC;
  signal RGPIO_Slave_CPLD_RGPIO_M_EXT_TX : STD_LOGIC;
  signal SC0808BF_0_PS_AUX_DI : STD_LOGIC;
  signal SC0808BF_0_PS_DP_HPD : STD_LOGIC;
  signal axis_live_audio_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_live_audio_0_m_axis_TID : STD_LOGIC;
  signal axis_live_audio_0_m_axis_TREADY : STD_LOGIC;
  signal axis_live_audio_0_m_axis_TVALID : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_CAN_0_S : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_LED_HD : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_LED_XMOD2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ultra_ps_e_0_CAN_0_RX : STD_LOGIC;
  signal zynq_ultra_ps_e_0_CAN_0_TX : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_dp_audio_ref_clk : STD_LOGIC;
  signal zynq_ultra_ps_e_0_dp_aux_data_oe_n : STD_LOGIC;
  signal zynq_ultra_ps_e_0_dp_aux_data_out : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_clk1 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp2_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp2_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp2_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp2_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_maxigp2_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp2_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BASE_sc0 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC0";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of BASE_sc0 : signal is "Master";
  attribute X_INTERFACE_INFO of BASE_sc10_i : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_I";
  attribute X_INTERFACE_INFO of BASE_sc10_o : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_O";
  attribute X_INTERFACE_INFO of BASE_sc10_t : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_T";
  attribute X_INTERFACE_INFO of BASE_sc11 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC11";
  attribute X_INTERFACE_INFO of BASE_sc12 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC12";
  attribute X_INTERFACE_INFO of BASE_sc13 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC13";
  attribute X_INTERFACE_INFO of BASE_sc14 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC14";
  attribute X_INTERFACE_INFO of BASE_sc15 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC15";
  attribute X_INTERFACE_INFO of BASE_sc16 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC16";
  attribute X_INTERFACE_INFO of BASE_sc17 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC17";
  attribute X_INTERFACE_INFO of BASE_sc18 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC18";
  attribute X_INTERFACE_INFO of BASE_sc19 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC19";
  attribute X_INTERFACE_INFO of BASE_sc5 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC5";
  attribute X_INTERFACE_INFO of BASE_sc6 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC6";
  attribute X_INTERFACE_INFO of BASE_sc7 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE SC7";
  attribute X_INTERFACE_INFO of I2S_bclk : signal is "trenz.biz:user:I2S:1.0 I2S BCLK";
  attribute X_INTERFACE_MODE of I2S_bclk : signal is "Slave";
  attribute X_INTERFACE_INFO of I2S_lrclk : signal is "trenz.biz:user:I2S:1.0 I2S LRCLK";
  attribute X_INTERFACE_INFO of I2S_sdin : signal is "trenz.biz:user:I2S:1.0 I2S SDIN";
  attribute X_INTERFACE_INFO of I2S_sdout : signal is "trenz.biz:user:I2S:1.0 I2S SDOUT";
begin
RGPIO: entity work.RGPIO_imp_139ZQEB
     port map (
      RGPIO_M_EXT1_clk => RGPIO_Slave_CPLD_RGPIO_M_EXT_CLK,
      RGPIO_M_EXT1_rx => RGPIO_Slave_CPLD_RGPIO_M_EXT_RX,
      RGPIO_M_EXT1_tx => RGPIO_Slave_CPLD_RGPIO_M_EXT_TX,
      RGPIO_M_EXT_clk => RGPIO_Master_CPLD_RGPIO_M_EXT_CLK,
      RGPIO_M_EXT_rx => RGPIO_Master_CPLD_RGPIO_M_EXT_RX,
      RGPIO_M_EXT_tx => RGPIO_Master_CPLD_RGPIO_M_EXT_TX,
      RGPIO_M_RESET_N => proc_sys_reset_0_peripheral_aresetn(0),
      clk => zynq_ultra_ps_e_0_pl_clk0,
      clk1 => zynq_ultra_ps_e_0_pl_clk1
    );
SC0808BF_0: component zusys_SC0808BF_0_0
     port map (
      CAN_RX => zynq_ultra_ps_e_0_CAN_0_RX,
      CAN_S => vio_CAN_0_S(0),
      CAN_TX => zynq_ultra_ps_e_0_CAN_0_TX,
      LED_HD => vio_LED_HD(0),
      LED_XMOD2 => vio_LED_XMOD2(0),
      PS_AUX_DI => SC0808BF_0_PS_AUX_DI,
      PS_AUX_DO => zynq_ultra_ps_e_0_dp_aux_data_out,
      PS_AUX_OE => zynq_ultra_ps_e_0_dp_aux_data_oe_n,
      PS_DP_HPD => SC0808BF_0_PS_DP_HPD,
      RGPIO_M_CLK => RGPIO_Master_CPLD_RGPIO_M_EXT_CLK,
      RGPIO_M_RX => RGPIO_Master_CPLD_RGPIO_M_EXT_RX,
      RGPIO_M_TX => RGPIO_Master_CPLD_RGPIO_M_EXT_TX,
      RGPIO_S_CLK => RGPIO_Slave_CPLD_RGPIO_M_EXT_CLK,
      RGPIO_S_RX => RGPIO_Slave_CPLD_RGPIO_M_EXT_RX,
      RGPIO_S_TX => RGPIO_Slave_CPLD_RGPIO_M_EXT_TX,
      SC0 => BASE_sc0,
      SC10_I => BASE_sc10_i,
      SC10_O => BASE_sc10_o,
      SC10_T => BASE_sc10_t,
      SC11 => BASE_sc11,
      SC12 => BASE_sc12,
      SC13 => BASE_sc13,
      SC14 => BASE_sc14,
      SC15 => BASE_sc15,
      SC16 => BASE_sc16,
      SC17 => BASE_sc17,
      SC18 => BASE_sc18,
      SC19 => BASE_sc19,
      SC5 => BASE_sc5,
      SC6 => BASE_sc6,
      SC7 => BASE_sc7
    );
axis_live_audio_0: component zusys_axis_live_audio_0_0
     port map (
      ADC_SDATA => I2S_sdout,
      BCLK => I2S_bclk,
      DAC_SDATA => I2S_sdin,
      LRCLK => I2S_lrclk,
      axis_aclk => zynq_ultra_ps_e_0_dp_audio_ref_clk,
      m_axis_tdata(31 downto 0) => axis_live_audio_0_m_axis_TDATA(31 downto 0),
      m_axis_tid => axis_live_audio_0_m_axis_TID,
      m_axis_tready => axis_live_audio_0_m_axis_TREADY,
      m_axis_tvalid => axis_live_audio_0_m_axis_TVALID,
      s_axis_tdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TDATA(31 downto 0),
      s_axis_tid => zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TID,
      s_axis_tready => zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TREADY,
      s_axis_tvalid => zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TVALID
    );
proc_sys_reset_0: component zusys_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => zynq_ultra_ps_e_0_pl_clk0
    );
vio_general: component zusys_vio_general_0
     port map (
      clk => zynq_ultra_ps_e_0_pl_clk1,
      probe_out0(0) => vio_LED_HD(0),
      probe_out1(0) => vio_LED_XMOD2(0),
      probe_out2(0) => vio_CAN_0_S(0)
    );
zynq_ultra_ps_e_0: component zusys_zynq_ultra_ps_e_0_0
     port map (
      dp_audio_ref_clk => zynq_ultra_ps_e_0_dp_audio_ref_clk,
      dp_aux_data_in => SC0808BF_0_PS_AUX_DI,
      dp_aux_data_oe_n => zynq_ultra_ps_e_0_dp_aux_data_oe_n,
      dp_aux_data_out => zynq_ultra_ps_e_0_dp_aux_data_out,
      dp_hot_plug_detect => SC0808BF_0_PS_DP_HPD,
      dp_m_axis_mixed_audio_tdata(31 downto 0) => zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TDATA(31 downto 0),
      dp_m_axis_mixed_audio_tid => zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TID,
      dp_m_axis_mixed_audio_tready => zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TREADY,
      dp_m_axis_mixed_audio_tvalid => zynq_ultra_ps_e_0_M_AXIS_MIXED_AUDIO_TVALID,
      dp_s_axis_audio_clk => zynq_ultra_ps_e_0_dp_audio_ref_clk,
      dp_s_axis_audio_tdata(31 downto 0) => axis_live_audio_0_m_axis_TDATA(31 downto 0),
      dp_s_axis_audio_tid => axis_live_audio_0_m_axis_TID,
      dp_s_axis_audio_tready => axis_live_audio_0_m_axis_TREADY,
      dp_s_axis_audio_tvalid => axis_live_audio_0_m_axis_TVALID,
      emio_can0_phy_rx => zynq_ultra_ps_e_0_CAN_0_RX,
      emio_can0_phy_tx => zynq_ultra_ps_e_0_CAN_0_TX,
      maxigp2_araddr(39 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_araddr_UNCONNECTED(39 downto 0),
      maxigp2_arburst(1 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_arburst_UNCONNECTED(1 downto 0),
      maxigp2_arcache(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_arcache_UNCONNECTED(3 downto 0),
      maxigp2_arid(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_arid_UNCONNECTED(15 downto 0),
      maxigp2_arlen(7 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_arlen_UNCONNECTED(7 downto 0),
      maxigp2_arlock => NLW_zynq_ultra_ps_e_0_maxigp2_arlock_UNCONNECTED,
      maxigp2_arprot(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_arprot_UNCONNECTED(2 downto 0),
      maxigp2_arqos(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_arqos_UNCONNECTED(3 downto 0),
      maxigp2_arready => '0',
      maxigp2_arsize(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_arsize_UNCONNECTED(2 downto 0),
      maxigp2_aruser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_aruser_UNCONNECTED(15 downto 0),
      maxigp2_arvalid => NLW_zynq_ultra_ps_e_0_maxigp2_arvalid_UNCONNECTED,
      maxigp2_awaddr(39 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awaddr_UNCONNECTED(39 downto 0),
      maxigp2_awburst(1 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awburst_UNCONNECTED(1 downto 0),
      maxigp2_awcache(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awcache_UNCONNECTED(3 downto 0),
      maxigp2_awid(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awid_UNCONNECTED(15 downto 0),
      maxigp2_awlen(7 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awlen_UNCONNECTED(7 downto 0),
      maxigp2_awlock => NLW_zynq_ultra_ps_e_0_maxigp2_awlock_UNCONNECTED,
      maxigp2_awprot(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awprot_UNCONNECTED(2 downto 0),
      maxigp2_awqos(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awqos_UNCONNECTED(3 downto 0),
      maxigp2_awready => '0',
      maxigp2_awsize(2 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awsize_UNCONNECTED(2 downto 0),
      maxigp2_awuser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_awuser_UNCONNECTED(15 downto 0),
      maxigp2_awvalid => NLW_zynq_ultra_ps_e_0_maxigp2_awvalid_UNCONNECTED,
      maxigp2_bid(15 downto 0) => B"0000000000000000",
      maxigp2_bready => NLW_zynq_ultra_ps_e_0_maxigp2_bready_UNCONNECTED,
      maxigp2_bresp(1 downto 0) => B"00",
      maxigp2_bvalid => '0',
      maxigp2_rdata(31 downto 0) => B"00000000000000000000000000000000",
      maxigp2_rid(15 downto 0) => B"0000000000000000",
      maxigp2_rlast => '0',
      maxigp2_rready => NLW_zynq_ultra_ps_e_0_maxigp2_rready_UNCONNECTED,
      maxigp2_rresp(1 downto 0) => B"00",
      maxigp2_rvalid => '0',
      maxigp2_wdata(31 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_wdata_UNCONNECTED(31 downto 0),
      maxigp2_wlast => NLW_zynq_ultra_ps_e_0_maxigp2_wlast_UNCONNECTED,
      maxigp2_wready => '0',
      maxigp2_wstrb(3 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp2_wstrb_UNCONNECTED(3 downto 0),
      maxigp2_wvalid => NLW_zynq_ultra_ps_e_0_maxigp2_wvalid_UNCONNECTED,
      maxihpm0_lpd_aclk => zynq_ultra_ps_e_0_pl_clk1,
      pl_clk0 => zynq_ultra_ps_e_0_pl_clk1,
      pl_clk1 => zynq_ultra_ps_e_0_pl_clk0,
      pl_resetn0 => zynq_ultra_ps_e_0_pl_resetn0
    );
end STRUCTURE;
