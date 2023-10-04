`timescale 1ns / 1ps



module UART( clk , reset , data ) ;

   input clk , reset ;
   output [7:0] data ; 
  
   wire in ;
   
  top TX (.clk(clk) , .reset(reset) , .TX(in) ) ;
  
  RX RX (.TX(in) , .clk(clk) , .reset(reset) , .data(data) ) ; 
  
endmodule
