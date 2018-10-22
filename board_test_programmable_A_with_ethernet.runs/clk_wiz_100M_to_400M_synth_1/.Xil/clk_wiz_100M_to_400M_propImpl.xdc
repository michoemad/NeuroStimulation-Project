set_property SRC_FILE_INFO {cfile:{d:/Neurostimulation/One Channel Demo/board_test_programmable_A_with_ethernet.srcs/sources_1/ip/clk_wiz_100M_to_400M/clk_wiz_100M_to_400M.xdc} rfile:../../../board_test_programmable_A_with_ethernet.srcs/sources_1/ip/clk_wiz_100M_to_400M/clk_wiz_100M_to_400M.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
