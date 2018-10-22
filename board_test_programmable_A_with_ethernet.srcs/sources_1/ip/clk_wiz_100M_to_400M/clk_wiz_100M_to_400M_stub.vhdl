-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Jul 23 15:24:04 2018
-- Host        : LAPTOP-HPTS9AFJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {D:/Neurostimulation/One Channel
--               Demo/board_test_programmable_A_with_ethernet.srcs/sources_1/ip/clk_wiz_100M_to_400M/clk_wiz_100M_to_400M_stub.vhdl}
-- Design      : clk_wiz_100M_to_400M
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_100M_to_400M is
  Port ( 
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clk_wiz_100M_to_400M;

architecture stub of clk_wiz_100M_to_400M is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,locked,clk_in1";
begin
end;
