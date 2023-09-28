`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cooper Union ;)
// Engineer: Ridwan Hussain
// 
// Create Date: 09/26/2023 01:32:28 PM
// Design Name: Decoder3to8
// Module Name: Decoder3to8
// Project Name: Decoder3to8
// Target Devices: Xilinix Zed Board
// Description: 3 to 8 line decoder made using dataflow
// 
// Dependencies: N/A
// 
// Revision: A
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Decoder3to8(
    input [2:0] SW,
    output [7:0] LED
    );
    
    assign LED[0] = ~SW[0] & ~SW[1] & ~SW[2];
    assign LED[1] =  SW[0] & ~SW[1] & ~SW[2];
    assign LED[2] = ~SW[0] &  SW[1] & ~SW[2];
    assign LED[3] =  SW[0] &  SW[1] & ~SW[2];
    assign LED[4] = ~SW[0] & ~SW[1] &  SW[2];
    assign LED[5] =  SW[0] & ~SW[1] &  SW[2];
    assign LED[6] = ~SW[0] &  SW[1] &  SW[2];
    assign LED[7] =  SW[0] &  SW[1] &  SW[2];
    
endmodule
