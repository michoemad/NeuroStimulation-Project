`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/14 14:39:39
// Design Name: 
// Module Name: ABC_switch_tb
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
`define wait 10

module ABC_switch_tb(
    run,
              /*output A*/ PHI2_A, PHI1_A, PHI3_A, CLK_LATCH_A, CLK_CH_A, CLK_DEC, CLK_D_A,
              /*output D*/ PHI2_D, PHI1_D, PHI3_D, CLK_LATCH_D, CLK_CH_D, CLK_D_D, CLK_D, CLK_bar_D, CLK_DAC,
              /*output C*/ CLK_LATCH_C, CLK_CH_C, CLK_D_C,
              /*output B*/ PHI1_B, PHI2_B, CLK_LATCH_B, CLK_CH_B, CLK_D_B,
       /*state indicator*/ state_indicator,
       /*set up serial*/ serial, load_spi,
     /*spi clock for receiving psi module signal*/ spi_clk_out
       
    );
    
    reg PHI3_flag;
    initial PHI3_flag = 0;
    
    output wire     /*output A*/ PHI2_A, PHI1_A, PHI3_A, CLK_LATCH_A, CLK_CH_A, CLK_DEC, CLK_D_A,
                    /*output D*/ PHI2_D, PHI1_D, PHI3_D, CLK_LATCH_D, CLK_CH_D, CLK_D_D, CLK_D, CLK_bar_D, CLK_DAC,
                    /*output C*/ CLK_LATCH_C, CLK_CH_C, CLK_D_C,
                   /*output B*/ PHI1_B, PHI2_B, CLK_LATCH_B, CLK_CH_B, CLK_D_B,
                    /*set up serial*/ serial, load_spi,
                 /*spi clock for receiving psi module signal*/ spi_clk_out;
    output wire [7:0] state_indicator;
    reg [1:0] frequency_select_11;
    initial frequency_select_11 = 2'b00;
    reg [1:0] frequency_select_2;
    initial frequency_select_2 = 2'b11;
    reg [2:0] structure_select;
    initial structure_select = 3'b111;
    reg start;
    initial start = 0;
    reg reset;
    reg default_D_flag;
    initial default_D_flag = 1'b0;
    initial reset = 1'b0;
    input wire run;
    assign run = 1'b1;
    wire PHI12_B_flag;
    assign PHI12_B_flag = 0;
    wire mannul_change = 0;
    board_test_ABC test(
            D,
            D_bar,
            DATA_OUT,
               /*input*/   start, reset, frequency_select_11, frequency_select_2, default_D_flag,  PHI3_flag, PHI12_B_flag, mannul_change,
            /*output A*/ PHI2_A, PHI1_A, PHI3_A, CLK_LATCH_A, CLK_CH_A, CLK_DEC, CLK_D_A,
            /*output C*/ CLK_LATCH_C, CLK_CH_C, CLK_D_C,
            /*output B*/ PHI1_B, PHI2_B, CLK_LATCH_B, CLK_CH_B, CLK_D_B,
            /*state indicator*/ state_indicator,
            /*set up serial*/ serial, load_spi,
            /*set up serial*/ serial_stem, load_spi_stem,
           /*spi clock for receiving psi module signal*/ spi_clk_out,
           /*spi clock for receiving psi module signal*/ spi_clk_out_stem,
           /*monitoring clock*/ write,
           /*dac*/ SDI, SYNC_bar, LDAC_bar, SCLK, CLEAR_bar,
            sys_clk_100M
        );
        
    always @(posedge run) 
    begin
    //structure D
    reset <= 0;
    start <= 0;
    #(`wait * 1000)
    start <= 1;
    #(`wait * 100)
    start <= 0;
    #(`wait * 1000) 

    PHI3_flag <= 1;

    #(`wait * 40000) 
    default_D_flag <= 1;
    #(`wait * 40000) 
    frequency_select_11 <= 2'b11;
    end
endmodule
