`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/08 14:10:00
// Design Name: 
// Module Name: structure_clocks
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
`define CLK_D_pulse_width 20

module structure_clocks(
           /*input*/   structure_select, start, frequency_select_1, frequency_select_2, D_program_flag, PHI3_flag, PHI12_B_flag, sys_clk_100M, program_clk,
          /*output A*/ PHI2_A, PHI1_A, PHI3_A, CLK_LATCH_A, CLK_CH_A, CLK_DEC_A, CLK_D_A,
          /*output C*/ CLK_LATCH_C, CLK_CH_C, CLK_DEC_C, CLK_D_C,
          /*output B*/ PHI1_B, PHI2_B, CLK_LATCH_B, CLK_CH_B, CLK_DEC_B, CLK_D_B,
  /*boosted clock*/    boosted_clk,
  /*monitoring clock*/ monitoring_clk, ready, shift1_write_0, sampling_clk,
   /*state indicator*/ state_indicator,
   /*all signal finished indicator*/ finished,
   total_posedge_count,
   channel_change_clk
    );
    input sys_clk_100M, program_clk;
    wire buffer_enable;
    assign buffer_enable = 1;
    wire buffered_signal;
    assign buffered_signal = buffer_enable ? sys_clk_100M : 1'b0;
    input wire [2:0] structure_select;
    input wire start, D_program_flag, PHI3_flag, PHI12_B_flag;
    input wire [1:0] frequency_select_1;
    input wire [1:0] frequency_select_2;
    reg [9:0] CLK_D_pulse_width;
    initial  CLK_D_pulse_width = 10'd`CLK_D_pulse_width;
    wire locked;
    output wire boosted_clk;
    wire buffer_enable_2;
    assign buffer_enable_2 = 1;
    wire buffered_signal_2;
    assign buffered_signal_2 = buffer_enable_2 ? boosted_clk : 1'b0;
    
    wire buffer_enable_A;
    assign buffer_enable_A = 0;
    wire buffered_signal_A;
    assign buffered_signal_A = buffer_enable_A ? boosted_clk : 1'b0;
    wire buffer_enable_B;
    assign buffer_enable_B = 1;
    wire buffered_signal_B;
    assign buffered_signal_B = buffer_enable_B ? boosted_clk : 1'b0;

