`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/02 16:03:33
// Design Name: 
// Module Name: clk_booster
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define period 10     
module clk_booster(input sys_clk_100M, output wire boosted_clk, locked);

//reg temp;
//initial temp = 0;
//always #(`period/2)
//temp <= ~temp;
//clk_wiz_100M_to_500M bost1 (boosted_clk, locked, temp);

clk_wiz_100M_to_400M bost1 (boosted_clk, locked, sys_clk_100M);

endmodule
