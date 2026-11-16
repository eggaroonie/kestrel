# bd_real_sensor.tcl
# Wire the zusys block design to the real AISC110C sensor in place of dummy_AISC110C_0.
#   - removes dummy_AISC110C_0 (and only the nets left with nothing on them)
#   - top-level ports CLK_IO, DATAVAL, D1..D4[7:0], GPIO[3:0] -> capture_logic_0
#   - restores capture_logic_0/m_axis_aresetn <- AXI4Lite_CaptureLogic_0/rstn
#   - PS SPI0 over EMIO -> SPI_CLK / SPI_CS / SPI_MOSI / SPI_MISO
#   - PS EMIO GPIO bit 0 -> ENABLE[0]
# Pin locations are in constrs_1/imports/constraints/_i_io.xdc.
# Safe to re-run: it only creates what is missing and only connects pins that have no net.
# Use with the project open:  source scripts/bd_real_sensor.tcl

open_bd_design [get_files zusys.bd]
current_bd_design zusys

proc rs_obj {name} {
    set o [get_bd_ports -quiet $name]
    if {$o eq ""} { set o [get_bd_pins -quiet $name] }
    if {$o eq ""} { error "bd_real_sensor: no port or pin named $name" }
    return $o
}

# Connect src to dst. Leaves dst alone if it is already on some other net.
proc rs_hook {src dst} {
    set s  [rs_obj $src]
    set d  [rs_obj $dst]
    set sn [get_bd_nets -quiet -of_objects $s]
    set dn [get_bd_nets -quiet -of_objects $d]
    if {$dn ne ""} {
        if {$sn ne "" && [get_property NAME $sn] eq [get_property NAME $dn]} {
            puts "RS: already wired  $src -> $dst"
        } else {
            puts "RS: WARNING $dst is already on net [get_property NAME $dn], left alone"
        }
        return
    }
    if {$sn ne ""} { connect_bd_net -net $sn $d } else { connect_bd_net $s $d }
    puts "RS: wired          $src -> $dst"
}

proc rs_port {name dir {width 0} {extra {}}} {
    if {[get_bd_ports -quiet $name] ne ""} { return }
    if {$width > 0} {
        create_bd_port -dir $dir -from [expr {$width - 1}] -to 0 {*}$extra $name
    } else {
        create_bd_port -dir $dir {*}$extra $name
    }
    puts "RS: created port   $name"
}

# --- remove the dummy sensor -------------------------------------------------
set dummy [get_bd_cells -quiet dummy_AISC110C_0]
if {$dummy ne ""} {
    foreach p [get_bd_pins -of_objects $dummy] {
        set n [get_bd_nets -quiet -of_objects $p]
        if {$n eq ""} { continue }
        disconnect_bd_net $n $p
        set left [expr {[llength [get_bd_pins -quiet -of_objects $n]] + [llength [get_bd_ports -quiet -of_objects $n]]}]
        if {$left < 2} { delete_bd_objs $n }
    }
    delete_bd_objs $dummy
    puts "RS: removed dummy_AISC110C_0"
}

# --- PS: SPI0 and one GPIO bit over EMIO ------------------------------------
set ps [get_bd_cells zynq_ultra_ps_e_0]
if {[get_property CONFIG.PSU__SPI0__PERIPHERAL__ENABLE $ps] ne "1" || [get_property CONFIG.PSU__SPI0__PERIPHERAL__IO $ps] ne "EMIO"} {
    set_property -dict [list CONFIG.PSU__SPI0__PERIPHERAL__ENABLE {1} CONFIG.PSU__SPI0__PERIPHERAL__IO {EMIO}] $ps
    puts "RS: PS SPI0 -> EMIO"
}
if {[get_property CONFIG.PSU__SPI0__GRP_SS0__ENABLE $ps] ne "1"} {
    if {[catch {set_property CONFIG.PSU__SPI0__GRP_SS0__ENABLE {1} $ps} err]} { puts "RS: note: SS0 enable not settable ($err)" }
}
if {[get_property CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE $ps] ne "1"} {
    set_property -dict [list CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE {1} CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO {1}] $ps
    puts "RS: PS EMIO GPIO width 1"
}

# The PS SPI in master mode raises a mode fault if its slave-select input is low.
if {[get_bd_cells -quiet spi0_ss_in_high] eq ""} {
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 spi0_ss_in_high
    set_property -dict [list CONFIG.CONST_VAL {1} CONFIG.CONST_WIDTH {1}] [get_bd_cells spi0_ss_in_high]
    puts "RS: created spi0_ss_in_high"
}

# --- top-level sensor ports --------------------------------------------------
rs_port CLK_IO   I 0 {-type clk -freq_hz 100000000}
rs_port DATAVAL  I
rs_port D1       I 8
rs_port D2       I 8
rs_port D3       I 8
rs_port D4       I 8
rs_port GPIO     I 4
rs_port ENABLE   O 1
rs_port SPI_CLK  O
rs_port SPI_CS   O
rs_port SPI_MOSI O
rs_port SPI_MISO I

# --- connections -------------------------------------------------------------
rs_hook CLK_IO   capture_logic_0/clk_in
rs_hook DATAVAL  capture_logic_0/mux_data_valid_o
rs_hook D1       capture_logic_0/s_mux0_data_o
rs_hook D2       capture_logic_0/s_mux1_data_o
rs_hook D3       capture_logic_0/s_mux2_data_o
rs_hook D4       capture_logic_0/s_mux3_data_o
rs_hook GPIO     capture_logic_0/gpio
rs_hook AXI4Lite_CaptureLogic_0/rstn capture_logic_0/m_axis_aresetn

rs_hook zynq_ultra_ps_e_0/emio_spi0_sclk_o SPI_CLK
rs_hook zynq_ultra_ps_e_0/emio_spi0_ss_o_n SPI_CS
rs_hook zynq_ultra_ps_e_0/emio_spi0_m_o    SPI_MOSI
rs_hook SPI_MISO                           zynq_ultra_ps_e_0/emio_spi0_m_i
rs_hook spi0_ss_in_high/dout               zynq_ultra_ps_e_0/emio_spi0_ss_i_n
rs_hook zynq_ultra_ps_e_0/emio_gpio_o      ENABLE

validate_bd_design
save_bd_design
make_wrapper -files [get_files zusys.bd] -top
puts "RS: done"
