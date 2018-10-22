`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/09 12:10:35
// Design Name: 
// Module Name: structure_B
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
module structre_B(
    /*input*/ start, 
              default_D_flag, 
              PHI12_B_status,
              posedge_boosted_clk_counter, 
              boosted_clk, 
              locked, 
              total_posedge_count, 
              CLK_D_B_pulse_width, 
              half_PHI_pulse_width,
              first_edge_fall,
              total_posedge_count_2,
              posedge_boosted_clk_counter_2,
   /*output*/ PHI1_B,
              PHI2_B,
              CLK_LATCH_B, 
              CLK_CH_B,
              CLK_DEC_B,
              CLK_D_B,
              state_indicator
    );
    
    
// state indicator
output wire [7:0] state_indicator;
assign state_indicator[1] = start;
assign state_indicator [0] = 1'b0;                                    
assign state_indicator [7:2] = 6'b0;


input wire start, default_D_flag, PHI12_B_status, boosted_clk, locked;
    
wire buffer_enable1;
assign buffer_enable1 = 1;
wire buffered_signal1;
assign buffered_signal1 = buffer_enable1 ? boosted_clk : 1'b0;
wire buffer_enable2;
assign buffer_enable2 = 1;
wire buffered_signal2;
assign buffered_signal2 = buffer_enable2 ? boosted_clk : 1'b0;
    wire buffer_enable3;
assign buffer_enable3 = 1;
wire buffered_signal3;
assign buffered_signal3 = buffer_enable3 ? boosted_clk : 1'b0;
wire buffer_enable4;
assign buffer_enable4 = 1;
wire buffered_signal4;
assign buffered_signal4 = buffer_enable4 ? boosted_clk : 1'b0;
wire buffer_enable5;
assign buffer_enable5 = 1;
wire buffered_signal5;
assign buffered_signal5 = buffer_enable5 ? boosted_clk : 1'b0;

input wire [9:0] posedge_boosted_clk_counter, total_posedge_count, CLK_D_B_pulse_width, half_PHI_pulse_width, first_edge_fall;
input wire [19:0] posedge_boosted_clk_counter_2,total_posedge_count_2;
output wire PHI1_B, PHI2_B,CLK_LATCH_B, CLK_CH_B, CLK_D_B, CLK_DEC_B;
wire [9:0] default_D_width;
//clock generators
assign default_D_width = half_PHI_pulse_width * 2;
CLK_LATCH_generator LATCH_B (/*input*/ first_edge_fall,
                                       posedge_boosted_clk_counter, 
                                       half_PHI_pulse_width, 
                                       start, 
                                       buffered_signal1,
                            /*output*/ CLK_LATCH_B);
CLK_CH_generator CH_B (/*input*/ first_edge_fall,
                                 posedge_boosted_clk_counter, 
                                 half_PHI_pulse_width, 
                                 start,
                                 buffered_signal2,
                      /*output*/ CLK_CH_B);
CLK_CH_generator DEC_B (/*input*/ first_edge_fall,
                                 posedge_boosted_clk_counter, 
                                 half_PHI_pulse_width, 
                                 start,
                                 buffered_signal3,
                      /*output*/ CLK_DEC_B);
CLK_D_generator D_B (/*input*/ first_edge_fall,
                               posedge_boosted_clk_counter, 
                               CLK_D_B_pulse_width, 
                               default_D_width,
                               default_D_flag, 
                               half_PHI_pulse_width, 
                               start,
                               buffered_signal4,
                    /*output*/ CLK_D_B);
two_phase_generator PHI_B(/*input*/ start, 
                                    PHI12_B_status,
                                    posedge_boosted_clk_counter_2, 
                                    buffered_signal5,
                                    first_edge_fall,
                                    total_posedge_count_2,
                                    half_PHI_pulse_width,
                        /*output*/ PHI1_B, 
                                   PHI2_B);
endmodule
