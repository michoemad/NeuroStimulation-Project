`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/14 17:45:35
// Design Name: 
// Module Name: board_test
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

module board_testBC(
    // board
    D,
    D_bar,
    
    
    // Michael
      /*input*/   start, reset_control, frequency_select_1, frequency_select_2, D_program_flag,  PHI3_flag, PHI12_B_flag, mannul_change,
     /*output*/ PHI2, PHI1, CLK_LATCH, CLK_CH, CLK_DEC, CLK_D,
     /*state indicator*/ state_indicator,
     /*set up serial*/ serial, load_spi,
     /*set up serial stem*/ serial_stem, load_spi_stem,
    /*spi clock for receiving psi module signal*/ chip_spi_clk,
    /*spi clock for receiving psi module signal stem*/spi_clk_out_stem,
    /*monitoring clock*/ shift_1_write_0,
    /*dac*/ SDI, SYNC_bar, LDAC_bar, SCLK, CLEAR_bar,
     
     //Karras: data for the new board as of summer 2018
     DATA_SELECT,DATA_OUT,
    // Qingchong Zeng
    sys_clk_100M,
    eth_int_b, 
    eth_pme_b,
    eth_rst_b,
    eth_mdc,  
    eth_mdio,  
    eth_rxck, 
    eth_rxctl,
    eth_rxd,
    eth_txck, 
    eth_txctl,
    eth_txd,  
    xa_p,
    xa_n,
    start_ethernet
    );
    
//    // QZ's module 
    input wire sys_clk_100M,start_ethernet;
    wire buffer_enable;
    assign buffer_enable = 1;
    wire buffered_signal;
    assign buffered_signal = buffer_enable ? sys_clk_100M : 1'b0;
    wire [15:0] data_in;     //Michael 16bits data input
    assign data_in [15:14] = 0;
    
    input eth_int_b; 
    input eth_pme_b;
    output eth_rst_b;
    output eth_mdc;  
    inout eth_mdio;  
    input eth_rxck; 
    input eth_rxctl;
    input [3:0]eth_rxd;
    output eth_txck; 
    output eth_txctl;
    output [3:0]eth_txd;  
    input [3:0] xa_p;
    input [3:0] xa_n;
    output [5:0] DATA_SELECT;
    input [11:0] DATA_OUT;
    wire ready;
    wire clk125Mhz,CLK;
    assign CLK=clk125Mhz;
    //MX's module
    input wire D, D_bar;
    wire [2:0] structure_select;
    input wire start, reset_control, D_program_flag, PHI3_flag, PHI12_B_flag, mannul_change;
    input wire [1:0] frequency_select_1;
    input wire [1:0] frequency_select_2;
    output wire [7:0] state_indicator;
    wire [7:0] temp_state;
    assign state_indicator[5:0] = temp_state[5:0];
    assign state_indicator[7] = temp_state[7];
    output wire         /*output A*/ PHI2, PHI1, CLK_LATCH, CLK_CH, CLK_DEC, CLK_D,
                        /*set up serial*/ serial, load_spi,
                        /*set up serial stem*/ serial_stem, load_spi_stem,
                        /*spi clock for receiving psi module signal*/ chip_spi_clk,
                        /*spi clock for receiving psi module signal stem*/spi_clk_out_stem,
                        /*monitoring clock*/  shift_1_write_0;
    wire monitoring_clk, spi_clk;                        
                
    wire generator_start;
    wire finished;                    
    
    wire boosted_clk;
    wire [9:0] total_posedge_count;
    wire newSYNC_bar, newLDAC_bar, newSCLK, newCLEAR_bar, newSDI;
    wire sampling_clk;
    wire load_spi_temp;
    wire channel_set_up_done;
    wire channel_change_ready;
    wire addr_delay;
    wire raw_data_user;
    wire PHI3;
    wire [15:0] ethernet_out;
    assign load_spi = channel_change_ready || load_spi_temp;
    starterBC generatorBC ( 
                            /*input*/   structure_select, start, reset_control, frequency_select_1, frequency_select_2, D_program_flag,  PHI3_flag, PHI12_B_flag, CLK, mannul_change,
                            raw_data_user,sys_clk_100M,
                            /*output A*/ PHI2, PHI1, PHI3, CLK_LATCH, CLK_CH, CLK_DEC, CLK_D,
                            /*state indicator*/ temp_state,
                            /*set up serial*/ serial, load_spi_temp,
                            /*set up serial stem*/ serial_stem, load_spi_stem,
                            /*spi clock for receiving psi module signal*/ spi_clk,
                            /*spi clock for receiving psi module signal stem*/spi_clk_out_stem,
                            /*boosted clock*/    boosted_clk,
                            /*monitoring clock*/ monitoring_clk, ready, shift_1_write_0, sampling_clk, channel_change_ready,
                            generator_start,
                            finished,
                            total_posedge_count,
                            newSYNC_bar, newLDAC_bar, newSCLK, newCLEAR_bar,
                            newSDI,DATA_SELECT,channel_set_up_done,
                            addr_delay,ethernet_out,DATA_OUT,D
                            );
                            
    assign chip_spi_clk = generator_start && monitoring_clk || ~generator_start && spi_clk;
                                     
    // sampling D and DATA_OUT for QC
    reg temp_1;
    initial temp_1 = 0;
    reg temp_2;
    initial temp_2 = 0;
    always@(posedge CLK_CH)
        begin
            if (generator_start == 1)
                begin
                    temp_1 <= D;
                    temp_2 <= D_bar;
                end
        end
    assign data_in [12] = temp_1 && generator_start;
    assign data_in [13] = temp_2 && generator_start;

        
    // data_out sampling
    
    wire composed_clk;
    assign composed_clk = generator_start && sampling_clk || ~generator_start && buffered_signal;

    SPI_template D_recorder_2(
        DATA_OUT, data_in [11:0], composed_clk, generator_start
        );
    
wire leds;


reg [4:0] ethernet_speed;
initial ethernet_speed = 0;
wire rx_data_out;
always @(posedge start_ethernet)
begin
    ethernet_speed <= ethernet_speed + 5'b1;
end



//assign state_indicator = cur_led;
wire [4:0] temp;
reg  ETH;
//always @(posedge start_ethernet)
//begin
//    ETH <= 1'b1;
//end
output wire SDI, SYNC_bar, LDAC_bar, SCLK, CLEAR_bar;

    gigabit_test
            ( sys_clk_100M,
                ethernet_speed,  
                leds,    
                //x_out,  
                ethernet_out,
                //channel_set_up_done, //an Enable pin
                1'b1,
                // Ethernet Control signals
                eth_int_b, 
                eth_pme_b,
                eth_rst_b,
                // Ethernet Management interface
                eth_mdc,  
                eth_mdio,  
                // Ethernet Receive interface
                eth_rxck, 
                eth_rxctl,
                eth_rxd,
                //temp_temp,
                temp,
                // Ethernet Transmit interface
                eth_txck, 
                eth_txctl,
                eth_txd,
                raw_data_user,
                clk125Mhz
         ); 
         
//    wire working_SDI, working_SYNC_bar, working_LDAC_bar, working_SCLK, working_CLEAR_bar;
//    wire load, dac_shift;
//    wire chip_shift;
//    wire check;
//    dac_control test_dac (
//        boosted_clk, generator_start,
//        total_posedge_count,
//        dac_shift, chip_shift, 
//        load, working_SYNC_bar, working_LDAC_bar, working_SCLK, working_CLEAR_bar, write, check
//        );
//    assign state_indicator[6] = check;
//    assign SDI = working_SDI || newSDI;
//    assign SYNC_bar = working_SYNC_bar && newSYNC_bar;
//    assign LDAC_bar = working_LDAC_bar && newLDAC_bar;
//    assign SCLK = working_SCLK || newSCLK;
//    assign CLEAR_bar = working_CLEAR_bar || newCLEAR_bar;
    
//    assign chip_spi_clk = generator_start && chip_shift || ~generator_start && spi_clk;
    
//    reg [DELAY-1:0] shift_reg_4;
    
//    always @(posedge boosted_clk)
//        begin
//              shift_reg_4 <= { shift_reg_4[DELAY-2:0], chip_shift};
//        end
    
//    wire delayed_chip_shift_signal = shift_reg_4[DELAY-1];
    
//    reg [11:0] temp_dac_data;
//    initial temp_dac_data = 0;
    
//    always@(posedge delayed_chip_shift_signal)
//        begin
////            temp_dac_data [0] <= DATA_OUT;
////            temp_dac_data [11:1] <= temp_dac_data [10:0];
//            if (generator_start == 1)
//                temp_dac_data <= temp_dac_data + 1;
//            else
//                temp_dac_data <= 0;
            
//        end
        
        
//    reg [23:0] temp_data;
//    initial temp_data = 0;    
//    always@(posedge dac_shift)
//        begin
//            if (load == 1)
//                begin
//                    temp_data [11:0] <= temp_dac_data;
//                    temp_data [15:12] <= 4'b0;
//                    temp_data [19:16] <= 4'b0010;
//                    temp_data [23:20] <= 4'b0;
//                end
//            else
//                temp_data <= temp_data * 2;
//        end
        
//    assign working_SDI = temp_data [23];
    
endmodule
