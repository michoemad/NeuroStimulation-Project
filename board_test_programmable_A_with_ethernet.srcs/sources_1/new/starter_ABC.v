`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/13 14:14:44
// Design Name: 
// Module Name: starterBC
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
`define anyNumber 8//change to make set up data longer (spi)
`define number_of_bits_for_psi_clk_counter 20 //make sure it is enough to hold `number_of_bits_needed_to_send_to_set_up * `anyNumber * 2
`define number_of_bits_needed_to_send_to_set_up 18
`define number_of_bits_needed_to_send_to_set_up_stem 14
`define number_of_channel 68
`define stem 00000000000000
`define Achannel 011111111100000000
`define Bchannel 011111111100100000
`define Cchannel 011111111101000000
`define Xchannel 000000000000000000
`define Ychannel 011111111111111111

module starterBC(
           /*input*/   structure_select, start, reset_control, frequency_select_1, frequency_select_2, D_program_flag,  PHI3_flag, PHI12_B_flag, sys_clk_100M, mannul_change,
           raw_data_user,sys_clk,
        /*output A*/ PHI2, PHI1, PHI3, CLK_LATCH, CLK_CH, CLK_DEC, CLK_D,
        /*state indicator*/ state_indicator,
        /*set up serial*/ serial_with_channel_change, load_spi,
        /*set up serial stem*/ serial_stem, load_spi_stem,
       /*spi clock for receiving psi module signal*/ spi_clk_out,
       /*spi clock for receiving psi module signal stem*/spi_clk_out_stem,
       /*boosted clock*/   boosted_clk,
      /*monitoring clock*/ monitoring_clk, ready, write, sampling_clk, channel_change_ready,
       generator_start,
       /*all signal finished*/ finished,
       total_posedge_count,
       newSYNC_bar, newLDAC_bar, newSCLK, newCLEAR_bar,
       newSDI,DATA_SELECT,
       channel_set_up_done,
       addr_delay,ethernet_out,DATA_OUT,D

    );
    input D;
    input sys_clk_100M;
    input raw_data_user;
    input [11:0] DATA_OUT;
    input sys_clk;
//    wire buffer_enable;
//    assign buffer_enable = 1;
//    wire buffered_signal;
//    assign buffered_signal = buffer_enable ? sys_clk_100M : 1'b0;
    input wire [2:0] structure_select;
    input wire start, reset_control, D_program_flag, PHI3_flag, PHI12_B_flag, mannul_change;
    input wire [1:0] frequency_select_1;
    input wire [1:0] frequency_select_2;
    output wire [7:0] state_indicator;
    output reg [15:0] ethernet_out;
    
    output wire         /*output A*/ PHI2, PHI1, PHI3, CLK_LATCH, CLK_CH, CLK_DEC, CLK_D,
                /*boosted clock*/    boosted_clk,
                /*monitoring clock*/ monitoring_clk, ready, write, sampling_clk, channel_change_ready;
                /*address of Chip channel */reg [5:0] channel_selector;
    
    output wire [5:0] DATA_SELECT;
    reg spi_loadctivator;
    initial spi_loadctivator <= 0;
    
    wire [15:0] to_ethernet;
    
    reg spi_load_stemctivator;
    initial spi_load_stemctivator <= 0;
    
    output reg generator_start;
    initial generator_start = 0;
    
    output wire finished;
        
     reg seeker;
     
