`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2023 03:13:06 PM
// Design Name: 
// Module Name: tb_IC74138
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_IC74138;
    reg [2:0] x;
    reg Gate1, Gate2, GateEnable;
    wire [7:0] y;
    
    IC74138 testChip(.SW(x), .G1(Gate1), .G2(Gate2), .GE(GateEnable), .LED(y));
    
    integer k;
    
    initial begin
        for (k = 0; k < 64; k = k + 1) begin  
            {GateEnable, Gate1, Gate2, x} = k;
            #10;
        end
    end
    
endmodule
