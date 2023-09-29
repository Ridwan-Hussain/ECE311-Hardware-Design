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

`include "Decoder3to8.v"

module IC74138(
    input [2:0] SW, 
    input G1, G2, GE,
    output [7:0] LED
    );
    
    wire [7:0] LEDint;
    
    Decoder3to8 Dec(.SW(SW), .LED(LEDint));
        
    assign LED[0] = ~(LEDint[0] & ~G1 & ~G2 & GE);
    assign LED[1] = ~(LEDint[1] & ~G1 & ~G2 & GE);
    assign LED[2] = ~(LEDint[2] & ~G1 & ~G2 & GE);
    assign LED[3] = ~(LEDint[3] & ~G1 & ~G2 & GE);
    assign LED[4] = ~(LEDint[4] & ~G1 & ~G2 & GE);
    assign LED[5] = ~(LEDint[5] & ~G1 & ~G2 & GE);
    assign LED[6] = ~(LEDint[6] & ~G1 & ~G2 & GE);
    assign LED[7] = ~(LEDint[7] & ~G1 & ~G2 & GE);


endmodule
