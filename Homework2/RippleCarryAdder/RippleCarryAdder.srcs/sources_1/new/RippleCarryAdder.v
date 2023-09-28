`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 03:40:49 PM
// Design Name: 
// Module Name: Mux2to1_Dataflow
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

module FullAdder
    (input a, b, cin, 
    output sum, cout);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module RippleCarryAdder
    (input cin, 
    input [3:0] a, b, 
    output cout, 
    output [3:0] sum);
    wire[3:0] carries;
    
    FullAdder FA0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(carries[1]));
    FullAdder FA1(.a(a[1]), .b(b[1]), .cin(carries[1]), .sum(sum[1]), .cout(carries[2]));
    FullAdder FA2(.a(a[2]), .b(b[2]), .cin(carries[2]), .sum(sum[2]), .cout(carries[3]));
    FullAdder FA3(.a(a[3]), .b(b[3]), .cin(carries[3]), .sum(sum[3]), .cout(cout));
        
endmodule