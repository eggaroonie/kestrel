vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconcat_v2_1_6
vlib questa_lib/msim/xlslice_v1_0_4
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/proc_sys_reset_v5_0_16
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_19
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_19
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/fifo_generator_v13_2_11
vlib questa_lib/msim/lib_fifo_v1_0_20
vlib questa_lib/msim/lib_srl_fifo_v1_0_4
vlib questa_lib/msim/axi_datamover_v5_1_35
vlib questa_lib/msim/axi_sg_v4_1_19
vlib questa_lib/msim/axi_dma_v7_1_34
vlib questa_lib/msim/xlconstant_v1_1_9
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_33
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_data_fifo_v2_0_15

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconcat_v2_1_6 questa_lib/msim/xlconcat_v2_1_6
vmap xlslice_v1_0_4 questa_lib/msim/xlslice_v1_0_4
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 questa_lib/msim/proc_sys_reset_v5_0_16
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 questa_lib/msim/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_19
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_11 questa_lib/msim/fifo_generator_v13_2_11
vmap lib_fifo_v1_0_20 questa_lib/msim/lib_fifo_v1_0_20
vmap lib_srl_fifo_v1_0_4 questa_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_35 questa_lib/msim/axi_datamover_v5_1_35
vmap axi_sg_v4_1_19 questa_lib/msim/axi_sg_v4_1_19
vmap axi_dma_v7_1_34 questa_lib/msim/axi_dma_v7_1_34
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 questa_lib/msim/axi_register_slice_v2_1_33
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_15 questa_lib/msim/axis_data_fifo_v2_0_15

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ipshared/f465/src/ddrspi_master.vhd" \
"../../../bd/zusys/ipshared/f465/src/ddsrpi_slave.vhd" \
"../../../bd/zusys/ipshared/f465/src/RGPIO_top.vhd" \
"../../../bd/zusys/ip/zusys_RGPIO_Master_CPLD_0/sim/zusys_RGPIO_Master_CPLD_0.vhd" \
"../../../bd/zusys/ip/zusys_RGPIO_Slave_CPLD_0/sim/zusys_RGPIO_Slave_CPLD_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_vio_rgpio_0/sim/zusys_vio_rgpio_0.v" \

vlog -work xlconcat_v2_1_6 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_xlconcat_2_0/sim/zusys_xlconcat_2_0.v" \
"../../../bd/zusys/ip/zusys_xlconcat_3_0/sim/zusys_xlconcat_3_0.v" \

