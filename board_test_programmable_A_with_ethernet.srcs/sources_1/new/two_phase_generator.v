`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/09 14:44:16
// Design Name: 
// Module Name: two_phase_generator
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


module two_phase_generator(/*input*/ start, 
                                     PHI12_B_status,
                                     posedge_boosted_clk_counter, 
                                     boosted_clk,
                                     flag_count,
                                     pulse_interval,
                                     flag_pulse_spacing,
                          /*output*/ PHI1, 
                                     PHI2);
output reg PHI1, PHI2;
initial PHI1 = 1;
initial PHI2 = 0;
input  wire [9:0] flag_count, flag_pulse_spacing;
input  wire [19:0] posedge_boosted_clk_counter, pulse_interval;
input  wire start, PHI12_B_status, boosted_clk;
//parameters enabling programmable feature
    //in this design, pulses happens 3/10 period after the flag pulse rise
    //positioning of pulse
    wire [19:0] large_pulse_interval, small_pulse_interval;
    assign small_pulse_interval = (pulse_interval - 2 * flag_pulse_spacing) / 2;
    assign large_pulse_interval = small_pulse_interval + 2 * flag_pulse_spacing;
    wire [19:0]   PHI1_first_center;
    wire [19:0]   PHI1_first_center_offset;
    assign PHI1_first_center_offset = 19 * flag_pulse_spacing / 5;
    assign   PHI1_first_center = flag_count + large_pulse_interval / 2 + PHI1_first_center_offset;

//assigne position
wire [19:0] PHI1_flag_1, PHI1_flag_2, PHI2_flag_1, PHI2_flag_2;
assign  PHI1_flag_1 = PHI1_first_center - large_pulse_interval / 2;
assign  PHI1_flag_2 = PHI1_first_center + large_pulse_interval / 2;
assign  PHI2_flag_1 = PHI1_first_center - small_pulse_interval / 2;
assign  PHI2_flag_2 = PHI1_first_center + small_pulse_interval / 2;

//generate clock PHI1
always @(posedge boosted_clk) begin
    if (start == 1 && PHI12_B_status == 1) begin
        if (posedge_boosted_clk_counter == PHI1_flag_1)
            PHI1 <= 0;
        else if (posedge_boosted_clk_counter == PHI1_flag_2)
            PHI1 <= 1;
        else
            PHI1 <= PHI1;
    end
    else
        PHI1 <= 1;
end

//generate clock PHI2
always @(posedge boosted_clk) begin
    if (start == 1 && PHI12_B_status == 1) begin
        if (posedge_boosted_clk_counter == PHI2_flag_1)
            PHI2 <= 1;
        else if (posedge_boosted_clk_counter == PHI2_flag_2)
            PHI2 <= 0;
        else
            PHI2 <= PHI2;
    end
    else
        PHI2 <= 0;
end

endmodule
