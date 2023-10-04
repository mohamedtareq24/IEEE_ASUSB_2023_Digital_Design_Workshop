`timescale 1ns / 1ps



module mux_TX(start_bit, data , end_bit ,sel , out );

    input start_bit , end_bit ;
    input [3:0] sel ;
    input [7:0] data ;
    
    output reg out ;
    
    always @ (*) begin 
    
        case(sel)
            
            4'b0000:  out = start_bit ;
            4'b0001:  out = data[0] ;
            4'b0010:  out = data[1] ;
            4'b0011:  out = data[2] ;
            4'b0100:  out = data[3] ;
            4'b0101:  out = data[4] ;
            4'b0110:  out = data[5] ;
            4'b0111:  out = data[6] ;
            4'b1000:  out = data[7] ;
            4'b1001:  out = end_bit ;
            default : out = 1'b0 ;
        
        endcase 
    end
endmodule
