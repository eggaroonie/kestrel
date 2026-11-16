# dump_frames.tcl - copy captured frames out of DDR over JTAG.
# Normally run for you by tools/view_frames.py; you can also run it by hand.
#
# Usage (board connected, after a capture has finished):
#   /tools/Xilinx/Vitis/2024.2/bin/xsdb tools/dump_frames.tcl <start_addr> <num_frames> <out.bin>
#   e.g. xsdb tools/dump_frames.tcl 0x01E00000 10 frames.bin
#
# <start_addr> is the "Frames start at" address Kestrel_driver prints after a capture
# (the first capture after a launch starts at 0x01E00000). Each frame is 9600 bytes
# (80 x 120 pixels, 8 bits). Then view them with:  python3 tools/view_frames.py frames.bin

set FRAME_BYTES 9600

if {[llength $argv] != 3} {
    puts "usage: xsdb dump_frames.tcl <start_addr> <num_frames> <out.bin>"
    exit 1
}
lassign $argv addr nframes out

connect
# Read through the PSU memory view so the A53 cores don't have to be stopped.
if {[catch {targets -set -nocase -filter {name =~ "PSU"}}]} {
    targets -set -nocase -filter {name =~ "*A53*#0"}
}
set words [expr {$nframes * $FRAME_BYTES / 4}]
puts "Reading $nframes frames ($words words) from $addr ..."
mrd -force -bin -file $out $addr $words
puts "Wrote $out"
disconnect
