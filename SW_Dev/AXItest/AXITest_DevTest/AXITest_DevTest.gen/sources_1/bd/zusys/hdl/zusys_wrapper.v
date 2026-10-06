//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sat Oct  3 15:01:41 2026
//Host        : JLaptop running 64-bit Ubuntu 26.04.1 LTS
//Command     : generate_target zusys_wrapper.bd
//Design      : zusys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zusys_wrapper
   (BASE_sc0,
    BASE_sc10_io,
    BASE_sc11,
    BASE_sc12,
    BASE_sc13,
    BASE_sc14,
    BASE_sc15,
    BASE_sc16,
    BASE_sc17,
    BASE_sc18,
    BASE_sc19,
    BASE_sc5,
    BASE_sc6,
    BASE_sc7,
    I2S_bclk,
    I2S_lrclk,
    I2S_sdin,
    I2S_sdout);
  output BASE_sc0;
  inout BASE_sc10_io;
  output BASE_sc11;
  input BASE_sc12;
  input BASE_sc13;
  output BASE_sc14;
  output BASE_sc15;
  output BASE_sc16;
  output BASE_sc17;
  output BASE_sc18;
  input BASE_sc19;
  input BASE_sc5;
  output BASE_sc6;
  output BASE_sc7;
  input I2S_bclk;
  input I2S_lrclk;
  output I2S_sdin;
  input I2S_sdout;

  wire BASE_sc0;
  wire BASE_sc10_i;
  wire BASE_sc10_io;
  wire BASE_sc10_o;
  wire BASE_sc10_t;
  wire BASE_sc11;
  wire BASE_sc12;
  wire BASE_sc13;
  wire BASE_sc14;
  wire BASE_sc15;
  wire BASE_sc16;
  wire BASE_sc17;
  wire BASE_sc18;
  wire BASE_sc19;
  wire BASE_sc5;
  wire BASE_sc6;
  wire BASE_sc7;
  wire I2S_bclk;
  wire I2S_lrclk;
  wire I2S_sdin;
  wire I2S_sdout;

  IOBUF BASE_sc10_iobuf
       (.I(BASE_sc10_o),
        .IO(BASE_sc10_io),
        .O(BASE_sc10_i),
        .T(BASE_sc10_t));
  zusys zusys_i
       (.BASE_sc0(BASE_sc0),
        .BASE_sc10_i(BASE_sc10_i),
        .BASE_sc10_o(BASE_sc10_o),
        .BASE_sc10_t(BASE_sc10_t),
        .BASE_sc11(BASE_sc11),
        .BASE_sc12(BASE_sc12),
        .BASE_sc13(BASE_sc13),
        .BASE_sc14(BASE_sc14),
        .BASE_sc15(BASE_sc15),
        .BASE_sc16(BASE_sc16),
        .BASE_sc17(BASE_sc17),
        .BASE_sc18(BASE_sc18),
        .BASE_sc19(BASE_sc19),
        .BASE_sc5(BASE_sc5),
        .BASE_sc6(BASE_sc6),
        .BASE_sc7(BASE_sc7),
        .I2S_bclk(I2S_bclk),
        .I2S_lrclk(I2S_lrclk),
        .I2S_sdin(I2S_sdin),
        .I2S_sdout(I2S_sdout));
endmodule
