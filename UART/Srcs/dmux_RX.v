`timescale 1ns / 1ps



module dmux_RX(in ,sel ,out);
    
    input in ;
    input [3:0] sel;
    
    output reg [9:0] out ;
    
    initial begin
    
        out = 10'b0;
    
    end
    always @ (*) begin 
    
        case(sel)
            
            4'b0000:  out[0] = in ;
            4'b0001:  out[1] = in ;
            4'b0010:  out[2] = in ;
            4'b0011:  out[3] = in ;
            4'b0100:  out[4] = in ;
            4'b0101:  out[5] = in ;
            4'b0110:  out[6] = in ;
            4'b0111:  out[7] = in ;
            4'b1000:  out[8] = in ;
            4'b1001:  out[9] = in ;
            default : out = 1'b0 ;
        
        endcase 
    end  
endmodule
