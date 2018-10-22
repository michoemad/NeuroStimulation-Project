`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/06/06 12:33:52
// Design Name: 
// Module Name: SPI
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
`define width 12

module SPI_template(
    serial, parallel, input_clk, start
    );
    input serial, input_clk, start;
    output reg [`width - 1 : 0] parallel;
    reg [`width - 1 : 0] temp;
    initial parallel = `width'b0;
    initial temp = `width'b0;
    integer i;
    initial i = 0;
    integer j;
    initial j = 0;
    always@(posedge input_clk) 
    begin
        if (start == 1)
            begin
                i <= i+1;
                temp [0] <= serial;
                temp [`width - 1 : 1] <= temp [`width - 2 : 0];
        
                if (i == `width)
                    begin
                        i <= 0;
                        temp <= `width'b0;
                        parallel <= temp;
                    end
            end
        else
            begin
                i <= 0;
                parallel <= 0;
                temp <= `width'b0;
            end
    end

    
    
    
endmodule
