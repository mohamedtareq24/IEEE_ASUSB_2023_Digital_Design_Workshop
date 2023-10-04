`timescale 1ns / 1ps



module UART_tb();
    
    reg clk , reset ;
    wire [7:0] data ;
    
     always #5 clk = ~clk;

UART UART (.reset(reset) , .clk(clk) , .data(data) ); 
    // Initialize inputs
     initial begin
        clk = 0;
        reset = 1;
        
        #4 reset = 0 ;
        #10 reset = 1;
     end
endmodule
