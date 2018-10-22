`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/05 10:49:42
// Design Name: 
// Module Name: programmable_3_phase_clock
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
//default for a boosted 500M clock
`define pulse_width 7 // 7 of 500M clock edgess

module programmable_3_phase_clock(/*input*/ start, 
                                            posedge_boosted_clk_counter, 
                                            boosted_clk, 
                                            total_posedge_count,
                                            PHI3_start,
                                 /*output*/ first_edge_fall, 
                                            PHI2, 
                                            PHI1, 
                                            PHI3,
                                            half_pulse_width,
                                            pulse_interval);
output reg     PHI2, PHI1, PHI3;
initial PHI2 = 0;
initial PHI1 = 0;
initial PHI3 = 0;
input  wire  [9:0] total_posedge_count, posedge_boosted_clk_counter;
input  wire start, boosted_clk, PHI3_start;
//parameters enabling programmable feature
    //in this design, pulses happens with interval 3/10 period
    output wire [9:0]   pulse_interval;
    assign   pulse_interval = total_posedge_count / 10 * 3;
    //positioning of pulse
    wire [9:0]   first_edge_count;
    assign   first_edge_count = pulse_interval/3;
    wire [9:0]   second_edge_count;
    assign   second_edge_count = first_edge_count + pulse_interval;
    wire [9:0]   third_edge_count;
    assign   third_edge_count = second_edge_count + pulse_interval;
    //decide pulse width
    output wire [9:0]   half_pulse_width;
    //assign half_pulse_width = 10'd`pulse_width; // same width
    assign half_pulse_width = first_edge_count - 1; // optimized width


//assigne position
wire [9:0] first_edge_rise;
output wire [9:0] first_edge_fall;
wire [9:0] second_edge_rise, second_edge_fall, third_edge_rise, thrid_edge_fall;
assign  first_edge_rise = first_edge_count - half_pulse_width;
assign  first_edge_fall = first_edge_count + half_pulse_width;
assign  second_edge_rise = second_edge_count - half_pulse_width;
assign  second_edge_fall = second_edge_count + half_pulse_width;
assign  third_edge_rise = third_edge_count - half_pulse_width;
assign  thrid_edge_fall = third_edge_count + half_pulse_width;

//generate clock 2
always @(posedge boosted_clk) begin
    if (start == 1) begin
        if (posedge_boosted_clk_counter == first_edge_rise)
            PHI2 <= 1;
        else if (posedge_boosted_clk_counter == first_edge_fall)
            PHI2 <= 0;
        else
            PHI2 <= PHI2;
    end
    else
        PHI2 <= 0;
end

//generate clock 1
always @(posedge boosted_clk) begin
    if (start == 1) begin
        if (posedge_boosted_clk_counter == second_edge_rise)
            PHI1 <= 1;
        else if (posedge_boosted_clk_counter == second_edge_fall)
            PHI1 <= 0;
        else
            PHI1 <= PHI1;
    end
    else
        PHI1 <= 0;
end


//generate clock 3
always @(posedge boosted_clk) begin
    if (PHI3_start == 1) begin
        if (posedge_boosted_clk_counter == third_edge_rise)
            PHI3 <= 1;
        else if (posedge_boosted_clk_counter == thrid_edge_fall)
            PHI3 <= 0;
        else
            PHI3 <= PHI3;
    end
    else
        PHI3 <= 0;
end


endmodule