// state machine  
        reg standby;
        initial standby = 1;
        reg set_up_start;
        initial set_up_start = 0;
        reg set_up_start_stem;
        initial set_up_start_stem = 0;
        reg set_up_done;
        initial set_up_done = 0;
        wire set_up_done_stem;
        reg [6:0] state;
        initial state = 7'b0010000;
        
        output reg channel_set_up_done;
        initial channel_set_up_done = 0;
        
        reg [`number_of_bits_needed_to_send_to_set_up - 1 : 0] parallel;
        initial parallel = `number_of_bits_needed_to_send_to_set_up'b0;
    
        reg [`number_of_bits_needed_to_send_to_set_up_stem - 1 : 0] parallel_stem;
        initial parallel_stem = `number_of_bits_needed_to_send_to_set_up_stem'b0;
        
        reg [`number_of_bits_for_psi_clk_counter - 1 : 0] delay;
        initial delay = `number_of_bits_for_psi_clk_counter'b0;
        
        reg set_up_delay_done;
        initial set_up_delay_done = 0;
        
        initial channel_selector = 0;
        
        wire [`number_of_bits_needed_to_send_to_set_up - 1 : 0]maximum;
        assign maximum = `number_of_bits_needed_to_send_to_set_up'b0 - 1;
        
//        always@(posedge sys_clk_100M)
//            begin
//                if (parallel >= `number_of_bits_needed_to_send_to_set_up'd`number_of_channel && parallel != maximum && reset_control == 0)
//                    channel_set_up_done <= 1;
//                else if (reset_control == 1) 
//                    channel_set_up_done <= 0;
//            end

        always@(posedge (sys_clk_100M))
        begin
            if (channel_selector == 6'b111111&& reset_control ==0)
                channel_set_up_done <= 1;
            else if (reset_control == 1) 
                channel_set_up_done <= 0;
        
        end
            
        parameter done_DELAY = 300;
        reg [done_DELAY-1:0] shift_reg;
        initial shift_reg = 0;
        
        output reg addr_delay;
        initial addr_delay = 1'b0;
        
        always @(posedge (sys_clk_100M))
            begin
                  shift_reg <= { shift_reg[done_DELAY-2:0], set_up_done_stem};
            end
            
        wire delayed_set_up_done_stem;
        assign delayed_set_up_done_stem = shift_reg[done_DELAY-1];
    
        assign DATA_SELECT = channel_selector;
        //state[4] loops forever, incrementing channel select and providing data
        always@(posedge sys_clk_100M)
            begin
                if (reset_control == 0)
                    begin
                        state[0] <= state[6] * reset_control || state[0] * reset_control ||  state[0] * standby;
                        state[1] <= state[3] * ~channel_set_up_done * set_up_delay_done || state[1] * ~set_up_done;
                        state[2] <= state[1] * set_up_done || state[2] * ~set_up_done_stem;
                        state[3] <= state[2] * set_up_done_stem || state[0] * ~reset_control * ~standby || state[3] * ~set_up_delay_done;
                        state[4] <= state[3] * channel_set_up_done * set_up_delay_done || state[5] * addr_delay || state[4] * ~addr_delay; //choosing addr
                        state[5] <= state[4] * addr_delay || state[5] * ~addr_delay; //reading
//                        state[6] <= state[5] * delayed_set_up_done_stem || state[6] * ~reset_control;
                    end
                else
                    state [6:0] <= 7'b1;
            end
    

        always@(posedge start)
            standby <= 0;
        
        //dac reset
        reg dac_reset = 0;
        reg dac_setup = 0;
        reg [23:0] dac_reset_number = 24'b000011110000000000000000;
        reg [23:0] dac_setup_number = 24'b000001000000000000000011;
        
        //state machine functionality
        always@(posedge sys_clk_100M)
            case (state)
              7'b0000001 : 
                begin
                    parallel <= `number_of_bits_needed_to_send_to_set_up'b0 - 1;
                    channel_selector <= 6'b0 - 1;
                    parallel_stem <= 0;
                    spi_loadctivator <= 1;
                    spi_load_stemctivator <= 1;
                    generator_start <= 0;
                    set_up_start <= 0;
                    set_up_start_stem <= 0;
                    set_up_delay_done <= 0;
                    delay <= 0;
                    dac_reset <= 0;
                    dac_setup <= 0;
                    seeker <= 1'b0;
                end
              7'b0000010 :         
                begin
                    delay <= 0;
                    set_up_delay_done <= 0;
                    seeker <= 1'b1;
                    //set_up_start <= 1;                    
                end
              7'b0000100 :         
                begin
                    set_up_start <= 0;
                    spi_loadctivator <= 0;
                    set_up_start_stem <= 1;
                end
              7'b0001000 :         
                begin
                    spi_load_stemctivator <= 0;
                    set_up_start_stem <= 0;
                    delay <= delay + 1;
                    if (delay == 0)
                    begin
                                parallel <= parallel + 1;
                                channel_selector <= channel_selector+1;
                    end
                    else if (delay == `number_of_bits_needed_to_send_to_set_up * `anyNumber * 2 - 3)
                        begin
                            if (channel_set_up_done == 1)
                                begin
                                    parallel <= `number_of_bits_needed_to_send_to_set_up'b`Achannel;
                                    //reset
                                    channel_selector <= 6'b0;
                                    set_up_done <= 1'b1;
                                    parallel_stem <= `number_of_bits_needed_to_send_to_set_up_stem'b`stem;
                                end
                        end
                    else if (delay == `number_of_bits_needed_to_send_to_set_up * `anyNumber * 2 - 2)
                        set_up_delay_done <= 1;
                    
                end
              //choose your channel
              //state 4
              //ADDR
              7'b0010000 :         
                begin
                    if (raw_data_user == 1'b1)
                        begin
                        addr_delay <= addr_delay + 1'b1;
                        end
                   else
                   begin
                    addr_delay <= 0;
                    end
                    
                    if (raw_data_user && addr_delay)
                    begin
                        ethernet_out <=  {D,DATA_OUT};
                    end
                    else
                    begin
                        ethernet_out <= channel_selector;
                    end

                    spi_load_stemctivator <= 0;
                    set_up_start_stem <= 0;
                    seeker <=1;
                    dac_reset <= 1;
                    generator_start <= 1;
                end
              //Read and send data to Ethernet
              7'b0100000 :         
                begin                    
                    if (addr_delay == 1'b1)
                    begin
                       // channel_selector <= 16'h41;
                        ethernet_out <= channel_selector;
                    end
                    else
                    begin
                    ethernet_out <= {D,DATA_OUT}; //DATA_OUT is 12 bits

                    end
                    
                    addr_delay <= addr_delay + 1'b1;
                    set_up_start <= 0;
                    spi_loadctivator <= 0;
                    set_up_start_stem <= 1;
                    dac_reset <= 0;
                    dac_setup <= 1;
                    //nothing to do
                end
               
              7'b1000000 :         
                begin
                    spi_load_stemctivator <= 0;
                    set_up_start_stem <= 0;
                    dac_setup <= 0;
                    generator_start <= 1;
                end
              default : 
                begin
                    parallel <= `number_of_bits_needed_to_send_to_set_up'b0 - 1;
                    parallel_stem <= 0;
                    spi_loadctivator <= 1;
                    spi_load_stemctivator <= 1;
                    generator_start <= 0;
                    set_up_start <= 0;
                    set_up_start_stem <= 0;
                    set_up_delay_done <= 0;
                    delay <= 0;
                end
            endcase
      
          
          
          
          
      reg psi_clk;
      reg [`number_of_bits_for_psi_clk_counter - 1 : 0] psi_clk_counter; // increase if not enough
      initial psi_clk = 0;
      initial psi_clk_counter = 20'b0;
      always @(posedge sys_clk_100M)
        begin
            if(psi_clk_counter < `number_of_bits_needed_to_send_to_set_up * `anyNumber - 1) 
                begin
                    psi_clk_counter <= psi_clk_counter + 1;
                    psi_clk <= 1;
                end
            else if (psi_clk_counter < `number_of_bits_needed_to_send_to_set_up * `anyNumber * 2 - 1)
                begin
                    psi_clk_counter <= psi_clk_counter + 1;
                    psi_clk <= 0;
                end
            else
                begin
                    psi_clk_counter <= 0;
                    psi_clk <= 1;
                end
        end
        
        
        reg temp_clk;
        reg [19:0] temp_clk_counter; // increase if not enough
        initial temp_clk = 0;
        initial temp_clk_counter = `number_of_bits_needed_to_send_to_set_up * `anyNumber / 2 * 3;
        always @(posedge sys_clk_100M)
          begin
              if(temp_clk_counter < `number_of_bits_needed_to_send_to_set_up * `anyNumber - 1) 
                  begin
                      temp_clk_counter <= temp_clk_counter + 1;
                      temp_clk <= 1;
                  end
              else if (temp_clk_counter < `number_of_bits_needed_to_send_to_set_up * `anyNumber * 2 - 1)
                  begin
                      temp_clk_counter <= temp_clk_counter + 1;
                      temp_clk <= 0;
                  end
              else
                  begin
                      temp_clk_counter <= 20'd0;
                      temp_clk <= 1;
                  end
          end
          
          
      //psi for set up
      output wire serial_with_channel_change;
      wire channel_change_serial_signal;
      wire serial;
      assign serial_with_channel_change = channel_change_serial_signal || serial;

      wire load;    
      output wire spi_clk_out;
      assign spi_clk_out = temp_clk * load;
      output wire load_spi;
      assign load_spi = set_up_done;

      //PSI set_up(serial, parallel, psi_clk, load, set_up_start, set_up_done, reset_control);
       
       
       //circuit that waits for the acknowledge signal from FPGA
//       always @(posedge CLK_CH)
//       begin
//        if (seeker == 1'b1)
//        begin
//            set_up_done <= 1'b1;
//            seeker <= 1'b0;
//        end
//        else
//            set_up_done <=1'b0;
//       end
      
      //psi for stem set up
      output wire serial_stem;
      wire load_stem;    
      output wire spi_clk_out_stem;
      assign spi_clk_out_stem = temp_clk * load_stem * ~generator_start;
      output wire load_spi_stem;
      assign load_spi_stem = set_up_done_stem;
      PSI_stem set_up_stem(serial_stem, parallel_stem, psi_clk, load_stem, set_up_start_stem, set_up_done_stem, reset_control);
      
    output wire [9:0] total_posedge_count;
    wire channel_change_clk;
    wire   /*output A*/ PHI2_A, PHI1_A, PHI3_A, CLK_LATCH_A, CLK_CH_A, CLK_DEC_A, CLK_D_A,
    /*output C*/ CLK_LATCH_C, CLK_CH_C, CLK_DEC_C, CLK_D_C;
    structure_clocks generator(
                 /*input*/   structure_select, generator_start, frequency_select_1, frequency_select_2, D_program_flag,  PHI3_flag, PHI12_B_flag, sys_clk, start,
                /*output A*/ PHI2_A, PHI1_A, PHI3_A, CLK_LATCH_A, CLK_CH_A, CLK_DEC_A, CLK_D_A,
                /*output C*/ CLK_LATCH_C, CLK_CH_C, CLK_DEC_C, CLK_D_C,
                /*output B*/ PHI1, PHI2, CLK_LATCH, CLK_CH, CLK_DEC, CLK_D,
        /*boosted clock*/    boosted_clk,
        /*monitoring clock*/ monitoring_clk, ready, write, sampling_clk,
         /*state indicator*/ state_indicator,
       /*all signal finished indicator*/ finished,
       total_posedge_count,
       channel_change_clk
          );
          
          
   wire shift_2, chip_shift_2, load_2, SYNC_bar_2, LDAC_bar_2, SCLK_2, CLEAR_bar_2;
   wire SH1_WR0_2, check_2;
   //dac initialization
   dac_reset full_reset (
       boosted_clk, dac_reset,
       total_posedge_count,
       shift_2, chip_shift_2,
       load_2, SYNC_bar_2, LDAC_bar_2, SCLK_2, CLEAR_bar_2, SH1_WR0_2, check_2
       );
       
   reg [23:0] temp_data;
   initial temp_data = 0;    
   always@(posedge shift_2)
       begin
           if (load_2 == 1)
               begin
                   temp_data <= dac_reset_number;
               end
           else
               temp_data <= temp_data * 2;
       end
       
   wire dac_reset_SDI = temp_data [23];

  
  wire shift_3, chip_shift_3, load_3, SYNC_bar_3, LDAC_bar_3, SCLK_3, CLEAR_bar_3;
  wire SH1_WR0_3, check_3;
  dac_reset control_register_setup (
       boosted_clk, dac_setup,
       total_posedge_count,
       shift_3, chip_shift_3,
       load_3, SYNC_bar_3, LDAC_bar_3, SCLK_3, CLEAR_bar_3, SH1_WR0_3, check_3
       );
       
   reg [23:0] temp_data2;
   initial temp_data2 = 0;    
   always@(posedge shift_3)
       begin
           if (load_3 == 1)
               begin
                   temp_data2 <= dac_setup_number;
               end
           else
               temp_data2 <= temp_data2 * 2;
       end
       
   wire dac_setup_SDI = temp_data2 [23];       
       
       
       
       
   
  output wire newSYNC_bar, newLDAC_bar, newSCLK, newCLEAR_bar, newSDI;
  assign newSYNC_bar = SYNC_bar_2 && SYNC_bar_3;
  assign newLDAC_bar = LDAC_bar_2 && LDAC_bar_3;
  assign newSCLK = SCLK_2 || SCLK_3;
  assign newCLEAR_bar = CLEAR_bar_2 || CLEAR_bar_3;
  assign newSDI = dac_setup_SDI || dac_reset_SDI;
   
endmodule
