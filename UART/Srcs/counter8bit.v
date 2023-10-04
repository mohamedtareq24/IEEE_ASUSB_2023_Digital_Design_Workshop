`timescale 1ns / 1ps



module counter8bit(clk , reset , Q );
    
    input clk , reset ;
    
    output reg [7:0] Q ;
    
    always @ (posedge clk or negedge reset) begin 
        
        if(!reset)
            Q <= 'b0 ;
        else 
            Q <= Q + 1 ;  
    end   
    
endmodule
