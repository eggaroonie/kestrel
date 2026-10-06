// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module zusys (
  BASE_sc5,
  BASE_sc7,
  BASE_sc6,
  BASE_sc10_i,
  BASE_sc15,
  BASE_sc13,
  BASE_sc14,
  BASE_sc10_o,
  BASE_sc11,
  BASE_sc12,
  BASE_sc10_t,
  BASE_sc0,
  BASE_sc17,
  BASE_sc18,
  BASE_sc16,
  BASE_sc19,
  I2S_sdin,
  I2S_lrclk,
  I2S_sdout,
  I2S_bclk,
  ex_io5,
  dir4,
  dir_unused
);

  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC5" *)
  (* X_INTERFACE_MODE = "master BASE" *)
  input BASE_sc5;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC7" *)
  output BASE_sc7;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC6" *)
  output BASE_sc6;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_I" *)
  input BASE_sc10_i;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC15" *)
  output BASE_sc15;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC13" *)
  input BASE_sc13;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC14" *)
  output BASE_sc14;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_O" *)
  output BASE_sc10_o;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC11" *)
  output BASE_sc11;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC12" *)
  input BASE_sc12;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC10_T" *)
  output BASE_sc10_t;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC0" *)
  output BASE_sc0;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC17" *)
  output BASE_sc17;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC18" *)
  output BASE_sc18;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC16" *)
  output BASE_sc16;
  (* X_INTERFACE_INFO = "xilinx.com:user:SC0808BF_bus:1.0 BASE SC19" *)
  input BASE_sc19;
  (* X_INTERFACE_INFO = "trenz.biz:user:I2S:1.0 I2S SDIN" *)
  (* X_INTERFACE_MODE = "slave I2S" *)
  output I2S_sdin;
  (* X_INTERFACE_INFO = "trenz.biz:user:I2S:1.0 I2S LRCLK" *)
  input I2S_lrclk;
  (* X_INTERFACE_INFO = "trenz.biz:user:I2S:1.0 I2S SDOUT" *)
  input I2S_sdout;
  (* X_INTERFACE_INFO = "trenz.biz:user:I2S:1.0 I2S BCLK" *)
  input I2S_bclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output ex_io5;
  (* X_INTERFACE_IGNORE = "true" *)
  output dir4;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]dir_unused;

  // stub module has no contents

endmodule
