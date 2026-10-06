transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+zusys  -L xil_defaultlib -L xilinx_vip -L xlconcat_v2_1_6 -L xlslice_v1_0_4 -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_16 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_19 -L zynq_ultra_ps_e_vip_v1_0_19 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.zusys xil_defaultlib.glbl

do {zusys.udo}

run 1000ns

endsim

quit -force
