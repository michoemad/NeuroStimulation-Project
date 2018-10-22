# Switches
set_property -dict { PACKAGE_PIN E22  IOSTANDARD LVCMOS12 } [get_ports { frequency_select_1[0] }]; #IO_L22P_T3_16 Sch=sw[0]
set_property -dict { PACKAGE_PIN F21  IOSTANDARD LVCMOS12 } [get_ports { frequency_select_1[1] }]; #IO_25_16 Sch=sw[1]
set_property -dict { PACKAGE_PIN G21  IOSTANDARD LVCMOS12 } [get_ports { frequency_select_2[0] }]; #IO_L24P_T3_16 Sch=sw[2]
set_property -dict { PACKAGE_PIN G22  IOSTANDARD LVCMOS12 } [get_ports { frequency_select_2[1] }]; #IO_L24N_T3_16 Sch=sw[3]
set_property -dict { PACKAGE_PIN H17  IOSTANDARD LVCMOS12 } [get_ports { D_program_flag }]; #IO_L6P_T0_15 Sch=sw[4]
set_property -dict { PACKAGE_PIN J16  IOSTANDARD LVCMOS12 } [get_ports { PHI12_B_flag }]; #IO_0_15 Sch=sw[5]
set_property -dict { PACKAGE_PIN K13  IOSTANDARD LVCMOS12 } [get_ports { reset_control }]; #IO_L19P_T3_A22_15 Sch=sw[6]
set_property -dict { PACKAGE_PIN M17  IOSTANDARD LVCMOS12 } [get_ports { PHI3_flag }]; #IO_25_15 Sch=sw[7]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets start_ethernet_IBUF]
# LEDs
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS25 } [get_ports { state_indicator[0] }]; #IO_L15P_T2_DQS_13 Sch=led[0]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS25 } [get_ports { state_indicator[1] }]; #IO_L15N_T2_DQS_13 Sch=led[1]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS25 } [get_ports { state_indicator[2] }]; #IO_L17P_T2_13 Sch=led[2]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS25 } [get_ports { state_indicator[3] }]; #IO_L17N_T2_13 Sch=led[3]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS25 } [get_ports { state_indicator[4] }]; #IO_L14N_T2_SRCC_13 Sch=led[4]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS25 } [get_ports { state_indicator[5] }]; #IO_L16N_T2_13 Sch=led[5]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS25 } [get_ports { state_indicator[6] }]; #IO_L16P_T2_13 Sch=led[6]
set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS25 } [get_ports { state_indicator[7] }]; #IO_L5P_T0_13 Sch=led[7]


# Button
#set_property -dict { PACKAGE_PIN C22 IOSTANDARD LVCMOS12 } [get_ports { mannul_change }]; #IO_L20P_T3_16 Sch=btnl
#set_property -dict { PACKAGE_PIN F15 IOSTANDARD LVCMOS12 } [get_ports { speed_change }]; #IO_L20P_T3_16 Sch=btnl
set_property -dict { PACKAGE_PIN D22 IOSTANDARD LVCMOS12 } [get_ports { start }]; #IO_L22N_T3_16 Sch=btnd
set_property -dict { PACKAGE_PIN C22 IOSTANDARD LVCMOS12 } [get_ports { mannul_change }]; #IO_L20P_T3_16 Sch=btnl
set_property -dict { PACKAGE_PIN B22 IOSTANDARD LVCMOS12 } [get_ports { start_ethernet }]; #IO_L20N_T3_16 Sch=btnc

# Clock
set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports { sys_clk_100M } ];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets start_IBUF] 

# FMC
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS12 } [get_ports { SYNC_bar }]; #IO_L16N_T2_A27_15 Sch=fmc_la_n[02]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS12 } [get_ports { SCLK }]; #IO_L16P_T2_A28_15 Sch=fmc_la_p[02]
set_property -dict { PACKAGE_PIN N19   IOSTANDARD LVCMOS12 } [get_ports { LDAC_bar }]; #IO_L17N_T2_A25_15 Sch=fmc_la_n[03]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS12 } [get_ports { SDI }]; #IO_L17P_T2_A26_15 Sch=fmc_la_p[03]
set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT }]; #IO_L18N_T2_A23_15 Sch=fmc_la_n[04]
set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS12 } [get_ports { CLEAR_bar }]; #IO_L18P_T2_A24_15 Sch=fmc_la_p[04]
set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS12 } [get_ports { CLK_D }]; #IO_L20N_T3_A19_15 Sch=fmc_la_n[07]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS12 } [get_ports { PHI1 }]; #IO_L20P_T3_A20_15 Sch=fmc_la_p[07]
set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS12 } [get_ports { CLK_DEC }]; #IO_L24N_T3_RS0_15 Sch=fmc_la_n[08]
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS12 } [get_ports { CLK_CH }]; #IO_L22N_T3_A16_15 Sch=fmc_la_n[11]
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS12 } [get_ports { shift_1_write_0 }]; #IO_L22P_T3_A17_15 Sch=fmc_la_p[11]
set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS12 } [get_ports { PHI2 }]; #IO_L14N_T2_SRCC_15 Sch=fmc_la_n[12]
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS12 } [get_ports { CLK_LATCH }]; #IO_L4N_T0_15 Sch=fmc_la_n[16]
set_property -dict { PACKAGE_PIN D21   IOSTANDARD LVCMOS12 } [get_ports { PHI3_A }]; #IO_L23N_T3_16 Sch=fmc_la_n[22]
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS12 } [get_ports { D }]; #IO_L7N_T1_16 Sch=fmc_la_n[24]
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS12 } [get_ports { D_bar }]; #IO_L7P_T1_16 Sch=fmc_la_p[24]

