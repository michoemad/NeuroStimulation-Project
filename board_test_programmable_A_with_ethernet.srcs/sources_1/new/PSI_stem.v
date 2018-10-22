`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/07/18 12:55:58
// Design Name: 
// Module Name: PSI_stem
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
`define number_of_bits_needed_to_send_to_set_up_stem 14

module PSI_stem(
    serial, parallel, input_clk, load, start, done, reset
    );
    input input_clk, start, reset;
    output reg load;
    initial load = 0;
    input wire [`number_of_bits_needed_to_send_to_set_up_stem - 1 : 0] parallel;
    reg [`number_of_bits_needed_to_send_to_set_up_stem : 0] temp;
    initial temp [`number_of_bits_needed_to_send_to_set_up_stem : 1] = parallel;
    initial temp [0] = 0;
    output wire serial;
    assign serial = temp [0];
    integer i;
    initial i = 0;
    integer j;
    initial j = 0;
    
    output reg done;
    initial done = 0;

    always@(posedge input_clk) 
    begin
        if (reset == 1)
            begin
                i <= 0;
                done = 0;
                load <= 0;
            end
        else if (start == 1)
            begin
                i <= i+1;
                temp <= temp / 2;
        
                if(i == 0) 
                    begin
                        load <= 1;
                        done <= 0;
                    end
                else if (i == `number_of_bits_needed_to_send_to_set_up_stem)
                    begin
                        i <= 0;
                        temp <= `number_of_bits_needed_to_send_to_set_up_stem'b0;
                        done = 1;
                        load <= 0;
                    end
                else
                    load <= load;
            end
        else
            begin
                done <= 0;
                temp <= {parallel, 1'b0};
            end
    end


   
    
    
    
    
endmodule
