`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cooper Union ;)
// Engineer: Ridwan Hussain
// 
// Create Date: 09/27/2023 03:57:26 PM
// Design Name: MultiplierLUT
// Module Name: MultiplierLUT
// Project Name: MultiplierLUT
// Target Devices: Xilinix Zed Board
// Description: Created a Multiplier Look Up Table using $readmemb
// 
// Dependencies: N/A
// 
// Revision: A
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MultiplierLUT(
    input [1:0] a, b,
    output [3:0] c
    );
    
    //4 bit wide 16 memory location Register
    reg [3:0] MultiplierLUT [15:0];
    wire [3:0] ROM_addr = {a, b};
    
    assign c = MultiplierLUT[ROM_addr];
    
    initial $readmemb("MultiplierLUT.txt", MultiplierLUT, 0, 15);
    
    
endmodule
