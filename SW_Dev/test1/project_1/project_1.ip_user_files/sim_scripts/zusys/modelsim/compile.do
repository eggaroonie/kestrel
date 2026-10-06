vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconcat_v2_1_6
vlib modelsim_lib/msim/xlslice_v1_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_19
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_19

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconcat_v2_1_6 modelsim_lib/msim/xlconcat_v2_1_6
vmap xlslice_v1_0_4 modelsim_lib/msim/xlslice_v1_0_4
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_19

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ipshared/f465/src/ddrspi_master.vhd" \
"../../../bd/zusys/ipshared/f465/src/ddsrpi_slave.vhd" \
"../../../bd/zusys/ipshared/f465/src/RGPIO_top.vhd" \
"../../../bd/zusys/ip/zusys_RGPIO_Master_CPLD_0/sim/zusys_RGPIO_Master_CPLD_0.vhd" \
"../../../bd/zusys/ip/zusys_RGPIO_Slave_CPLD_0/sim/zusys_RGPIO_Slave_CPLD_0.vhd" \
"../../../bd/zusys/ip/zusys_vio_rgpio_0/sim/zusys_vio_rgpio_0.vhd" \

vlog -work xlconcat_v2_1_6 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_xlconcat_2_0/sim/zusys_xlconcat_2_0.v" \
"../../../bd/zusys/ip/zusys_xlconcat_3_0/sim/zusys_xlconcat_3_0.v" \

vlog -work xlslice_v1_0_4 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
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
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -64 -93  \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ip/zusys_proc_sys_reset_0_0/sim/zusys_proc_sys_reset_0_0.vhd" \
"../../../bd/zusys/ip/zusys_vio_general_0/sim/zusys_vio_general_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19 -64 -incr -mfcu  -sv -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../bd/zusys/ip/zusys_zynq_ultra_ps_e_0_0/sim/zusys_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zusys/ip/zusys_p2_blink_ps_0_0/sim/zusys_p2_blink_ps_0_0.vhd" \
"../../../bd/zusys/sim/zusys.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

