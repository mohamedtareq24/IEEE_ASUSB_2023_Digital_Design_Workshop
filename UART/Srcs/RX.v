`timescale 1ns / 1ps



module RX(TX , clk , reset , data);
    
    input TX , clk , reset ;
    output [7:0] data ;

wire [3:0] counter_out ;
wire enable ;
wire [9:0] out ;

dmux_RX M1 ( .in(TX) , .sel(counter_out), .out(out) );

register R1 ( .clk(clk) , .load(enable) , .reset(reset) , 
                .D( out[8:1] ),
                .Q(data) 
                );
                
mod10_counter C1 (.clk(clk) , .reset(reset) , .en(enable) ,
                    .Q(counter_out) 
                    );
endmodule
