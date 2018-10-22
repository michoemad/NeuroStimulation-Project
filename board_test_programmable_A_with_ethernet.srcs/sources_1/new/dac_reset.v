`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/08/09 19:55:44
// Design Name: 
// Module Name: dac_reset
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


module dac_reset(
    input wire clk_400M, start,
    input [9:0] total_posedge_count,
    output wire shift, chip_shift,
    output reg load, SYNC_bar, LDAC_bar, SCLK, CLEAR_bar, SH1_WR0, check
    );
    reg [28:0] counter;
    initial counter = 29'd0;
   
    wire [9:0] total;
    assign total = total_posedge_count / 27;
    
    wire [9:0] half;
    assign half = total / 2;
    
    always@(posedge clk_400M)
        begin
            if (start == 0)
                begin
                counter <= 0;
                check <= 0;
                end
            else
                begin
                    check <= 1;
                    if (counter < total_posedge_count - 1)
                        counter <= counter + 1;
                    else
                        counter <= counter;
                end
        end
//controls
    reg shift_control;
    initial shift_control = 0;
    wire [28:0] shift_max;
    assign shift_max = total * 25 + half;
    wire [28:0] shift_min;
    assign shift_min = 0;
    always@(posedge clk_400M)
        begin
            if (start == 0 || counter == total_posedge_count - 1)
                shift_control <= 0;
            else 
                begin
                    if (counter == shift_min)
                        shift_control <= 1;
                    else if (counter == shift_max)
                        shift_control <= 0;
                    else
                        shift_control <= shift_control;
                end
        end

    initial CLEAR_bar = 1;
    always@(posedge clk_400M)
    begin
        if (start == 0 || counter == total_posedge_count - 1)
            CLEAR_bar <= 0;
        else
            CLEAR_bar <= 1;
    end
    
    reg chip_shift_control;
    initial chip_shift_control = 0;
    wire [28:0] chip_shift_max;
    assign chip_shift_max = total * 14 + half + half / 2;
    wire [28:0] chip_shift_min;
    assign chip_shift_min = total + half + half / 2;
    always@(posedge clk_400M)
        begin
            if (start == 0 || counter == total_posedge_count - 1)
                chip_shift_control <= 0;
            else 
                begin
                    if (counter == chip_shift_min)
                        chip_shift_control <= 1;
                    else if (counter == chip_shift_max)
                        chip_shift_control <= 0;
                    else
                        chip_shift_control <= chip_shift_control;
                end
        end
    
    initial SH1_WR0 = 0;
    wire [28:0] SH1_WR0_fall;
    assign SH1_WR0_fall = total + half + half / 2;
    wire [28:0] SH1_WR0_rise;
    assign SH1_WR0_rise = total * 2 + half + half / 2;
    always@(posedge clk_400M)
        begin
            if (start == 0 || counter == total_posedge_count - 1)
                SH1_WR0 <= 0;
            else 
                begin
                    if (counter == SH1_WR0_rise)
                        SH1_WR0 <= 1;
                    else if (counter == SH1_WR0_fall)
                        SH1_WR0 <= 0;
                    else
                        SH1_WR0 <= SH1_WR0;
                end
        end  


//clocks
    initial load = 0;
    always@(posedge clk_400M)
        begin
            if (start == 0 || counter == total_posedge_count - 1)
                load <= 0;
            else
                begin
                    if (counter == 0) 
                        load <= 1;
                    else if (counter == total + half)
                        load <= 0;
                    else
                        load <= load;
                end
        end
    
    reg [9:0] counter2;
    initial counter2 = 10'b0;
    
    always@(posedge clk_400M)
        begin
            if (start == 0 || counter == total_posedge_count - 1)
                counter2 <= 0;
            else
                begin
                    if (counter == total_posedge_count - 1)
                        counter2 <= 0;
                    else if (counter2 < total - 1)
                        counter2 <= counter2 + 1;
                    else
                        counter2 <= 0;
                end
        end
    
    initial SCLK = 0;
    always@(posedge clk_400M)
        begin
            if (start == 0 || counter == total_posedge_count - 1)
                SCLK <= 0;
            else
                begin
                    if (counter2 == 0) 
                        SCLK <= 1;
                    else if (counter2 == half)
                        SCLK <= 0;
                    else
                        SCLK <= SCLK;
                end
        end
        

        
    reg [9:0] counter3;
    initial counter3 = half/2;
    
    always@(posedge clk_400M)
        begin
            if (start == 0 || counter == total_posedge_count - 1)
                counter3 <= half/2;
            else
                begin
                    if (counter == total_posedge_count - 1)
                        counter3 <= half/2;
                    else if (counter3 < total - 1)
                        counter3 <= counter3 + 1;
                    else
                        counter3 <= 0;
                end
        end
        
    reg temp_shift = 0;
    always@(posedge clk_400M)
        begin
            if (start == 0 || counter == total_posedge_count - 1)
                temp_shift <= 0;
            else
                begin
                    if (counter3 == 0) 
                        temp_shift <= 1;
                    else if (counter3 == half)
                        temp_shift <= 0;
                    else
                        temp_shift <= temp_shift;
                end
        end
    
    assign shift = shift_control && temp_shift;
    assign chip_shift = chip_shift_control && SCLK;
         
            
    initial SYNC_bar = 1;
    wire [28:0] SYNC_bar_fall;
    assign SYNC_bar_fall = half + half / 2;
    wire [28:0] SYNC_bar_rise;
    assign SYNC_bar_rise = total * 25;
    always@(posedge clk_400M)
    begin
        if (counter == SYNC_bar_fall)
            SYNC_bar <= 0;
        else if (counter == SYNC_bar_rise)
            SYNC_bar <= 1;
    end
    
    initial LDAC_bar = 1;
    wire [28:0] LDAC_bar_fall;
    assign LDAC_bar_fall = total * 26;
    wire [28:0] LDAC_bar_rise;
    assign LDAC_bar_rise = total * 27;
    always@(posedge clk_400M)
    begin
        if (counter == LDAC_bar_fall)
            LDAC_bar <= 0;
        else if (counter == LDAC_bar_rise)
            LDAC_bar <= 1;
    end
    
endmodule
