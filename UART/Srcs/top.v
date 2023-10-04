`timescale 1ns / 1ps



module top(clk , reset , TX );

    input clk , reset ;
    output TX ;
    
    wire [7:0] data ;
    wire [3:0] sel ;
    wire en;
    
    counter8bit C1 (
                     .clk(en),
                     .reset(reset),
                     .Q(data)
          ); 
          
    
    mod10_counter C2 (
                        .clk(clk),
                        .reset(reset),
                        .Q(sel),
                        .en(en)
          );      
          
    
    mux_TX MUX (
                        .start_bit(0),
                        .data(data),
                        .end_bit(1),
                        .sel(sel),
                        .out(TX)
          );
endmodule
