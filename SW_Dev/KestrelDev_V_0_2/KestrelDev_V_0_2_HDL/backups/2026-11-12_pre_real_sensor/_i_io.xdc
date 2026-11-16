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

# Sensor outputs

# Sensor GPIO 
set_property -dict {PACKAGE_PIN H37 IOSTANDARD LVCMOS18} [get_ports {GPIO[1]}]
set_property -dict {PACKAGE_PIN D26 IOSTANDARD LVCMOS18} [get_ports {GPIO[2]}]
set_property -dict {PACKAGE_PIN K28 IOSTANDARD LVCMOS18} [get_ports {GPIO[3]}]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS18} [get_ports {GPIO[4]}]

## ---------------- B1: m_mux0_data_o[7:0] (Bank 64) ----------------
set_property -dict {PACKAGE_PIN C10 IOSTANDARD LVCMOS18} [get_ports {m_mux0_data_o[0]}]
set_property -dict {PACKAGE_PIN H10 IOSTANDARD LVCMOS18} [get_ports {m_mux0_data_o[1]}]
set_property -dict {PACKAGE_PIN D11 IOSTANDARD LVCMOS18} [get_ports {m_mux0_data_o[2]}]
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS18} [get_ports {m_mux0_data_o[3]}]
set_property -dict {PACKAGE_PIN H8  IOSTANDARD LVCMOS18} [get_ports {m_mux0_data_o[4]}]
set_property -dict {PACKAGE_PIN G9  IOSTANDARD LVCMOS18} [get_ports {m_mux0_data_o[5]}]
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS18} [get_ports {m_mux0_data_o[6]}]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS18} [get_ports {m_mux0_data_o[7]}]

## ---------------- B2: m_mux1_data_o[7:0] (Bank 64) ----------------
set_property -dict {PACKAGE_PIN K25 IOSTANDARD LVCMOS18} [get_ports {m_mux1_data_o[0]}]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS18} [get_ports {m_mux1_data_o[1]}]
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS18} [get_ports {m_mux1_data_o[2]}]
set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVCMOS18} [get_ports {m_mux1_data_o[3]}]
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS18} [get_ports {m_mux1_data_o[4]}]
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS18} [get_ports {m_mux1_data_o[5]}]
set_property -dict {PACKAGE_PIN E25 IOSTANDARD LVCMOS18} [get_ports {m_mux1_data_o[6]}]
set_property -dict {PACKAGE_PIN F23 IOSTANDARD LVCMOS18} [get_ports {m_mux1_data_o[7]}]

## ---------------- B3: m_mux2_data_o[7:0] (Bank 65) ----------------
set_property -dict {PACKAGE_PIN G36 IOSTANDARD LVCMOS18} [get_ports {m_mux2_data_o[0]}]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS18} [get_ports {m_mux2_data_o[1]}]
set_property -dict {PACKAGE_PIN H35 IOSTANDARD LVCMOS18} [get_ports {m_mux2_data_o[2]}]
set_property -dict {PACKAGE_PIN G28 IOSTANDARD LVCMOS18} [get_ports {m_mux2_data_o[3]}]
set_property -dict {PACKAGE_PIN D23 IOSTANDARD LVCMOS18} [get_ports {m_mux2_data_o[4]}]
set_property -dict {PACKAGE_PIN G30 IOSTANDARD LVCMOS18} [get_ports {m_mux2_data_o[5]}]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS18} [get_ports {m_mux2_data_o[6]}]
set_property -dict {PACKAGE_PIN C26 IOSTANDARD LVCMOS18} [get_ports {m_mux2_data_o[7]}]

## ---------------- B4: m_mux3_data_o[7:0] (Bank 65) ----------------
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS18} [get_ports {m_mux3_data_o[0]}]
set_property -dict {PACKAGE_PIN G24 IOSTANDARD LVCMOS18} [get_ports {m_mux3_data_o[1]}]
set_property -dict {PACKAGE_PIN G33 IOSTANDARD LVCMOS18} [get_ports {m_mux3_data_o[2]}]
set_property -dict {PACKAGE_PIN H28 IOSTANDARD LVCMOS18} [get_ports {m_mux3_data_o[3]}]
set_property -dict {PACKAGE_PIN H32 IOSTANDARD LVCMOS18} [get_ports {m_mux3_data_o[4]}]
set_property -dict {PACKAGE_PIN F28 IOSTANDARD LVCMOS18} [get_ports {m_mux3_data_o[5]}]
set_property -dict {PACKAGE_PIN J28 IOSTANDARD LVCMOS18} [get_ports {m_mux3_data_o[6]}]
set_property -dict {PACKAGE_PIN J31 IOSTANDARD LVCMOS18} [get_ports {m_mux3_data_o[7]}]