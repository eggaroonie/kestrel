# Post-write_bitstream hook for impl_1.
# Copies the freshly written bitstream into the Vitis app's launch folder so
# Run/Debug in Vitis always programs the latest build.
# Vivado runs this from inside the run directory (KestrelDev_V_0_1.runs/impl_1).

set src [file normalize zusys_wrapper.bit]
set dst /home/jackson/projects/kestrel/SW_Dev/KestrelDev_V_0_1/KestrelDev_V_0_1_WS_DDRTEST/Kesterl_driver/_ide/bitstream/kestrelv0_1.bit

file copy -force $src $dst
puts "INFO: copied $src -> $dst"
