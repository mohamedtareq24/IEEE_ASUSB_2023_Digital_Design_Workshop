`timescale 1ns / 1ps



module TX(clk , reset , TX );

    input clk , reset ;
    output TX ;
    
	 
   //internal ports 
    wire [7:0] data ;
    wire [3:0] sel ;
    wire en;
    
	PLL pll (
	.inclk0(clk),
	.c0(clk_out)
	);
	 
	 // instantiate data counter 
	  counter8bit C1 (
                     .clk(en),
                     .reset(reset),
                     .Q(data)
          ); 
          
    // selector counter ( buad rate generator )
    mod10_counter C2 (
                        .clk(clk_out),
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
