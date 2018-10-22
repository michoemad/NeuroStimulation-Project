`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/05 14:30:28
// Design Name: 
// Module Name: CLK_LATCH_generator
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


module CLK_LATCH_generator(/*input*/ flag_edge_fall, 
                                       posedge_boosted_clk_counter, 
                                       CLK_LATCH_pulse_width, 
                                       start, 
                                       boosted_clk,
                            /*output*/ CLK_LATCH);
    output reg CLK_LATCH;
    initial CLK_LATCH = 0;
    input wire [9:0] flag_edge_fall, CLK_LATCH_pulse_width, posedge_boosted_clk_counter;
    input wire start, boosted_clk;
    wire [9:0] signal_start, signal_end;
    assign signal_start = flag_edge_fall - CLK_LATCH_pulse_width;
    assign signal_end = flag_edge_fall;
    always @(posedge boosted_clk) begin
        if (start == 1) begin
            if(posedge_boosted_clk_counter == signal_start)
                CLK_LATCH <= 1;
            else if (posedge_boosted_clk_counter == signal_end)
                CLK_LATCH <= 0;
            else
                CLK_LATCH <= CLK_LATCH;
        end
        else
                    CLK_LATCH <= 0;
    end
endmodule
