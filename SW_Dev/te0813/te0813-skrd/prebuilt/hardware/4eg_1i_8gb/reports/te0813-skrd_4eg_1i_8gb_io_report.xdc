current_instance zusys_i/RGPIO/vio_rgpio
create_waiver -type CDC -id {CDC-4} -user "vio" -desc "The path has combinational circuit. But from hardware prospective the design works perfectly and the signals crossing happen after a very long time from the source has the value." -tags "1050886" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*probe_in_reg_reg*"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*data_int_sync1_reg*"}]] -timestamp "Wed Oct  1 16:29:35 GMT 2025"
create_waiver -type CDC -id {CDC-1} -user "vio" -desc "The path has combinational circuit. But from hardware prospective the design works perfectly and the signals crossing happen after a very long time from the source has the value." -tags "1050886" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter { NAME =~  "*Hold_probe_in*" &&  IS_SEQUENTIAL }]] -to [get_pins -filter REF_PIN_NAME=~CE -of_objects [get_cells -hierarchical -filter { NAME =~  "*PROBE_IN_INST/probe_in_reg*" && IS_SEQUENTIAL}]] -timestamp "Wed Oct  1 16:29:35 GMT 2025"
current_instance -quiet
set_property PACKAGE_PIN J14 [get_ports BASE_sc0]
set_property PACKAGE_PIN F15 [get_ports BASE_sc5]
set_property PACKAGE_PIN H13 [get_ports BASE_sc6]
set_property PACKAGE_PIN H14 [get_ports BASE_sc7]
set_property PACKAGE_PIN A15 [get_ports BASE_sc10_io]
set_property PACKAGE_PIN B15 [get_ports BASE_sc11]
set_property PACKAGE_PIN C13 [get_ports BASE_sc12]
set_property PACKAGE_PIN C14 [get_ports BASE_sc13]
set_property PACKAGE_PIN E13 [get_ports BASE_sc14]
set_property PACKAGE_PIN E14 [get_ports BASE_sc15]
set_property PACKAGE_PIN A13 [get_ports BASE_sc16]
set_property PACKAGE_PIN B13 [get_ports BASE_sc17]
set_property PACKAGE_PIN A14 [get_ports BASE_sc18]
set_property PACKAGE_PIN B14 [get_ports BASE_sc19]
set_property PACKAGE_PIN G14 [get_ports I2S_lrclk]
set_property PACKAGE_PIN G15 [get_ports I2S_bclk]
set_property PACKAGE_PIN F13 [get_ports I2S_sdin]
set_property PACKAGE_PIN G13 [get_ports I2S_sdout]
current_instance dbg_hub/inst
create_waiver -type CDC -id {CDC-6} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD2/stat_reg_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD2/stat_reg_1_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-6} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD3/stat_reg_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD3/stat_reg_1_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-6} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gnxpm_cdc.wr_pntr_gc_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*.gsync_stage[1].rd_stg_inst/Q_reg_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-6} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gnxpm_cdc.wr_pntr_gc_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*.gsync_stage[1].rd_stg_inst/Q_reg_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-6} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gnxpm_cdc.rd_pntr_gc_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*.gsync_stage[1].wr_stg_inst/Q_reg_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-6} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gnxpm_cdc.rd_pntr_gc_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*.gsync_stage[1].wr_stg_inst/Q_reg_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-6} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_STAT/stat_reg_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_STAT/stat_reg_1_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~CLK -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/U_RD_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_rdfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM_reg*/RAM*"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ *U_RD_FIFO*gdm.dm_gen.dm*/gpr1.dout_i_reg*}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~CLK -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_WR/U_WR_FIFO/SUBCORE_FIFO.xsdbm_v3_0_3_wrfifo_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM_reg*/RAM*"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ *U_WR_FIFO*gdm.dm_gen.dm*/gpr1.dout_i_reg*}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_reg[0]"}]] -to [get_pins -filter REF_PIN_NAME=~R -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD4/shift_reg_in_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_reg[0]"}]] -to [get_pins -filter REF_PIN_NAME=~R -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD5/shift_reg_in_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_reg[0]"}]] -to [get_pins -filter REF_PIN_NAME=~R -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/shift_reg_in_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/shift_reg_in_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD1/ctl_reg_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD4/shift_reg_in_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD4/ctl_reg_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD5/shift_reg_in_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD5/ctl_reg_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/shift_reg_in_reg[0]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_STAT/stat_reg_reg[0]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/shift_reg_in_reg[*]"}]] -to [get_pins -filter REF_PIN_NAME=~D -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD7_CTL/ctl_reg_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
create_waiver -type CDC -id {CDC-15} -user "xsdbm" -desc "CDC is handled through handshake process" -tags "1025927" -scope -internal -from [get_pins -filter REF_PIN_NAME=~C -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/rddata_rst_reg"}]] -to [get_pins -filter REF_PIN_NAME=~CLR -of_objects [get_cells -hierarchical -filter {NAME =~ "*BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_ICON_INTERFACE/U_CMD6_RD/shift_reg_in_reg[*]"}]] -timestamp "Wed Oct  1 16:31:35 GMT 2025"
current_instance -quiet
set_property DIRECTION OUT [get_ports BASE_sc0]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc0]
set_property DRIVE 12 [get_ports BASE_sc0]
set_property SLEW SLOW [get_ports BASE_sc0]
set_property DIRECTION INOUT [get_ports BASE_sc10_io]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc10_io]
set_property DRIVE 12 [get_ports BASE_sc10_io]
set_property SLEW SLOW [get_ports BASE_sc10_io]
set_property DIRECTION OUT [get_ports BASE_sc11]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc11]
set_property DRIVE 12 [get_ports BASE_sc11]
set_property SLEW SLOW [get_ports BASE_sc11]
set_property DIRECTION IN [get_ports BASE_sc12]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc12]
set_property DIRECTION IN [get_ports BASE_sc13]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc13]
set_property DIRECTION OUT [get_ports BASE_sc14]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc14]
set_property DRIVE 12 [get_ports BASE_sc14]
set_property SLEW SLOW [get_ports BASE_sc14]
set_property DIRECTION OUT [get_ports BASE_sc15]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc15]
set_property DRIVE 12 [get_ports BASE_sc15]
set_property SLEW SLOW [get_ports BASE_sc15]
set_property DIRECTION OUT [get_ports BASE_sc16]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc16]
set_property DRIVE 12 [get_ports BASE_sc16]
set_property SLEW SLOW [get_ports BASE_sc16]
set_property DIRECTION OUT [get_ports BASE_sc17]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc17]
set_property DRIVE 12 [get_ports BASE_sc17]
set_property SLEW SLOW [get_ports BASE_sc17]
set_property DIRECTION OUT [get_ports BASE_sc18]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc18]
set_property DRIVE 12 [get_ports BASE_sc18]
set_property SLEW SLOW [get_ports BASE_sc18]
set_property DIRECTION IN [get_ports BASE_sc19]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc19]
set_property DIRECTION IN [get_ports BASE_sc5]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc5]
set_property DIRECTION OUT [get_ports BASE_sc6]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc6]
set_property DRIVE 12 [get_ports BASE_sc6]
set_property SLEW SLOW [get_ports BASE_sc6]
set_property DIRECTION OUT [get_ports BASE_sc7]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc7]
set_property DRIVE 12 [get_ports BASE_sc7]
set_property SLEW SLOW [get_ports BASE_sc7]
set_property DIRECTION IN [get_ports I2S_bclk]
set_property IOSTANDARD LVCMOS18 [get_ports I2S_bclk]
set_property DIRECTION IN [get_ports I2S_lrclk]
set_property IOSTANDARD LVCMOS18 [get_ports I2S_lrclk]
set_property DIRECTION OUT [get_ports I2S_sdin]
set_property IOSTANDARD LVCMOS18 [get_ports I2S_sdin]
set_property DRIVE 12 [get_ports I2S_sdin]
set_property SLEW SLOW [get_ports I2S_sdin]
set_property DIRECTION IN [get_ports I2S_sdout]
set_property IOSTANDARD LVCMOS18 [get_ports I2S_sdout]
#revert back to original instance
current_instance -quiet
