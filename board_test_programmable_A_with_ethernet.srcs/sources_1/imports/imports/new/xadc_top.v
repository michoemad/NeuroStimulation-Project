`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dinilent Inc.
// Engineer: Arthur Brown
// 
// Create Date: 08/17/2016 02:26:20 PM
// Module Name: top
// Project Name: XADC Demo
// Target Devices: Nexys Video
// Tool Versions: Vivado 2016.4
// Description: Register JXADC data for each channel and display on OLED. Shut down the demo with RSTN when done.
// 
// 03/23/2017(ArtVVB): Updated to Vivado 2016.4
//
//////////////////////////////////////////////////////////////////////////////////


module xadc_top(
    input clk100MHz,
    input [15:0] xadc_data,
    input ready,
    input eth_int_b, 
    input eth_pme_b,
    output eth_rst_b,
    output eth_mdc,  
    inout eth_mdio,  
    input eth_rxck, 
    input eth_rxctl,
    input [3:0]eth_rxd,
    
    output eth_txck, 
    output eth_txctl,
    output [3:0]eth_txd  
    //input [3:0] xa_p,
    //input [3:0] xa_n
);
    wire enable;
    wire [7:0]rx_data_out;
    wire clk_1,clk_2;
    reg   [6:0] xadc_addr = 7'h10;
    reg  [15:0] oled_din0 = 0,
                oled_din1 = 0,
                oled_din2 = 0,
                oled_din3 = 0; // data captured from each channel of the XADC
    reg [15:0] x_out;
    
    //reg [7:0] data_get = 8'b10101010;
    //wire [15:0] x_out;
    //assign x_out = 16'b1100010100000001;

    
    wire [3:0]leds;
    //parameter test = 3.25;
    //assign check_light = test;
    //clk_wiz_0 clk_sys(clk_1,clk_2,clk_3,clk_4,reset,locked,clk100MHz);
//    xadc_wiz_0 XADC (
//        .daddr_in(xadc_addr),
//        .dclk_in(clk_3), 
//        .den_in(enable), 
//        .di_in(), 
//        .dwe_in(), 
//        .busy_out(),                    
//        .vauxp0(xa_p[1]),
//        .vauxn0(xa_n[1]),
//        .vauxp1(xa_p[0]),
//        .vauxn1(xa_n[0]),
//        .vauxp8(xa_p[2]),
//        .vauxn8(xa_n[2]),
//        .vauxp9(xa_p[3]),
//        .vauxn9(xa_n[3]),                           
//        .do_out(xadc_data), 
//        .eoc_out(enable),
//        .channel_out(),
//        .drdy_out(ready)
//    );
    
 //   OLED_master OLED (
 //       .clk (CLK100MHZ),
  //      .rstn       (RSTN),
   //     
  //      .din0      (oled_din0), 
   //     .din1      (oled_din1),
  //      .din2      (oled_din2),
   //     .din3      (oled_din3),
    //    
     //   .oled_sdin      (SDIN),
      //  .oled_sclk      (SCLK),
      //  .oled_dc        (DC),
     //   .oled_res       (RES),
  //      .oled_vbat      (VBAT),
 //       .oled_vdd       (VDD)
 //   );

gigabit_test
        ( clk100MHz,
           // switches_try,  
            leds,    
            x_out,  
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
            rx_data_out,
            // Ethernet Transmit interface
            eth_txck, 
            eth_txctl,
            eth_txd  
     );   
  //////////////////////////////////////////////////top top_0(clk_2,rst,start,x_out,no_mean,tx);
  //usb_com usb_com_0 (clk_2,rst,start,check,tx);
   // always @ (negedge(ready)) //when data is ready to be read from register
   // begin
      //  case (xadc_addr[3:0])
          //  4'h1: oled_din0 <= xadc_data;
         //   4'h0: oled_din1 <= xadc_data;
        //    4'h8: oled_din2 <= xadc_data;
       //     4'h9: oled_din3 <= xadc_data;
      //  endcase
        
      //  case(xadc_addr)
        //    7'h11: xadc_addr <= 7'h10;//last address goes out and load new address in
       //     7'h10: xadc_addr <= 7'h18;
      //      7'h18: xadc_addr <= 7'h19;
     //       7'h19: xadc_addr <= 7'h11; 
    //        default: xadc_addr <= 7'h10;
    //    endcase  
   // end
   always @ (posedge(ready)) //when data is ready to be read from register 
   //always @ (posedge(clk_3)) //when data is ready to be read from register 
   begin
   x_out <=xadc_data;
   //x_out <=16'b0010010010001111;   
   end
    
    
endmodule
