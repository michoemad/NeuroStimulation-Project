@echo off
set xv_path=D:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim ABC_switch_tb_behav -key {Behavioral:sim_1:Functional:ABC_switch_tb} -tclbatch ABC_switch_tb.tcl -view D:/2017summerR/vivado_projects/final_tester_no_channel_change/temp/ABC_switch_tb_behav.wcfg -view D:/2017summerR/vivado_projects/final_tester_no_channel_change/temp/dac_Test.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
