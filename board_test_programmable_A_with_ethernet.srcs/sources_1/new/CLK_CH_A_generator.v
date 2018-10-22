`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/05 15:15:03
// Design Name: 
// Module Name: CLK_CH_generator
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


module CLK_CH_generator(/*input*/ flag_edge_fall, 
                                    posedge_boosted_clk_counter, 
                                    CLK_CH_pulse_width, 
                                    start, 
                                    boosted_clk,
                         /*output*/ CLK_CH);
    output reg CLK_CH;
    initial CLK_CH = 0;
    input wire [9:0] flag_edge_fall, CLK_CH_pulse_width, posedge_boosted_clk_counter;
    input wire start, boosted_clk;
    wire [9:0] signal_start, signal_end;
    assign signal_start = flag_edge_fall;
    assign signal_end = signal_start + CLK_CH_pulse_width;
    always @(posedge boosted_clk) begin
        if (start == 1) begin
            if(posedge_boosted_clk_counter == signal_start)
                CLK_CH <= 1;
            else if (posedge_boosted_clk_counter == signal_end)
                CLK_CH <= 0;
            else
                CLK_CH <= CLK_CH;
        end
        else
            CLK_CH <= 0;
    end
endmodule
