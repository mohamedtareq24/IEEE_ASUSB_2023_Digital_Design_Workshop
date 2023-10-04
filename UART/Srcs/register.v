`timescale 1ns / 1ps



module register(clk , load , reset ,D , Q);

    input clk , load , reset ;
    input [7:0] D ;
    output reg [7:0] Q ;
    
    always @ ( negedge clk or negedge reset) begin 
    
        
        if (!reset) 
            Q <= 'b0 ;
        else if (load)
            Q <= D ;
        else 
            Q <= Q ;
    
    
    end
endmodule
