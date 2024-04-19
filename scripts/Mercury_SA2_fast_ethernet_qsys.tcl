# qsys scripting (.tcl) file

package require qsys

if {[file exists ./../../../scripts/settings.tcl] } { source ./../../../scripts/settings.tcl }
if {![info exists part]} { set part 5CSTFD6D5F31I7 }

if { ${dual_fast_ethernet} == "DFE" } {

    # #########################
    # fast_ethernet subsystem #
    # #########################
    
    create_system fast_ethernet

    set_project_property DEVICE_FAMILY {Cyclone V}
    set_project_property DEVICE ${part}
    set_project_property HIDE_FROM_IP_CATALOG {false}

    #  Instances and instance parameters
    add_instance clk_tse_0 clock_source
    set_instance_parameter_value clk_tse_0 {clockFrequency} {50000000.0}
    set_instance_parameter_value clk_tse_0 {clockFrequencyKnown} {1}
    set_instance_parameter_value clk_tse_0 {resetSynchronousEdges} {DEASSERT}

    add_instance eth_tse_0 altera_eth_tse
    set_instance_parameter_value eth_tse_0 {core_variation} {SMALL_MAC_10_100}
    set_instance_parameter_value eth_tse_0 {enable_magic_detect} {0}
    set_instance_parameter_value eth_tse_0 {ifGMII} {MII}

    add_instance msgdma_rx_0 altera_msgdma
    set_instance_parameter_value msgdma_rx_0 {BURST_ENABLE} {1}
    set_instance_parameter_value msgdma_rx_0 {DATA_FIFO_DEPTH} {256}
    set_instance_parameter_value msgdma_rx_0 {DATA_WIDTH} {64}
    set_instance_parameter_value msgdma_rx_0 {DESCRIPTOR_FIFO_DEPTH} {512}
    set_instance_parameter_value msgdma_rx_0 {ENHANCED_FEATURES} {1}
    set_instance_parameter_value msgdma_rx_0 {ERROR_ENABLE} {1}
    set_instance_parameter_value msgdma_rx_0 {ERROR_WIDTH} {6}
    set_instance_parameter_value msgdma_rx_0 {MAX_BURST_COUNT} {64}
    set_instance_parameter_value msgdma_rx_0 {MAX_BYTE} {2048}
    set_instance_parameter_value msgdma_rx_0 {MAX_STRIDE} {1}
    set_instance_parameter_value msgdma_rx_0 {MODE} {2}
    set_instance_parameter_value msgdma_rx_0 {PACKET_ENABLE} {1}
    set_instance_parameter_value msgdma_rx_0 {RESPONSE_PORT} {0}
    set_instance_parameter_value msgdma_rx_0 {STRIDE_ENABLE} {0}
    set_instance_parameter_value msgdma_rx_0 {TRANSFER_TYPE} {Unaligned Accesses}

    add_instance msgdma_tx_0 altera_msgdma
    set_instance_parameter_value msgdma_tx_0 {BURST_ENABLE} {1}
    set_instance_parameter_value msgdma_tx_0 {DATA_FIFO_DEPTH} {256}
    set_instance_parameter_value msgdma_tx_0 {DATA_WIDTH} {64}
    set_instance_parameter_value msgdma_tx_0 {DESCRIPTOR_FIFO_DEPTH} {512}
    set_instance_parameter_value msgdma_tx_0 {ENHANCED_FEATURES} {1}
    set_instance_parameter_value msgdma_tx_0 {ERROR_ENABLE} {1}
    set_instance_parameter_value msgdma_tx_0 {ERROR_WIDTH} {1}
    set_instance_parameter_value msgdma_tx_0 {MAX_BURST_COUNT} {64}
    set_instance_parameter_value msgdma_tx_0 {MAX_BYTE} {2048}
    set_instance_parameter_value msgdma_tx_0 {MAX_STRIDE} {1}
    set_instance_parameter_value msgdma_tx_0 {MODE} {1}
    set_instance_parameter_value msgdma_tx_0 {PACKET_ENABLE} {1}
    set_instance_parameter_value msgdma_tx_0 {TRANSFER_TYPE} {Unaligned Accesses}

    # exported interfaces
    add_interface clk_tse_0_clk_in clock sink
    set_interface_property clk_tse_0_clk_in EXPORT_OF clk_tse_0.clk_in
    add_interface clk_tse_0_clk_in_reset reset sink
    set_interface_property clk_tse_0_clk_in_reset EXPORT_OF clk_tse_0.clk_in_reset
    add_interface eth_tse_0_control_port avalon slave
    set_interface_property eth_tse_0_control_port EXPORT_OF eth_tse_0.control_port
    add_interface eth_tse_0_mac_mii_connection conduit end
    set_interface_property eth_tse_0_mac_mii_connection EXPORT_OF eth_tse_0.mac_mii_connection
    add_interface eth_tse_0_mac_misc_connection conduit end
    set_interface_property eth_tse_0_mac_misc_connection EXPORT_OF eth_tse_0.mac_misc_connection
    add_interface eth_tse_0_mac_status_connection conduit end
    set_interface_property eth_tse_0_mac_status_connection EXPORT_OF eth_tse_0.mac_status_connection
    add_interface eth_tse_0_pcs_mac_rx_clock_connection clock sink
    set_interface_property eth_tse_0_pcs_mac_rx_clock_connection EXPORT_OF eth_tse_0.pcs_mac_rx_clock_connection
    add_interface eth_tse_0_pcs_mac_tx_clock_connection clock sink
    set_interface_property eth_tse_0_pcs_mac_tx_clock_connection EXPORT_OF eth_tse_0.pcs_mac_tx_clock_connection
    add_interface msgdma_rx_0_csr avalon slave
    set_interface_property msgdma_rx_0_csr EXPORT_OF msgdma_rx_0.csr
    add_interface msgdma_rx_0_csr_irq interrupt sender
    set_interface_property msgdma_rx_0_csr_irq EXPORT_OF msgdma_rx_0.csr_irq
    add_interface msgdma_rx_0_descriptor_slave avalon slave
    set_interface_property msgdma_rx_0_descriptor_slave EXPORT_OF msgdma_rx_0.descriptor_slave
    add_interface msgdma_rx_0_mm_write avalon master
    set_interface_property msgdma_rx_0_mm_write EXPORT_OF msgdma_rx_0.mm_write
    add_interface msgdma_rx_0_response avalon slave
    set_interface_property msgdma_rx_0_response EXPORT_OF msgdma_rx_0.response
    add_interface msgdma_tx_0_csr avalon slave
    set_interface_property msgdma_tx_0_csr EXPORT_OF msgdma_tx_0.csr
    add_interface msgdma_tx_0_csr_irq interrupt sender
    set_interface_property msgdma_tx_0_csr_irq EXPORT_OF msgdma_tx_0.csr_irq
    add_interface msgdma_tx_0_descriptor_slave avalon slave
    set_interface_property msgdma_tx_0_descriptor_slave EXPORT_OF msgdma_tx_0.descriptor_slave
    add_interface msgdma_tx_0_mm_read avalon master
    set_interface_property msgdma_tx_0_mm_read EXPORT_OF msgdma_tx_0.mm_read

    # connections and connection parameters
    add_connection clk_tse_0.clk eth_tse_0.control_port_clock_connection
    add_connection clk_tse_0.clk eth_tse_0.receive_clock_connection
    add_connection clk_tse_0.clk eth_tse_0.transmit_clock_connection
    add_connection clk_tse_0.clk msgdma_rx_0.clock
    add_connection clk_tse_0.clk msgdma_tx_0.clock
    add_connection clk_tse_0.clk_reset eth_tse_0.reset_connection
    add_connection clk_tse_0.clk_reset msgdma_rx_0.reset_n
    add_connection clk_tse_0.clk_reset msgdma_tx_0.reset_n
    add_connection eth_tse_0.receive msgdma_rx_0.st_sink
    add_connection msgdma_tx_0.st_source eth_tse_0.transmit

    save_system fast_ethernet.qsys
}