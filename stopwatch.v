`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:00 02/21/2014 
// Design Name: 
// Module Name:    stopwatch 
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
module stopwatch(input BTNU, BTNS, BTND, CLK,
						output [7:0] SevenSegValue, [3:0] DispSelect
    );
	 
	 debouncer dU(BTNU, CLK, cleanU), dS(BTNS, CLK, cleanS), dD(BTND, CLK, cleanD);
	 
	 fsm F(CLK, cleanU, cleanS, cleanD, countUp, paused);
	 
	 wire [15:0] count;
	 
	 counter C(countUp, paused, CLK, count[15:0]);
	 
	 display4digit D(count[15:0], CLK, SevenSegValue[7:0], DispSelect[3:0]);

endmodule