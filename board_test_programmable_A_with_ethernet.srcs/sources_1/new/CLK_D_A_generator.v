`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/05 15:22:21
// Design Name: 
// Module Name: CLK_D_generator
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


module CLK_D_generator(/*input*/ flag_edge_fall, 
                                   posedge_boosted_clk_counter,
                                   CLK_D_pulse_width, 
                                   CLK_D_pulse_width_default, 
                                   programmable_flag, 
                                   CLK_LATCH_pulse_width, 
                                   start, 
                                   boosted_clk,
                        /*output*/ CLK_D);
    output reg CLK_D;
    initial CLK_D = 0;
    input wire [9:0] flag_edge_fall, CLK_D_pulse_width, CLK_LATCH_pulse_width, posedge_boosted_clk_counter, CLK_D_pulse_width_default;
    input wire start, programmable_flag, boosted_clk;
    wire [9:0] signal_start;
    reg [9:0] signal_end;
    assign signal_start = flag_edge_fall - CLK_LATCH_pulse_width;
    always @(posedge boosted_clk) begin
        if (programmable_flag == 1)
            signal_end <= signal_start + CLK_D_pulse_width_default + CLK_LATCH_pulse_width;
        else
            signal_end <= signal_start + CLK_D_pulse_width_default;
    end
    always @(posedge boosted_clk) begin
        if (start == 1) begin
            if(posedge_boosted_clk_counter == signal_start)
                CLK_D <= 1;
            else if (posedge_boosted_clk_counter == signal_end)
                CLK_D <= 0;
            else
                CLK_D <= CLK_D;
        end
        else
            CLK_D <= 0;
    end
endmodule
