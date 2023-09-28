`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cooper Union ;)
// Engineer: Ridwan Hussain
// 
// Create Date: 09/27/2023 04:21:43 PM
// Design Name: tb_MultiplierLUT
// Module Name: tb_MultiplierLUT
// Project Name: MultiplierLUT
// Target Devices: Xilinx Zed Board
// Description: Creating an example Look Up Table with 2 bit Multipliers.
// 
// Dependencies: N/A
// 
// Revision: A
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_MultiplierLUT;
    reg [1:0] a, b;
    wire [3:0] c; 
    
    MultiplierLUT test(.a(a), .b(b), .c(c));
    
    integer k;
    
    initial begin
        for (k = 0; k < 16; k = k + 1) begin
            {a, b} = k; 
            #10;
        end
    end
    
endmodule