#spi
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS12 } [get_ports { chip_spi_clk }]; #IO_L23N_T3_FWE_B_15 Sch=fmc_la_n[15]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS12 } [get_ports { serial }]; #IO_L23P_T3_FOE_B_15 Sch=fmc_la_p[15]
set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS12 } [get_ports { load_spi }]; #IO_L18P_T2_16 Sch=fmc_la_p[20]
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS12 } [get_ports { serial_stem }]; #IO_L24P_T3_RS1_15 Sch=fmc_la_p[08]
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS12 } [get_ports { load_spi_stem }]; #IO_L14P_T2_SRCC_15 Sch=fmc_la_p[12]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS12 } [get_ports { spi_clk_out_stem }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]

#Data_OUT
set_property -dict { PACKAGE_PIN J22   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[0] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN K22   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[1] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN B21   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[2] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN K21   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[3] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN A21   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[4] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[5] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[6] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS12 } [get_ports { spi_clk_out_stem }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[7] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[8] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[9] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[10] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN H22   IOSTANDARD LVCMOS12 } [get_ports { DATA_OUT[11] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]

#DaTA_SELECT
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS12 } [get_ports { DATA_SELECT[0] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN N22   IOSTANDARD LVCMOS12 } [get_ports { DATA_SELECT[1] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN M21   IOSTANDARD LVCMOS12 } [get_ports { DATA_SELECT[2] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN M22   IOSTANDARD LVCMOS12 } [get_ports { DATA_SELECT[3] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVCMOS12 } [get_ports { DATA_SELECT[4] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property -dict { PACKAGE_PIN L21   IOSTANDARD LVCMOS12 } [get_ports { DATA_SELECT[5] }]; #IO_L4P_T0_15 Sch=fmc_la_p[16]



#Ethernet
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS25 } [get_ports { eth_int_b }]; #IO_L6N_T0_VREF_13 Sch=eth_int_b
set_property -dict { PACKAGE_PIN AA16  IOSTANDARD LVCMOS25 } [get_ports { eth_mdc }]; #IO_L1N_T0_13 Sch=eth_mdc
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS25 } [get_ports { eth_mdio }]; #IO_L1P_T0_13 Sch=eth_mdio
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS25 } [get_ports { eth_pme_b }]; #IO_L6P_T0_13 Sch=eth_pme_b
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { eth_rst_b }]; #IO_25_34 Sch=eth_rst_b
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS25 } [get_ports { eth_rxck }]; #IO_L13P_T2_MRCC_13 Sch=eth_rxck
set_property -dict { PACKAGE_PIN W10   IOSTANDARD LVCMOS25 } [get_ports { eth_rxctl }]; #IO_L10N_T1_13 Sch=eth_rxctl
set_property -dict { PACKAGE_PIN AB16  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[0] }]; #IO_L2P_T0_13 Sch=eth_rxd[0]
set_property -dict { PACKAGE_PIN AA15  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[1] }]; #IO_L4P_T0_13 Sch=eth_rxd[1]
set_property -dict { PACKAGE_PIN AB15  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[2] }]; #IO_L4N_T0_13 Sch=eth_rxd[2]
set_property -dict { PACKAGE_PIN AB11  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[3] }]; #IO_L7P_T1_13 Sch=eth_rxd[3]
set_property -dict { PACKAGE_PIN AA14  IOSTANDARD LVCMOS25 } [get_ports { eth_txck }]; #IO_L5N_T0_13 Sch=eth_txck
set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS25 } [get_ports { eth_txctl }]; #IO_L10P_T1_13 Sch=eth_txctl
set_property -dict { PACKAGE_PIN Y12   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[0] }]; #IO_L11N_T1_SRCC_13 Sch=eth_txd[0]
set_property -dict { PACKAGE_PIN W12   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[1] }]; #IO_L12N_T1_MRCC_13 Sch=eth_txd[1]
set_property -dict { PACKAGE_PIN W11   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[2] }]; #IO_L12P_T1_MRCC_13 Sch=eth_txd[2]
set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[3] }]; #IO_L11P_T1_SRCC_13 Sch=eth_txd[3]
create_clock -add -name eth_rx_clk_pin -period 8.00 -waveform {0 4} [get_ports {eth_rxck}];