//functionality
    // state indicator
    wire [7:0] state_A, state_B, state_C;
    output wire [7:0] state_indicator;
    assign state_indicator [7:0] = state_B [7:0];
    
    
    //deciding position of pulses in the period for PHI1,2,3_A
    output reg [9:0] total_posedge_count;
    initial total_posedge_count = 10'd400;
    
    //program frequency of PHI1,2,3_Aon the fly
    always @(posedge program_clk) begin
        if (locked == 1) begin
            case (frequency_select_1)
                2'd1: total_posedge_count <= 10'd200;       // 400000 / 200 = 2000kHz
                2'd2: total_posedge_count <= 10'd80;        // 400000 / 80 = 5000kHz
                2'd3: total_posedge_count <= 10'd40;        // 400000 / 40 = 10000kHz
                default: total_posedge_count <= 10'd400;    // 400000 / 400 = 1000kHz
            endcase
        end
        else
            total_posedge_count <= total_posedge_count;
    end
    
    //deciding position of pulses in the period for PHI1,2_B
    reg [19:0] total_posedge_count_2;
    initial total_posedge_count_2 = 20'd400000;
    
    //program frequency and PHI1,2_B on the fly
    always @(posedge program_clk) begin
        if (locked == 1) begin
            case (frequency_select_2)
                2'd1: total_posedge_count_2 <= 20'd40000;      // 400000000 / 200000 = 2000Hz 10K
                2'd2: total_posedge_count_2 <= 20'd4000;       // 400000000 / 40000 = 10000Hz 100K
                2'd3: total_posedge_count_2 <= 20'd800;       // 400000000 / 40000 = 100000Hz 500K
                default: total_posedge_count_2 <= 20'd400000;   // 400000000 / 400000 = 1000Hz
       endcase
        end
        else
            total_posedge_count_2 <= total_posedge_count_2;
    end
    
    //boosted_clk generator (500 Mhz)
    clk_booster high_f_clk1 (buffered_signal, boosted_clk, locked);
    
    //clock record
    reg [9:0] posedge_boosted_clk_counter;
    initial posedge_boosted_clk_counter = 9'b0;
    reg    start_A;
    initial start_A = 0;
    reg    start_B;
    initial start_B = 0;
    always @(posedge buffered_signal_2) begin
        if (locked == 1 && start_B == 1) begin
            if (posedge_boosted_clk_counter >= total_posedge_count - 9'b1)
                posedge_boosted_clk_counter <= 9'b0;
            else
                posedge_boosted_clk_counter <= posedge_boosted_clk_counter + 1'b1;
        end
        else
            posedge_boosted_clk_counter <= 9'b0;
    end
    
    
    wire buffer_enable_counter;
    assign buffer_enable_counter = 1;
    wire [9:0] buffered_counter;
    assign buffered_counter [0] = buffer_enable_counter ? posedge_boosted_clk_counter [0] : 1'b0;
    assign buffered_counter [1] = buffer_enable_counter ? posedge_boosted_clk_counter [1] : 1'b0;
    assign buffered_counter [2] = buffer_enable_counter ? posedge_boosted_clk_counter [2] : 1'b0;
    assign buffered_counter [3] = buffer_enable_counter ? posedge_boosted_clk_counter [3] : 1'b0;
    assign buffered_counter [4] = buffer_enable_counter ? posedge_boosted_clk_counter [4] : 1'b0;
    assign buffered_counter [5] = buffer_enable_counter ? posedge_boosted_clk_counter [5] : 1'b0;
    assign buffered_counter [6] = buffer_enable_counter ? posedge_boosted_clk_counter [6] : 1'b0;
    assign buffered_counter [7] = buffer_enable_counter ? posedge_boosted_clk_counter [7] : 1'b0;
    assign buffered_counter [8] = buffer_enable_counter ? posedge_boosted_clk_counter [8] : 1'b0;
    assign buffered_counter [9] = buffer_enable_counter ? posedge_boosted_clk_counter [9] : 1'b0;
    

    wire buffer_enable_counterA;
    assign buffer_enable_counterA = 0;
    wire [9:0] buffered_counterA = 0;
    
    wire buffer_enable_counterB;
    assign buffer_enable_counterB = 1;
    wire [9:0] buffered_counterB;
    assign buffered_counterB [0] = buffer_enable_counterB ? posedge_boosted_clk_counter [0] : 1'b0;
    assign buffered_counterB [1] = buffer_enable_counterB ? posedge_boosted_clk_counter [1] : 1'b0;
    assign buffered_counterB [2] = buffer_enable_counterB ? posedge_boosted_clk_counter [2] : 1'b0;
    assign buffered_counterB [3] = buffer_enable_counterB ? posedge_boosted_clk_counter [3] : 1'b0;
    assign buffered_counterB [4] = buffer_enable_counterB ? posedge_boosted_clk_counter [4] : 1'b0;
    assign buffered_counterB [5] = buffer_enable_counterB ? posedge_boosted_clk_counter [5] : 1'b0;
    assign buffered_counterB [6] = buffer_enable_counterB ? posedge_boosted_clk_counter [6] : 1'b0;
    assign buffered_counterB [7] = buffer_enable_counterB ? posedge_boosted_clk_counter [7] : 1'b0;
    assign buffered_counterB [8] = buffer_enable_counterB ? posedge_boosted_clk_counter [8] : 1'b0;
    assign buffered_counterB [9] = buffer_enable_counterB ? posedge_boosted_clk_counter [9] : 1'b0;
    
    
        
           
    
    //clock record for PHI1,2_B
    reg [19:0] posedge_boosted_clk_counter_2;
    initial posedge_boosted_clk_counter_2 = 19'b0;
    always @(posedge buffered_signal_2) begin
        if (locked == 1 && start_B == 1) begin
            if (posedge_boosted_clk_counter_2 == total_posedge_count_2 - 19'b1)
                posedge_boosted_clk_counter_2 <= 19'b0;
            else
                posedge_boosted_clk_counter_2 <= posedge_boosted_clk_counter_2 + 1'b1;
        end
        else
            posedge_boosted_clk_counter_2 <= 19'b0;
    end
    

    //PHI3_A clock control
    reg PHI3_A_start;
    initial PHI3_A_start = 0;
    
    
    // standard are determined in the structure A generator
    wire [9:0] half_PHI_pulse_width_standard, first_edge_fall_standard, pulse_interval_standard;
    
    
    // indicate when all signals are finished
    output reg finished;
    initial finished = 0;
    always @(posedge buffered_signal_2) begin
        if (locked == 1 && start_B == 1) begin
            if (buffered_counter > total_posedge_count - pulse_interval_standard / 3 && buffered_counter < total_posedge_count - 1)
                finished <= 1;
            else
                finished <= 0;
        end
        else
            finished <= 9'b0;
    end
            
            
   
    //structure A
    output wire PHI2_A, PHI1_A, PHI3_A, CLK_LATCH_A, CLK_CH_A, CLK_DEC_A, CLK_D_A;

    structre_A testA(
        /*input*/ start_A, 
                  D_program_flag, 
                  buffered_counterA, 
                  buffered_signal_A, 
                  locked, 
                  total_posedge_count, 
                  CLK_D_pulse_width, 
                  PHI3_A_start,
       /*output*/ PHI2_A, 
                  PHI1_A, 
                  PHI3_A, 
                  CLK_LATCH_A, 
                  CLK_CH_A, 
                  CLK_DEC_A,
                  CLK_D_A, 
                  half_PHI_pulse_width_standard, 
                  first_edge_fall_standard, 
                  pulse_interval_standard,
                  state_A
        );
        
    
//    //structure C
    output wire CLK_LATCH_C, CLK_CH_C, CLK_DEC_C, CLK_D_C;
    assign CLK_LATCH_C = 0;
    assign CLK_CH_C = 0;
    assign CLK_DEC_C = 0;
    assign CLK_D_C = 0;
    
    //structure B
    output wire PHI1_B, PHI2_B, CLK_LATCH_B, CLK_CH_B, CLK_DEC_B, CLK_D_B;
    always@(posedge buffered_signal_2) begin
        if (start == 1)
            start_B <= 1;
        else
            start_B <= 0;
    end
    structre_B testB(
        /*input*/ start_B, 
                  D_program_flag,
                  PHI12_B_flag, 
                  buffered_counterB,
                  buffered_signal_B, 
                  locked, 
                  total_posedge_count, 
                  CLK_D_pulse_width, 
                  half_PHI_pulse_width_standard, 
                  first_edge_fall_standard,
                  total_posedge_count_2,
                  posedge_boosted_clk_counter_2,
       /*output*/ PHI1_B,
                  PHI2_B,
                  CLK_LATCH_B, 
                  CLK_CH_B,
                  CLK_DEC_B, 
                  CLK_D_B,
                  state_B);  
                  
    // monitoring clock
      output wire monitoring_clk;
      output wire ready;
      output wire shift1_write_0;
      output wire sampling_clk;
  
    
      // automatic channel change
      wire [9:0] channel_change_period = total_posedge_count;
      wire [9:0] channel_change_half_period = channel_change_period / 2;
      wire [9:0] channel_change_clk_upgraded_full_period = channel_change_half_period + channel_change_half_period / 3 * 2;
      wire [9:0] channel_change_clk_upgraded_half_period = channel_change_clk_upgraded_full_period / 32;
          
      output wire channel_change_clk;
      
      reg channel_change_clk_upgraded = 0;
      always @(posedge buffered_signal_2)
         begin
             if (start == 1)
                 begin
                      if (buffered_counterB == first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*2 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*3 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*4 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*5 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*6 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*7 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*8 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*9 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*10 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*11 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*12 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*13 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*14 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*15 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*16 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*17 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*18 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*19 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*20 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*21 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*22 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*23 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*24 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*25 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*26 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 1;
                      else if (buffered_counterB == channel_change_clk_upgraded_half_period*27 + first_edge_fall_standard + channel_change_half_period / 6)
                          channel_change_clk_upgraded <= 0;
                 end
             else
                 channel_change_clk_upgraded <= 0;
         end
            
      reg write_control = 0;
      reg ready_control = 0;
      reg monitoring_clk_control = 0;
      reg sampling_clk_control = 0;
      assign shift1_write_0 = write_control;
      assign ready = ready_control && channel_change_clk_upgraded;
      assign monitoring_clk = monitoring_clk_control && channel_change_clk_upgraded;
      assign sampling_clk = sampling_clk_control && ~channel_change_clk_upgraded;
      always @(posedge buffered_signal_2)
             begin
                 if (start == 1)
                     begin
                          if (buffered_counterB == first_edge_fall_standard + channel_change_half_period / 6 - channel_change_clk_upgraded_half_period / 2)
                              write_control <= 0;
                          else if (buffered_counterB == channel_change_clk_upgraded_half_period + first_edge_fall_standard + channel_change_half_period / 6  + channel_change_clk_upgraded_half_period / 2)
                              write_control <= 1;
                          else
                              write_control <= write_control;
                     end
                 else
                     write_control <= 0;
             end
  
      always @(posedge buffered_signal_2)
             begin
                 if (start == 1)
                     begin
                          if (buffered_counterB == first_edge_fall_standard + channel_change_half_period / 6 + channel_change_clk_upgraded_half_period*26  - channel_change_clk_upgraded_half_period / 2)
                              ready_control <= 1;
                          else if (buffered_counterB == first_edge_fall_standard + channel_change_half_period / 6 + channel_change_clk_upgraded_half_period*27  + channel_change_clk_upgraded_half_period / 2)
                              ready_control <= 0;
                          else
                              ready_control <= ready_control;
                     end
                 else
                     ready_control <= 0;
             end
             
      always @(posedge buffered_signal_2)
            begin
                if (start == 1)
                    begin
                         if (buffered_counterB == first_edge_fall_standard + channel_change_half_period / 6 - channel_change_clk_upgraded_half_period / 2)
                             monitoring_clk_control <= 1;
                         else if (buffered_counterB == first_edge_fall_standard + channel_change_half_period / 6 + channel_change_clk_upgraded_half_period * 23 + channel_change_clk_upgraded_half_period / 2)
                             monitoring_clk_control <= 0;
                         else
                             monitoring_clk_control <= monitoring_clk_control;
                    end
                else
                    monitoring_clk_control <= 0;
            end
            
      always @(posedge buffered_signal_2)
          begin
              if (start == 1)
                  begin
                       if (buffered_counterB == first_edge_fall_standard + channel_change_half_period / 6 + channel_change_clk_upgraded_half_period / 2)
                           sampling_clk_control <= 1;
                       else if (buffered_counterB == first_edge_fall_standard + channel_change_half_period / 6 + channel_change_clk_upgraded_half_period*26 + channel_change_clk_upgraded_half_period / 2)
                           sampling_clk_control <= 0;
                       else
                           sampling_clk_control <= sampling_clk_control;
                  end
              else
                  sampling_clk_control <= 0;
          end
              
  endmodule
 