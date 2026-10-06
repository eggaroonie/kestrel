-- (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- DO NOT MODIFY THIS FILE.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY zusys_vio_rgpio_0 IS
PORT (
CLK : IN STD_LOGIC;
probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
probe_in9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in10 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
probe_in11 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
probe_in12 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
probe_in13 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
probe_in14 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
probe_in15 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
probe_in16 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in18 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_in19 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) := "0";
probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0) := "0" ;
probe_out2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0) := "000000000000" ;
probe_out3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000" ;
probe_out4 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0) := "00" ;
probe_out5 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000" ;
probe_out6 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000" ;
probe_out7 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000" 
);
END zusys_vio_rgpio_0;
ARCHITECTURE zusys_vio_rgpio_0_arch OF zusys_vio_rgpio_0 IS
BEGIN
END zusys_vio_rgpio_0_arch;
