transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_6
vlib riviera/xlslice_v1_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_19
vlib riviera/zynq_ultra_ps_e_vip_v1_0_19

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6
vmap xlslice_v1_0_4 riviera/xlslice_v1_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 riviera/zynq_ultra_ps_e_vip_v1_0_19

vlog -work xilinx_vip  -incr "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/zusys/ipshared/f465/src/ddrspi_master.vhd" \
"../../../bd/zusys/ipshared/f465/src/ddsrpi_slave.vhd" \
"../../../bd/zusys/ipshared/f465/src/RGPIO_top.vhd" \
"../../../bd/zusys/ip/zusys_RGPIO_Master_CPLD_0/sim/zusys_RGPIO_Master_CPLD_0.vhd" \
"../../../bd/zusys/ip/zusys_RGPIO_Slave_CPLD_0/sim/zusys_RGPIO_Slave_CPLD_0.vhd" \
"../../../bd/zusys/ip/zusys_vio_rgpio_0/sim/zusys_vio_rgpio_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../bd/zusys/ip/zusys_xlconcat_2_0/sim/zusys_xlconcat_2_0.v" \
"../../../bd/zusys/ip/zusys_xlconcat_3_0/sim/zusys_xlconcat_3_0.v" \

vlog -work xlslice_v1_0_4  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/a97c/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
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

vcom -work xil_defaultlib -93  -incr \
"../../../bd/zusys/ipshared/c35f/src/SC0808BF.vhd" \
"../../../bd/zusys/ip/zusys_SC0808BF_0_0/sim/zusys_SC0808BF_0_0.vhd" \
"../../../bd/zusys/ipshared/98b5/hdl/axis_live_audio_v1_0.vhd" \
"../../../bd/zusys/ip/zusys_axis_live_audio_0_0/sim/zusys_axis_live_audio_0_0.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/zusys/ip/zusys_proc_sys_reset_0_0/sim/zusys_proc_sys_reset_0_0.vhd" \
"../../../bd/zusys/ip/zusys_vio_general_0/sim/zusys_vio_general_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19  -incr "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/6f8f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/zusys/ipshared/4506/hdl" "+incdir+/tools/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib -l xlconcat_v2_1_6 -l xlslice_v1_0_4 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 \
"../../../bd/zusys/ip/zusys_zynq_ultra_ps_e_0_0/sim/zusys_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/zusys/ip/zusys_p2_blink_ps_0_0/sim/zusys_p2_blink_ps_0_0.vhd" \
"../../../bd/zusys/sim/zusys.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

