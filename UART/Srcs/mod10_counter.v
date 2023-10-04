`timescale 1ns / 1ps



module mod10_counter(clk , reset , en , Q);

    input clk , reset ;
    
    output en ;
    output reg [3:0] Q ;
    
    always @ (posedge clk or negedge reset ) begin 
        
        if( !reset ) 
            Q <= 'b0 ;
        else if ( Q == 9 ) 
            Q <= 'b0 ;
        else 
            Q <= Q + 1 ;
    
    end
    
    assign en = ( Q == 9 ) ;
endmodule
