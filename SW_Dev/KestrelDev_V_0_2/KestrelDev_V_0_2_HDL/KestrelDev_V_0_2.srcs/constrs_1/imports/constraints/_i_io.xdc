#TEBF0818 
# system controller ip
#LED_HD SC0     J3:C13
#LED_XMOD SC17  J3:B19 
#CAN RX SC19    J3:B23 B26_L2_P
#CAN TX SC18    J3:B22 B26_L2_N
#CAN S SC16     J3:B18 B26_L3_N

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
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc0]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc5]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc6]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc7]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc10_io]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc11]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc12]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc13]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc14]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc15]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc16]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc17]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc18]
set_property IOSTANDARD LVCMOS18 [get_ports BASE_sc19]


# Audio Codec
#LRCLK      J3:D22 
#BCLK       J3:D23 
#DAC_SDATA  J3:C21 
#ADC_SDATA  J3:C22 
set_property PACKAGE_PIN G14 [get_ports I2S_lrclk ]
set_property PACKAGE_PIN G15 [get_ports I2S_bclk ]
set_property PACKAGE_PIN F13 [get_ports I2S_sdin ]
set_property PACKAGE_PIN G13 [get_ports I2S_sdout ]
set_property IOSTANDARD LVCMOS18 [get_ports I2S_lrclk ]
set_property IOSTANDARD LVCMOS18 [get_ports I2S_bclk ]
set_property IOSTANDARD LVCMOS18 [get_ports I2S_sdin ]
set_property IOSTANDARD LVCMOS18 [get_ports I2S_sdout ]

# ---------------------------------------------------------------------------
# AISC110C sensor: kestrel_ribbon_sensor -> ribbon -> kestrel_fmc_ribbon -> TEBF0818 FMC (J5)
# FMC pin -> Trenz net from SCH-TEBF0818-02A page 19 (FMC.SchDoc).
# Trenz net -> ball from the TE0813 3EG io_report (te0813-skrd_3eg_1e_4gb_io_report.csv).
# Banks 64/65 are HP banks powered from FMC_VADJ: FMC_VADJ must be set to 1.8 V.
# The sensor's VDDIO and VDDHSIO are both 1.8 V.
# Comment format: sensor signal   FMC pin   Trenz net
# ---------------------------------------------------------------------------

# Sensor clock: 100 MHz output from the sensor, on a global clock (GC) pin.
# CLK_IO    G6    B64_L12_P
set_property -dict {PACKAGE_PIN AE5 IOSTANDARD LVCMOS18} [get_ports CLK_IO]
create_clock -period 10.000 -name CLK_IO [get_ports CLK_IO]

# DATAVAL   D14   B64_L6_P
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVCMOS18} [get_ports DATAVAL]

## ---------------- D1[7:0] = sensor OUT1 (Bank 64) ----------------
# D1_0 C10 B64_L1_P | D1_1 H10 B64_L2_P | D1_2 D11 B64_L3_P | D1_3 G13 B64_L4_P
# D1_4 H8  B64_L7_P | D1_5 G9  B64_L8_P | D1_6 H13 B64_L9_P | D1_7 H16 B64_L10_P
set_property -dict {PACKAGE_PIN AC9 IOSTANDARD LVCMOS18} [get_ports {D1[0]}]
set_property -dict {PACKAGE_PIN AE9 IOSTANDARD LVCMOS18} [get_ports {D1[1]}]
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS18} [get_ports {D1[2]}]
set_property -dict {PACKAGE_PIN AD7 IOSTANDARD LVCMOS18} [get_ports {D1[3]}]
set_property -dict {PACKAGE_PIN AG9 IOSTANDARD LVCMOS18} [get_ports {D1[4]}]
set_property -dict {PACKAGE_PIN AF8 IOSTANDARD LVCMOS18} [get_ports {D1[5]}]
set_property -dict {PACKAGE_PIN AH8 IOSTANDARD LVCMOS18} [get_ports {D1[6]}]
set_property -dict {PACKAGE_PIN AG6 IOSTANDARD LVCMOS18} [get_ports {D1[7]}]

## ---------------- D2[7:0] = sensor OUT2 (Bank 64) ----------------
# D2_0 K25 B64_L13_P | D2_1 H20 B64_L15_P | D2_2 G15 B64_L16_P | D2_3 C19 B64_L17_P
# D2_4 G18 B64_L19_P | D2_5 E21 B64_L20_P | D2_6 E25 B64_L21_P | D2_7 F23 B64_L22_P
set_property -dict {PACKAGE_PIN AD5 IOSTANDARD LVCMOS18} [get_ports {D2[0]}]
set_property -dict {PACKAGE_PIN AB4 IOSTANDARD LVCMOS18} [get_ports {D2[1]}]
set_property -dict {PACKAGE_PIN AD2 IOSTANDARD LVCMOS18} [get_ports {D2[2]}]
set_property -dict {PACKAGE_PIN AB2 IOSTANDARD LVCMOS18} [get_ports {D2[3]}]
set_property -dict {PACKAGE_PIN AG4 IOSTANDARD LVCMOS18} [get_ports {D2[4]}]
set_property -dict {PACKAGE_PIN AG3 IOSTANDARD LVCMOS18} [get_ports {D2[5]}]
set_property -dict {PACKAGE_PIN AE3 IOSTANDARD LVCMOS18} [get_ports {D2[6]}]
set_property -dict {PACKAGE_PIN AE2 IOSTANDARD LVCMOS18} [get_ports {D2[7]}]

