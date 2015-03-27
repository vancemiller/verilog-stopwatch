`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:30:31 02/13/2014 
// Design Name: 
// Module Name:    counter1second 
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
module counter(
    input countUp, paused, Clock,
    output [15:0] Count
    );
	 
	 reg [35:0] TempCount = 0;

	 always @(posedge Clock)
		 begin
			 TempCount <= paused ? TempCount : (countUp ? TempCount + 32'h1 : TempCount - 32'h1);
		 end
	
	 assign Count[15:0] = TempCount[35:19];

endmodule