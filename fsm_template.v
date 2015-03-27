`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:25:00 02/19/2014 
// Design Name: 
// Module Name:    FSM template 
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

module fsm_NAME(
    input clk,
    input RESET,		// Comment this line out if no RESET input
    input [M-1:0] INPUTS,  	// M is the number of input bits
    output [N-1:0] OUTPUTS	// N is the number of output bits
    );

    reg [S-1:0] state = ??;	// S is the number of state bits; can be initialized
    reg [S-1:0] next_state;	// next_state is actually not a register! Must be
				//   synthesized as combinational logic!
    reg [N-1:0] OUTPUTS;	// The outputs are actually not a register! Must be
				//   synthesized as combinational logic!


				// The next line is our state encoding
    parameter STATE0 = ??, STATE1 = ??, STATE2 = ??, ... etc.;



				// Instantiate the state register
    always @(posedge clk)	// Remove the "if" part if no RESET input
        if (RESET == 1) state <= STATE_??;
        else state <= next_state;


				// Define next_state logic => combinational
		 		// Every case must either be a conditional expression
    always @(*)  		//   or an "if" with a matching "else"
      case (state)
            STATE1: next_state <= (INPUTS == ??) ? ... : ...;
            STATE2: next_state <= ??;
	    STATE3: ...
           default: next_state <= ??;
      endcase



				// Define output logic => combinational
		 		// Every case must either be a conditional expression
    always @(*)  		//   or an "if" with a matching "else"
      case (state)
            STATE1: OUTPUTS <= (INPUTS == ??) ? ... : ...;
            STATE2: OUTPUTS <= ??;
            STATE3: ...
           default: OUTPUTS <= ??;
     endcase

endmodule