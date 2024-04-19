#--------------------------------------------------------------------------------------------------
# LEDs
#--------------------------------------------------------------------------------------------------
set_false_path -from * -to [get_ports {LED0_N_PL}]
set_false_path -from * -to [get_ports {LED1_N_PL}]
set_false_path -from * -to [get_ports {LED2_N_PL}]
set_false_path -from * -to [get_ports {LED3_N_PL}]

#--------------------------------------------------------------------------------------------------
# Dual Fast Ethernet
#--------------------------------------------------------------------------------------------------
create_clock -name {Eth1_Refclk} -period 40.000 -waveform { 0.000 20.000 } [get_ports {CLK_ETH1}]
create_clock -name {Eth1A_Rx} -period 40.000 -waveform { 0.000 20.000 } [get_ports {ETH1A_RXCLK}]
create_clock -name {Eth1A_Tx} -period 40.000 -waveform { 0.000 20.000 } [get_ports {ETH1A_TXCLK}]
create_clock -name {Eth1B_Rx} -period 40.000 -waveform { 0.000 20.000 } [get_ports {ETH1B_RXCLK}]
create_clock -name {Eth1B_Tx} -period 40.000 -waveform { 0.000 20.000 } [get_ports {ETH1B_TXCLK}]

#--------------------------------------------------------------------------------------------------
# PL ETH A
#--------------------------------------------------------------------------------------------------
# mii receive timing
set_input_delay -max 30 -clock [get_clocks Eth1A_Rx] [get_ports {ETH1A_RXD[0] ETH1A_RXD[1] ETH1A_RXD[2] ETH1A_RXD[3] ETH1A_RXDV ETH1A_RXER ETH1A_COL ETH1A_CRS}] -add_delay
set_input_delay -min 10 -clock [get_clocks Eth1A_Rx] [get_ports {ETH1A_RXD[0] ETH1A_RXD[1] ETH1A_RXD[2] ETH1A_RXD[3] ETH1A_RXDV ETH1A_RXER ETH1A_COL ETH1A_CRS}] -add_delay

# mii transmit timing
set_output_delay -max 10 -clock [get_clocks Eth1A_Tx] [get_ports {ETH1A_TXD[0] ETH1A_TXD[1] ETH1A_TXD[2] ETH1A_TXD[3] ETH1A_TXEN ETH1A_COL ETH1A_CRS}] -add_delay
set_output_delay -min 0  -clock [get_clocks Eth1A_Tx] [get_ports {ETH1A_TXD[0] ETH1A_TXD[1] ETH1A_TXD[2] ETH1A_TXD[3] ETH1A_TXEN ETH1A_COL ETH1A_CRS}] -add_delay

#--------------------------------------------------------------------------------------------------
# PL ETH B
#--------------------------------------------------------------------------------------------------
# mii receive timing
set_input_delay -max 30 -clock [get_clocks Eth1B_Rx] [get_ports {ETH1B_RXD[0] ETH1B_RXD[1] ETH1B_RXD[2] ETH1B_RXD[3] ETH1B_RXDV ETH1B_RXER ETH1B_COL ETH1B_CRS}] -add_delay
set_input_delay -min 10 -clock [get_clocks Eth1B_Rx] [get_ports {ETH1B_RXD[0] ETH1B_RXD[1] ETH1B_RXD[2] ETH1B_RXD[3] ETH1B_RXDV ETH1B_RXER ETH1B_COL ETH1B_CRS}] -add_delay

# mii transmit timing
set_output_delay -max 10 -clock [get_clocks Eth1B_Tx] [get_ports {ETH1B_TXD[0] ETH1B_TXD[1] ETH1B_TXD[2] ETH1B_TXD[3] ETH1B_TXEN ETH1B_COL ETH1B_CRS}] -add_delay
set_output_delay -min 0  -clock [get_clocks Eth1B_Tx] [get_ports {ETH1B_TXD[0] ETH1B_TXD[1] ETH1B_TXD[2] ETH1B_TXD[3] ETH1B_TXEN ETH1B_COL ETH1B_CRS}] -add_delay

#--------------------------------------------------------------------------------------------------
# create unused clock constraint for HPS I2C and usb1 to avoid misleading unconstrained clock reporting in TimeQuest
create_clock -period "1 MHz" [get_ports I2C_SCL_HPS]
create_clock -period "48 MHz" [get_ports USB_CLK]