## ---------------- D3[7:0] = sensor OUT3 (Bank 65) ----------------
# D3_0 G36 B65_L1_P | D3_1 H22 B65_L2_P | D3_2 H35 B65_L3_P | D3_3 G28 B65_L4_P
# D3_4 D23 B65_L7_P | D3_5 G30 B65_L8_P | D3_6 G21 B65_L9_P | D3_7 C26 B65_L10_P
set_property -dict {PACKAGE_PIN W8  IOSTANDARD LVCMOS18} [get_ports {D3[0]}]
set_property -dict {PACKAGE_PIN U9  IOSTANDARD LVCMOS18} [get_ports {D3[1]}]
set_property -dict {PACKAGE_PIN U8  IOSTANDARD LVCMOS18} [get_ports {D3[2]}]
set_property -dict {PACKAGE_PIN R8  IOSTANDARD LVCMOS18} [get_ports {D3[3]}]
set_property -dict {PACKAGE_PIN L1  IOSTANDARD LVCMOS18} [get_ports {D3[4]}]
set_property -dict {PACKAGE_PIN J1  IOSTANDARD LVCMOS18} [get_ports {D3[5]}]
set_property -dict {PACKAGE_PIN K2  IOSTANDARD LVCMOS18} [get_ports {D3[6]}]
set_property -dict {PACKAGE_PIN H4  IOSTANDARD LVCMOS18} [get_ports {D3[7]}]

## ---------------- D4[7:0] = sensor OUT4 (Bank 65) ----------------
# D4_0 D20 B65_L13_P | D4_1 G24 B65_L15_P | D4_2 G33 B65_L16_P | D4_3 H28 B65_L17_P
# D4_4 H32 B65_L19_P | D4_5 F28 B65_L20_P | D4_6 J28 B65_L21_P | D4_7 J31 B65_L22_P
set_property -dict {PACKAGE_PIN L7  IOSTANDARD LVCMOS18} [get_ports {D4[0]}]
set_property -dict {PACKAGE_PIN N7  IOSTANDARD LVCMOS18} [get_ports {D4[1]}]
set_property -dict {PACKAGE_PIN P7  IOSTANDARD LVCMOS18} [get_ports {D4[2]}]
set_property -dict {PACKAGE_PIN N9  IOSTANDARD LVCMOS18} [get_ports {D4[3]}]
set_property -dict {PACKAGE_PIN J5  IOSTANDARD LVCMOS18} [get_ports {D4[4]}]
set_property -dict {PACKAGE_PIN J6  IOSTANDARD LVCMOS18} [get_ports {D4[5]}]
set_property -dict {PACKAGE_PIN J7  IOSTANDARD LVCMOS18} [get_ports {D4[6]}]
set_property -dict {PACKAGE_PIN K8  IOSTANDARD LVCMOS18} [get_ports {D4[7]}]

## ---------------- Sensor GPIO1..4 -> GPIO[0..3] (Bank 65) ----------------
# GPIO[0] feeds capture_logic as framesync: set sensor GPIO1 to framesync_out (GPIO Ctrl reg 0x8, bits 3:0 = 5).
# GPIO1 H37 B65_L5_P | GPIO2 D26 B65_L6_P | GPIO3 K28 B65_L11_P | GPIO4 C22 B65_L12_P
set_property -dict {PACKAGE_PIN R7  IOSTANDARD LVCMOS18} [get_ports {GPIO[0]}]
set_property -dict {PACKAGE_PIN R6  IOSTANDARD LVCMOS18} [get_ports {GPIO[1]}]
set_property -dict {PACKAGE_PIN K4  IOSTANDARD LVCMOS18} [get_ports {GPIO[2]}]
set_property -dict {PACKAGE_PIN L3  IOSTANDARD LVCMOS18} [get_ports {GPIO[3]}]

## ---------------- Sensor ENABLE: PS EMIO GPIO bit 0 (Bank 64) ----------------
# ENABLE    C15   B64_L5_P
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS18} [get_ports {ENABLE[0]}]

## ---------------- Sensor SPI: PS SPI0 through EMIO (Bank 64) ----------------
# SPI_CLK D18 B64_L18_P | SPI_CS (active low) D8 B64_L11_P | SPI_MISO J24 B64_L23_P | SPI_MOSI F25 B64_L24_P
set_property -dict {PACKAGE_PIN AB1 IOSTANDARD LVCMOS18} [get_ports SPI_CLK]
set_property -dict {PACKAGE_PIN AF7 IOSTANDARD LVCMOS18} [get_ports SPI_CS]
set_property -dict {PACKAGE_PIN AH2 IOSTANDARD LVCMOS18} [get_ports SPI_MISO]
set_property -dict {PACKAGE_PIN AF1 IOSTANDARD LVCMOS18} [get_ports SPI_MOSI]