vlog -work xlslice_v1_0_4 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_xlslice_0_0/sim/zusys_xlslice_0_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_1_0/sim/zusys_xlslice_1_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_2_0/sim/zusys_xlslice_2_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_3_0/sim/zusys_xlslice_3_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_4_0/sim/zusys_xlslice_4_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_5_0/sim/zusys_xlslice_5_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_6_0/sim/zusys_xlslice_6_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_7_0/sim/zusys_xlslice_7_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_8_0/sim/zusys_xlslice_8_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_9_0/sim/zusys_xlslice_9_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_10_0/sim/zusys_xlslice_10_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_11_0/sim/zusys_xlslice_11_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_12_0/sim/zusys_xlslice_12_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_13_0/sim/zusys_xlslice_13_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_14_0/sim/zusys_xlslice_14_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_15_0/sim/zusys_xlslice_15_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_16_0/sim/zusys_xlslice_16_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_17_0/sim/zusys_xlslice_17_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_18_0/sim/zusys_xlslice_18_0.v" \
"../../../bd/zusys/ip/zusys_xlslice_19_0/sim/zusys_xlslice_19_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ipshared/c35f/src/SC0808BF.vhd" \
"../../../bd/zusys/ip/zusys_SC0808BF_0_0/sim/zusys_SC0808BF_0_0.vhd" \
"../../../bd/zusys/ipshared/98b5/hdl/axis_live_audio_v1_0.vhd" \
"../../../bd/zusys/ip/zusys_axis_live_audio_0_0/sim/zusys_axis_live_audio_0_0.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ip/zusys_proc_sys_reset_0_0/sim/zusys_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_vio_general_0/sim/zusys_vio_general_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_zynq_ultra_ps_e_0_0/sim/zusys_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ip/zusys_rst_ps8_0_100M_0/sim/zusys_rst_ps8_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_4 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_11 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_20 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/e160/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_35 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4277/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_19 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/fc5d/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_34 -64 -93  \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/70ff/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ip/zusys_axi_dma_0_1/sim/zusys_axi_dma_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/sim/bd_1578.v" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_0/sim/bd_1578_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_1/sim/bd_1578_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_2/sim/bd_1578_arinsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_3/sim/bd_1578_rinsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_4/sim/bd_1578_awinsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_5/sim/bd_1578_winsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_6/sim/bd_1578_binsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_7/sim/bd_1578_aroutsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_8/sim/bd_1578_routsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_9/sim/bd_1578_awoutsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_10/sim/bd_1578_woutsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_11/sim/bd_1578_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_12/sim/bd_1578_arni_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_13/sim/bd_1578_rni_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_14/sim/bd_1578_awni_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_15/sim/bd_1578_wni_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_16/sim/bd_1578_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_17/sim/bd_1578_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_18/sim/bd_1578_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_19/sim/bd_1578_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_20/sim/bd_1578_s00a2s_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_21/sim/bd_1578_sarn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_22/sim/bd_1578_srn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_23/sim/bd_1578_sawn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_24/sim/bd_1578_swn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_25/sim/bd_1578_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_26/sim/bd_1578_m00s2a_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_27/sim/bd_1578_m00arn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_28/sim/bd_1578_m00rn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_29/sim/bd_1578_m00awn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_30/sim/bd_1578_m00wn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_31/sim/bd_1578_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_32/sim/bd_1578_m00e_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_33/sim/bd_1578_m01s2a_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_34/sim/bd_1578_m01arn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_35/sim/bd_1578_m01rn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_36/sim/bd_1578_m01awn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_37/sim/bd_1578_m01wn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_38/sim/bd_1578_m01bn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_4/bd_0/ip/ip_39/sim/bd_1578_m01e_0.sv" \

vlog -work axi_register_slice_v2_1_33 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_4/sim/zusys_axi_smc_4.v" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/sim/bd_2aca.v" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_2aca_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_2aca_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_2aca_arsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_2aca_rsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_2aca_awsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_2aca_wsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_2aca_bsw_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_2aca_s01mmu_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_2aca_s01tr_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_2aca_s01sic_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_2aca_s01a2s_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_11/sim/bd_2aca_sawn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_12/sim/bd_2aca_swn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_13/sim/bd_2aca_sbn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_14/sim/bd_2aca_s02mmu_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_15/sim/bd_2aca_s02tr_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_16/sim/bd_2aca_s02sic_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_17/sim/bd_2aca_s02a2s_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_18/sim/bd_2aca_sarn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_19/sim/bd_2aca_srn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_20/sim/bd_2aca_sawn_1.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_21/sim/bd_2aca_swn_1.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_22/sim/bd_2aca_sbn_1.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_23/sim/bd_2aca_m00s2a_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_24/sim/bd_2aca_m00arn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_25/sim/bd_2aca_m00rn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_26/sim/bd_2aca_m00awn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_27/sim/bd_2aca_m00wn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_28/sim/bd_2aca_m00bn_0.sv" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/bd_0/ip/ip_29/sim/bd_2aca_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axi_smc_1_0/sim/zusys_axi_smc_1_0.v" \

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_15 -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/2b6a/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/0127/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/434f/hdl" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../KestrelDev_V_0_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_axis_data_fifo_0_0/sim/zusys_axis_data_fifo_0_0.v" \
"../../../bd/zusys/ip/zusys_xlconcat_0_0/sim/zusys_xlconcat_0_0.v" \
"../../../bd/zusys/ip/zusys_capture_logic_test_0_0/sim/zusys_capture_logic_test_0_0.v" \
"../../../bd/zusys/ip/zusys_AXI4Lite_CaptureLogic_0_0/sim/zusys_AXI4Lite_CaptureLogic_0_0.v" \
"../../../bd/zusys/ip/zusys_dummy_AISC110C_0_0/sim/zusys_dummy_AISC110C_0_0.v" \
"../../../bd/zusys/sim/zusys.v" \

vlog -work xil_defaultlib \
"glbl.v"