#--------------------------------------------------------------------------------------------------
# HPS peripherals port false path setting to workaround the unconstrained path (setting false_path for hps_0 ports will not affect the routing as it is hard silicon)
set_false_path -from * -to [get_ports {ETH0_MDC}]
set_false_path -from * -to [get_ports {ETH0_MDIO}]
set_false_path -from * -to [get_ports {ETH0_TXD0}]
set_false_path -from * -to [get_ports {ETH0_TXD1}]
set_false_path -from * -to [get_ports {ETH0_TXD2}]
set_false_path -from * -to [get_ports {ETH0_TXD3}]
set_false_path -from * -to [get_ports {ETH0_TX_CLK}]
set_false_path -from * -to [get_ports {ETH0_TX_CTL}]
set_false_path -from * -to [get_ports {FLASH_CLK}]
set_false_path -from * -to [get_ports {FLASH_CS_N_BS1}]
set_false_path -from * -to [get_ports {FLASH_DI}]
set_false_path -from * -to [get_ports {FLASH_DO}]
set_false_path -from * -to [get_ports {FLASH_IO2}]
set_false_path -from * -to [get_ports {FLASH_IO3}]
set_false_path -from * -to [get_ports {HPS_GPIO36_SDCMD}]
set_false_path -from * -to [get_ports {HPS_GPIO38_SDD0}]
set_false_path -from * -to [get_ports {HPS_GPIO39_SDD1}]
set_false_path -from * -to [get_ports {HPS_GPIO45_SDIO_EMMC_CLK}]
set_false_path -from * -to [get_ports {HPS_GPIO46_SDD2}]
set_false_path -from * -to [get_ports {HPS_GPIO47_SDD3}]
set_false_path -from * -to [get_ports {HPS_GPIO58_MOSI}]
set_false_path -from * -to [get_ports {HPS_GPIO60_SS0_BS0}]
set_false_path -from * -to [get_ports {HPS_GPIO62_CANTX_CS1}]
set_false_path -from * -to [get_ports {HPS_GPIO64_UART1TX}]
set_false_path -from * -to [get_ports {HPS_GPIO66_UART0TX_CS0}]
set_false_path -from * -to [get_ports {I2C_SCL_HPS}]
set_false_path -from * -to [get_ports {I2C_SDA_HPS}]
set_false_path -from * -to [get_ports {LED0_N_HPS}]
set_false_path -from * -to [get_ports {LED1_N_HPS}]
set_false_path -from * -to [get_ports {LED2_N_HPS}]
set_false_path -from * -to [get_ports {USB_D0}]
set_false_path -from * -to [get_ports {USB_D1}]
set_false_path -from * -to [get_ports {USB_D2}]
set_false_path -from * -to [get_ports {USB_D3}]
set_false_path -from * -to [get_ports {USB_D4}]
set_false_path -from * -to [get_ports {USB_D5}]
set_false_path -from * -to [get_ports {USB_D6}]
set_false_path -from * -to [get_ports {USB_D7}]
set_false_path -from * -to [get_ports {USB_STP}]

set_false_path -from [get_ports {ETH0_MDIO}] -to *
set_false_path -from [get_ports {ETH0_RXD0}] -to *
set_false_path -from [get_ports {ETH0_RXD1}] -to *
set_false_path -from [get_ports {ETH0_RXD2}] -to *
set_false_path -from [get_ports {ETH0_RXD3}] -to *
set_false_path -from [get_ports {ETH0_RX_CLK}] -to *
set_false_path -from [get_ports {ETH0_RX_CTL}] -to *
set_false_path -from [get_ports {FLASH_DI}] -to *
set_false_path -from [get_ports {FLASH_DO}] -to *
set_false_path -from [get_ports {FLASH_IO2}] -to *
set_false_path -from [get_ports {FLASH_IO3}] -to *
set_false_path -from [get_ports {HPS_GPIO36_SDCMD}] -to *
set_false_path -from [get_ports {HPS_GPIO38_SDD0}] -to *
set_false_path -from [get_ports {HPS_GPIO39_SDD1}] -to *
set_false_path -from [get_ports {HPS_GPIO46_SDD2}] -to *
set_false_path -from [get_ports {HPS_GPIO47_SDD3}] -to *
set_false_path -from [get_ports {HPS_GPIO59_MISO}] -to *
set_false_path -from [get_ports {HPS_GPIO61_CANRX}] -to *
set_false_path -from [get_ports {HPS_GPIO63_UART1RX}] -to *
set_false_path -from [get_ports {HPS_GPIO65_UART0RX}] -to *
set_false_path -from [get_ports {I2C_SDA_HPS}] -to *
set_false_path -from [get_ports {USB_CLK}] -to *
set_false_path -from [get_ports {USB_D0}] -to *
set_false_path -from [get_ports {USB_D1}] -to *
set_false_path -from [get_ports {USB_D2}] -to *
set_false_path -from [get_ports {USB_D3}] -to *
set_false_path -from [get_ports {USB_D4}] -to *
set_false_path -from [get_ports {USB_D5}] -to *
set_false_path -from [get_ports {USB_D6}] -to *
set_false_path -from [get_ports {USB_D7}] -to *
set_false_path -from [get_ports {USB_DIR}] -to *
set_false_path -from [get_ports {USB_NXT}] -to *