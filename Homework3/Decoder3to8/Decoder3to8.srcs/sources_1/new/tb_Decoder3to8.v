`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cooper Union ;)
// Engineer: Ridwan Hussain
// 
// Create Date: 09/26/2023 01:49:34 PM
// Design Name: tb_Decoder3to8
// Module Name: tb_Decoder3to8
// Project Name: tb_Decoder3to8
// Target Devices: Xilinix Zed Board
// Description: Testbench for Decoder provided by Professor Hoerning.
// 
// Dependencies: N/A
// 
// Revision: A
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_Decoder3to8;
    reg [2:0] x;
    wire [7:0] y;
    
    Decoder3to8 D3t8(.SW(x), .LED(y));
    
    integer k;
    
    initial begin
    x = 0;
    for (k = 0; k < 8; k = k + 1)
        #5 x = k; #10;
    end
    
endmodule
