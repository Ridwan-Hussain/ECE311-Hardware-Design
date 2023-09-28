`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cooper Union ;)
// Engineer: Ridwan Hussain
// 
// Create Date: 09/27/2023 03:08:23 PM
// Design Name: IC74138
// Module Name: IC74138
// Project Name: IC74138
// Target Devices: Xilinix Zed Board
// Description: Recreating the IC71438 3-to-8 Decoder.
// 
// Dependencies: N/A
// 
// Revision: A
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IC74138(
    input [2:0] SW, 
    input G1, G2, GE,
    output [7:0] LED
    );
        
    assign LED[0] = ~(~SW[0] & ~SW[1] & ~SW[2] & ~G1 & ~G2 & GE);
    assign LED[1] = ~( SW[0] & ~SW[1] & ~SW[2] & ~G1 & ~G2 & GE);
    assign LED[2] = ~(~SW[0] &  SW[1] & ~SW[2] & ~G1 & ~G2 & GE);
    assign LED[3] = ~( SW[0] &  SW[1] & ~SW[2] & ~G1 & ~G2 & GE);
    assign LED[4] = ~(~SW[0] & ~SW[1] &  SW[2] & ~G1 & ~G2 & GE);
    assign LED[5] = ~( SW[0] & ~SW[1] &  SW[2] & ~G1 & ~G2 & GE);
    assign LED[6] = ~(~SW[0] &  SW[1] &  SW[2] & ~G1 & ~G2 & GE);
    assign LED[7] = ~( SW[0] &  SW[1] &  SW[2] & ~G1 & ~G2 & GE);


endmodule
