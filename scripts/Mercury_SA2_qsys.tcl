# qsys scripting (.tcl) file

package require qsys

if {[file exists ./../../../scripts/settings.tcl] } { source ./../../../scripts/settings.tcl }
if {![info exists project_name]} { set project_name Mercury_SA2_PE1 }
if {![info exists part]} { set part 5CSTFD6D5F31I7 }
if {![info exists system_name]} { set system_name ${module}_pd }

create_system ${system_name}

set_project_property DEVICE_FAMILY {Cyclone V}
set_project_property DEVICE ${part}

# Instances and instance parameters
# (disabled instances are intentionally culled)

if { ${dual_fast_ethernet} == "DFE" } {
    add_instance fast_ethernet_0 fast_ethernet
    add_instance fast_ethernet_1 fast_ethernet
}

add_instance hps_0 altera_hps
set_instance_parameter_value hps_0 {CAN0_Mode} {N/A}
set_instance_parameter_value hps_0 {CAN0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {EMAC1_Mode} {RGMII}
set_instance_parameter_value hps_0 {EMAC1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {F2S_Width} {0}
set_instance_parameter_value hps_0 {F2SDRAM_Type} {Avalon-MM\ Bidirectional}
set_instance_parameter_value hps_0 {F2SDRAM_Width} {64}
set_instance_parameter_value hps_0 {F2SINTERRUPT_Enable} {1}
set_instance_parameter_value hps_0 {GPIO_Enable} {Yes No No No No No No No No Yes No No No No\
                                                  No No No No No No No No No No No No\
                                                  No No Yes No No No No No No Yes\
                                                  No Yes No No Yes Yes Yes Yes Yes No No No\
                                                  Yes Yes Yes Yes Yes Yes Yes No No Yes Yes Yes Yes Yes Yes Yes Yes No No\
                                                  No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
set_instance_parameter_value hps_0 {I2C0_Mode} {I2C}
set_instance_parameter_value hps_0 {I2C0_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {LWH2F_Enable} {true}
set_instance_parameter_value hps_0 {MEM_CLK_FREQ} {400.0}
set_instance_parameter_value hps_0 {MEM_CLK_FREQ_MAX} {800.0}
set_instance_parameter_value hps_0 {MEM_COL_ADDR_WIDTH} {10}
set_instance_parameter_value hps_0 {MEM_DQ_WIDTH} {32}
set_instance_parameter_value hps_0 {MEM_ROW_ADDR_WIDTH} {16}
set_instance_parameter_value hps_0 {MEM_RTT_NOM} {RZQ/6}
set_instance_parameter_value hps_0 {MEM_RTT_WR} {RZQ/4}
set_instance_parameter_value hps_0 {MEM_TCL} {6}
set_instance_parameter_value hps_0 {MEM_TFAW_NS} {30.0}
set_instance_parameter_value hps_0 {MEM_TINIT_US} {500}
set_instance_parameter_value hps_0 {MEM_TMRD_CK} {4}
set_instance_parameter_value hps_0 {MEM_TRAS_NS} {37.5}
set_instance_parameter_value hps_0 {MEM_TREFI_US} {7.8}
set_instance_parameter_value hps_0 {MEM_TRFC_NS} {260.0}
set_instance_parameter_value hps_0 {MEM_TRRD_NS} {10.0}
set_instance_parameter_value hps_0 {MEM_TRTP_NS} {10.0}
set_instance_parameter_value hps_0 {MEM_TWTR} {4}
set_instance_parameter_value hps_0 {MEM_VENDOR} {Micron}
set_instance_parameter_value hps_0 {MEM_VOLTAGE} {1.35V DDR3L}
set_instance_parameter_value hps_0 {MEM_WTCL} {5}
set_instance_parameter_value hps_0 {MPU_EVENTS_Enable} {0}
set_instance_parameter_value hps_0 {QSPI_Mode} {1 SS}
set_instance_parameter_value hps_0 {QSPI_PinMuxing} {HPS I/O Set 1}
set_instance_parameter_value hps_0 {REF_CLK_FREQ} {50.0}
set_instance_parameter_value hps_0 {S2FCLK_USER0CLK_Enable} {1}
set_instance_parameter_value hps_0 {S2FCLK_USER1CLK_Enable} {1}
set_instance_parameter_value hps_0 {S2FCLK_USER1CLK_FREQ} {25.0}
set_instance_parameter_value hps_0 {S2FCLK_USER1CLK_FREQ} {25.0}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK} {15}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK_Enable} {1}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK_FREQ} {100.0}
set_instance_parameter_value hps_0 {SDIO_Mode} {4-bit Data}
set_instance_parameter_value hps_0 {SDIO_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_SKEW} {0.1}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_TO_CK_SKEW} {0.04}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQ_TO_DQS_SKEW} {0.05}
set_instance_parameter_value hps_0 {TIMING_BOARD_MAX_CK_DELAY} {0.4}
set_instance_parameter_value hps_0 {TIMING_BOARD_MAX_DQS_DELAY} {0.4}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_BETWEEN_DQS} {0.05}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_CKDQS_DIMM_MAX} {0.2}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_CKDQS_DIMM_MIN} {0.06}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_WITHIN_DQS} {0.05}
set_instance_parameter_value hps_0 {TIMING_TDH} {55}
set_instance_parameter_value hps_0 {TIMING_TDQSCK} {255}
set_instance_parameter_value hps_0 {TIMING_TDQSQ} {100}
set_instance_parameter_value hps_0 {TIMING_TDS} {25}
set_instance_parameter_value hps_0 {TIMING_TIH} {130}
set_instance_parameter_value hps_0 {TIMING_TIS} {185}
set_instance_parameter_value hps_0 {TIMING_TQSH} {0.5}
set_instance_parameter_value hps_0 {UART0_Mode} {No Flow Control}
set_instance_parameter_value hps_0 {UART0_PinMuxing} {HPS I/O Set 2}
set_instance_parameter_value hps_0 {UART1_Mode} {N/A}
set_instance_parameter_value hps_0 {UART1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {USB1_Mode} {SDR}
set_instance_parameter_value hps_0 {USB1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {eosc1_clk_mhz} {50.0}

add_instance clk_100M clock_source
set_instance_parameter_value clk_100M {clockFrequency} {100000000.0}
set_instance_parameter_value clk_100M {clockFrequencyKnown} {1}
set_instance_parameter_value clk_100M {resetSynchronousEdges} {DEASSERT}

add_instance clk_50M clock_source
set_instance_parameter_value clk_50M {clockFrequency} {50000000.0}
set_instance_parameter_value clk_50M {clockFrequencyKnown} {1}
set_instance_parameter_value clk_50M {resetSynchronousEdges} {DEASSERT}

add_instance clk_25M clock_source
set_instance_parameter_value clk_25M {clockFrequency} {25000000.0}
set_instance_parameter_value clk_25M {clockFrequencyKnown} {1}
set_instance_parameter_value clk_25M {resetSynchronousEdges} {DEASSERT}

add_instance onchip_memory2_0 altera_avalon_onchip_memory2
set_instance_parameter_value onchip_memory2_0 {memorySize} {262144.0}

add_interface memory conduit end
set_interface_property memory EXPORT_OF hps_0.memory

add_instance sysid_qsys_0 altera_avalon_sysid_qsys

# exported interfaces
add_interface clk_100m_clk clock source
set_interface_property clk_100m_clk EXPORT_OF clk_100M.clk

add_interface clk_100m_clk_reset reset source
set_interface_property clk_100m_clk_reset EXPORT_OF clk_100M.clk_reset

add_interface clk_50m_clk clock source
set_interface_property clk_50m_clk EXPORT_OF clk_50M.clk

add_interface clk_50m_clk_reset reset source
set_interface_property clk_50m_clk_reset EXPORT_OF clk_50M.clk_reset

add_interface clk_25m_clk clock source
set_interface_property clk_25m_clk EXPORT_OF clk_25M.clk

add_interface clk_25m_clk_reset reset source
set_interface_property clk_25m_clk_reset EXPORT_OF clk_25M.clk_reset

if { ${dual_fast_ethernet} == "DFE" } {

    add_interface fast_ethernet_0_eth_tse_0_mac_mii_connection conduit end
    set_interface_property fast_ethernet_0_eth_tse_0_mac_mii_connection EXPORT_OF fast_ethernet_0.eth_tse_0_mac_mii_connection

    add_interface fast_ethernet_0_eth_tse_0_pcs_mac_rx_clock_connection clock sink
    set_interface_property fast_ethernet_0_eth_tse_0_pcs_mac_rx_clock_connection EXPORT_OF fast_ethernet_0.eth_tse_0_pcs_mac_rx_clock_connection

    add_interface fast_ethernet_0_eth_tse_0_pcs_mac_tx_clock_connection clock sink
    set_interface_property fast_ethernet_0_eth_tse_0_pcs_mac_tx_clock_connection EXPORT_OF fast_ethernet_0.eth_tse_0_pcs_mac_tx_clock_connection

    add_interface fast_ethernet_1_eth_tse_0_mac_mii_connection conduit end
    set_interface_property fast_ethernet_1_eth_tse_0_mac_mii_connection EXPORT_OF fast_ethernet_1.eth_tse_0_mac_mii_connection

    add_interface fast_ethernet_1_eth_tse_0_pcs_mac_rx_clock_connection clock sink
    set_interface_property fast_ethernet_1_eth_tse_0_pcs_mac_rx_clock_connection EXPORT_OF fast_ethernet_1.eth_tse_0_pcs_mac_rx_clock_connection

    add_interface fast_ethernet_1_eth_tse_0_pcs_mac_tx_clock_connection clock sink
    set_interface_property fast_ethernet_1_eth_tse_0_pcs_mac_tx_clock_connection EXPORT_OF fast_ethernet_1.eth_tse_0_pcs_mac_tx_clock_connection
}

add_interface test conduit end

add_interface hps_io conduit end
set_interface_property hps_io EXPORT_OF hps_0.hps_io

add_interface memory conduit end
set_interface_property memory EXPORT_OF hps_0.memory

# connections and connection parameters
if { ${dual_fast_ethernet} == "DFE" } {

    # fast_ethernet_0
    add_connection fast_ethernet_0.msgdma_rx_0_mm_write hps_0.f2h_sdram0_data
    set_connection_parameter_value fast_ethernet_0.msgdma_rx_0_mm_write/hps_0.f2h_sdram0_data arbitrationPriority {1}
    set_connection_parameter_value fast_ethernet_0.msgdma_rx_0_mm_write/hps_0.f2h_sdram0_data baseAddress {0x0000}
    set_connection_parameter_value fast_ethernet_0.msgdma_rx_0_mm_write/hps_0.f2h_sdram0_data defaultConnection {0}

    add_connection fast_ethernet_0.msgdma_tx_0_mm_read hps_0.f2h_sdram0_data
    set_connection_parameter_value fast_ethernet_0.msgdma_tx_0_mm_read/hps_0.f2h_sdram0_data arbitrationPriority {1}
    set_connection_parameter_value fast_ethernet_0.msgdma_tx_0_mm_read/hps_0.f2h_sdram0_data baseAddress {0x0000}
    set_connection_parameter_value fast_ethernet_0.msgdma_tx_0_mm_read/hps_0.f2h_sdram0_data defaultConnection {0}

    add_connection hps_0.f2h_irq0 fast_ethernet_0.msgdma_rx_0_csr_irq
    set_connection_parameter_value hps_0.f2h_irq0/fast_ethernet_0.msgdma_rx_0_csr_irq irqNumber {0}

    add_connection hps_0.f2h_irq0 fast_ethernet_0.msgdma_tx_0_csr_irq
    set_connection_parameter_value hps_0.f2h_irq0/fast_ethernet_0.msgdma_tx_0_csr_irq irqNumber {1}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_0.eth_tse_0_control_port
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.eth_tse_0_control_port arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.eth_tse_0_control_port baseAddress {0x0400}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.eth_tse_0_control_port defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_0.msgdma_rx_0_csr
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_csr arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_csr baseAddress {0x0080}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_csr defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_0.msgdma_rx_0_descriptor_slave
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_descriptor_slave arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_descriptor_slave baseAddress {0x0060}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_descriptor_slave defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_0.msgdma_rx_0_response
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_response arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_response baseAddress {0x0008}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_rx_0_response defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_0.msgdma_tx_0_csr
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_tx_0_csr arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_tx_0_csr baseAddress {0x0040}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_tx_0_csr defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_0.msgdma_tx_0_descriptor_slave
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_tx_0_descriptor_slave arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_tx_0_descriptor_slave baseAddress {0x0020}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_0.msgdma_tx_0_descriptor_slave defaultConnection {0}

    add_connection hps_0.h2f_user2_clock fast_ethernet_0.clk_tse_0_clk_in
    add_connection hps_0.h2f_reset fast_ethernet_0.clk_tse_0_clk_in_reset

    # fast_ethernet_1
    add_connection fast_ethernet_1.msgdma_rx_0_mm_write hps_0.f2h_sdram0_data
    set_connection_parameter_value fast_ethernet_1.msgdma_rx_0_mm_write/hps_0.f2h_sdram0_data arbitrationPriority {1}
    set_connection_parameter_value fast_ethernet_1.msgdma_rx_0_mm_write/hps_0.f2h_sdram0_data baseAddress {0x0000}
    set_connection_parameter_value fast_ethernet_1.msgdma_rx_0_mm_write/hps_0.f2h_sdram0_data defaultConnection {0}

    add_connection fast_ethernet_1.msgdma_tx_0_mm_read hps_0.f2h_sdram0_data
    set_connection_parameter_value fast_ethernet_1.msgdma_tx_0_mm_read/hps_0.f2h_sdram0_data arbitrationPriority {1}
    set_connection_parameter_value fast_ethernet_1.msgdma_tx_0_mm_read/hps_0.f2h_sdram0_data baseAddress {0x0000}
    set_connection_parameter_value fast_ethernet_1.msgdma_tx_0_mm_read/hps_0.f2h_sdram0_data defaultConnection {0}

    add_connection hps_0.f2h_irq0 fast_ethernet_1.msgdma_rx_0_csr_irq
    set_connection_parameter_value hps_0.f2h_irq0/fast_ethernet_1.msgdma_rx_0_csr_irq irqNumber {2}

    add_connection hps_0.f2h_irq0 fast_ethernet_1.msgdma_tx_0_csr_irq
    set_connection_parameter_value hps_0.f2h_irq0/fast_ethernet_1.msgdma_tx_0_csr_irq irqNumber {3}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_1.eth_tse_0_control_port
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.eth_tse_0_control_port arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.eth_tse_0_control_port baseAddress {0x0800}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.eth_tse_0_control_port defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_1.msgdma_rx_0_csr
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_csr arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_csr baseAddress {0x0100}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_csr defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_1.msgdma_rx_0_descriptor_slave
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_descriptor_slave arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_descriptor_slave baseAddress {0x00e0}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_descriptor_slave defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_1.msgdma_rx_0_response
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_response arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_response baseAddress {0x0010}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_rx_0_response defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_1.msgdma_tx_0_csr
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_tx_0_csr arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_tx_0_csr baseAddress {0x00c0}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_tx_0_csr defaultConnection {0}

    add_connection hps_0.h2f_lw_axi_master fast_ethernet_1.msgdma_tx_0_descriptor_slave
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_tx_0_descriptor_slave arbitrationPriority {1}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_tx_0_descriptor_slave baseAddress {0x00a0}
    set_connection_parameter_value hps_0.h2f_lw_axi_master/fast_ethernet_1.msgdma_tx_0_descriptor_slave defaultConnection {0}

    add_connection hps_0.h2f_user2_clock fast_ethernet_1.clk_tse_0_clk_in
    add_connection hps_0.h2f_reset fast_ethernet_1.clk_tse_0_clk_in_reset

}

add_connection hps_0.h2f_axi_master onchip_memory2_0.s1
set_connection_parameter_value hps_0.h2f_axi_master/onchip_memory2_0.s1 arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_axi_master/onchip_memory2_0.s1 baseAddress {0x0000}
set_connection_parameter_value hps_0.h2f_axi_master/onchip_memory2_0.s1 defaultConnection {0}

add_connection hps_0.h2f_lw_axi_master sysid_qsys_0.control_slave
set_connection_parameter_value hps_0.h2f_lw_axi_master/sysid_qsys_0.control_slave arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/sysid_qsys_0.control_slave baseAddress {0x0000}
set_connection_parameter_value hps_0.h2f_lw_axi_master/sysid_qsys_0.control_slave defaultConnection {0}

add_connection hps_0.h2f_reset clk_100M.clk_in_reset
add_connection hps_0.h2f_reset clk_50M.clk_in_reset
add_connection hps_0.h2f_reset clk_25M.clk_in_reset
add_connection hps_0.h2f_reset onchip_memory2_0.reset1
add_connection hps_0.h2f_reset sysid_qsys_0.reset

add_connection hps_0.h2f_user0_clock hps_0.h2f_axi_clock
add_connection hps_0.h2f_user0_clock clk_100M.clk_in
add_connection hps_0.h2f_user0_clock onchip_memory2_0.clk1
add_connection hps_0.h2f_user1_clock clk_25M.clk_in
add_connection hps_0.h2f_user2_clock hps_0.h2f_lw_axi_clock
add_connection hps_0.h2f_user2_clock hps_0.f2h_sdram0_clock
add_connection hps_0.h2f_user2_clock sysid_qsys_0.clk
add_connection hps_0.h2f_user2_clock clk_50M.clk_in

# interconnect requirements
set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {AUTO}

# I2C FPGA on ST1
set_instance_parameter_value hps_0 {I2C1_Mode} {Full}
set_instance_parameter_value hps_0 {I2C1_PinMuxing} {FPGA}
add_interface hps_0_i2c1 conduit end
set_interface_property hps_0_i2c1 EXPORT_OF hps_0.i2c1
add_interface hps_0_i2c1_clk clock source
set_interface_property hps_0_i2c1_clk EXPORT_OF hps_0.i2c1_clk
add_interface hps_0_i2c1_scl_in clock sink
set_interface_property hps_0_i2c1_scl_in EXPORT_OF hps_0.i2c1_scl_in

save_system ${system_name}.qsys
