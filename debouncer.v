`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:10 02/21/2014 
// Design Name: 
// Module Name:    debouncer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module debouncer(input raw, clk,
						output reg clean = 0
    );
	 
	 parameter N = 19; // lg(0.01 seconds * 100*10^6 cycles/second) = 19
	 reg [N:0] count;
	 
	 always @(posedge clk) 
		begin
			count <= (raw != clean ) ? count + 1 : 0;
			clean <= (count[N] == 1) ? raw : clean;
		end
endmodule