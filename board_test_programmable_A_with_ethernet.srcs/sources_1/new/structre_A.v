`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/08 13:56:27
// Design Name: 
// Module Name: structre
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
`define manyTimeSlower 32 // part of controls # of channels we want to record in one DEC cycle
`define automatic 0 // part of controls of automatically add up or not

module structre(
    /*input*/ start, 
              programmable_D_flag,
              posedge_boosted_clk_counter, 
              boosted_clk, 
              locked, 
              total_posedge_count, 
              CLK_D_pulse_width,
              PHI3_start,
   /*output*/ PHI2, 
              PHI1, 
              PHI3, 
              CLK_LATCH,
              CLK_CH, 
              CLK_DEC,
              CLK_D,
              half_PHI_pulse_width_standard,
              first_edge_fall_standard,
              pulse_interval_standard,
              state_indicator
    );
    
    
    // state indicator
    output wire [7:0] state_indicator;
    assign state_indicator[0] = start;
    assign state_indicator[7] = PHI3_start;
    assign state_indicator [6:1] = 6'b0;
    
    
    input wire start, programmable_D_flag, boosted_clk, locked, PHI3_start;
    
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

    input wire [9:0] posedge_boosted_clk_counter, total_posedge_count, CLK_D_pulse_width;
    output wire PHI2, PHI1, PHI3, CLK_LATCH, CLK_CH, CLK_DEC, CLK_D;
    output wire [9:0] half_PHI_pulse_width_standard, first_edge_fall_standard, pulse_interval_standard;
    wire [9:0] default_D_width;
    //clock generators
    wire [9:0] first_edge_rise;
    assign default_D_width = half_PHI_pulse_width_standard * 2;

    programmable_3_phase_clock PHI (/*input*/ start,
                                                posedge_boosted_clk_counter, 
                                                buffered_signal1, 
                                                total_posedge_count,
                                                PHI3_start,
                                     /*output*/ first_edge_fall_standard, 
                                                PHI2, 
                                                PHI1, 
                                                PHI3,
                                                half_PHI_pulse_width_standard,
                                                pulse_interval_standard);
    CLK_LATCH_generator LATCH (/*input*/ first_edge_fall_standard,
                                           posedge_boosted_clk_counter, 
                                           half_PHI_pulse_width_standard, 
                                           start, 
                                           buffered_signal2,
                                /*output*/ CLK_LATCH);
    CLK_CH_generator CH (/*input*/ first_edge_fall_standard,
                                     posedge_boosted_clk_counter, 
                                     half_PHI_pulse_width_standard, 
                                     start,
                                     buffered_signal3,
                          /*output*/ CLK_CH);
    wire CLK_DEC_temp;
    CLK_CH_generator DEC (/*input*/ first_edge_fall_standard,
                                       posedge_boosted_clk_counter, 
                                       half_PHI_pulse_width_standard, 
                                       start,
                                       buffered_signal4,
                            /*output*/ CLK_DEC_temp);
    CLK_D_generator D (/*input*/ first_edge_fall_standard,
                                   posedge_boosted_clk_counter, 
                                   CLK_D_pulse_width, 
                                   default_D_width,
                                   programmable_D_flag, 
                                   half_PHI_pulse_width_standard, 
                                   start,
                                   buffered_signal5,
                        /*output*/ CLK_D);
                        
    reg [7:0] CH_counter = 0;
    always@(posedge CLK_DEC_temp or negedge start)
        begin
            if (start == 1)
                begin
                    if (CH_counter < 8'd`manyTimeSlower - 1)
                        CH_counter <= CH_counter + 1;
                    else
                        CH_counter <= 0;
                end
            else
                CH_counter <= 0;
        end
        
    reg DEC_CLK_control = 0;
    always@(boosted_clk)
        begin
        if (start == 1)
            begin
                if (CH_counter == 0 && posedge_boosted_clk_counter == 0)
                    DEC_CLK_control <= 1;
                else if (CH_counter == 1 && posedge_boosted_clk_counter == 0)
                    DEC_CLK_control <= 0;
            end
        else
            DEC_CLK_control <= 0;
    end

    assign CLK_DEC = CLK_DEC_temp && ~1'b`automatic || CLK_DEC_temp && DEC_CLK_control && 1'b`automatic;
endmodule
