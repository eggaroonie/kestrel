transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+AXILite2_0  -L xil_defaultlib -L xilinx_vip -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.AXILite2_0 xil_defaultlib.glbl

do {AXILite2_0.udo}

run 1000ns

endsim

quit -force
