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

module LookAhead
    (input a, b, cin,
    output cout);
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module FullAdder
    (input a, b, cin,
    output sum);
    assign sum = a ^ b ^ cin;
endmodule

module CarryLookAheadAdder
    (input cin, 
    input [3:0] a, b, 
    output cout, 
    output [3:0] sum);
    
    wire [3:0] carries;

    FullAdder FA0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]));
    LookAhead LA0(.a(a[0]), .b(b[0]), .cin(cin), .cout(carries[0]));

    FullAdder FA1(.a(a[1]), .b(b[1]), .cin(carries[0]), .sum(sum[1]));
    LookAhead LA1(.a(a[1]), .b(b[1]), .cin(carries[0]), .cout(carries[1]));

    FullAdder FA2(.a(a[2]), .b(b[2]), .cin(carries[1]), .sum(sum[2]));
    LookAhead LA2(.a(a[2]), .b(b[2]), .cin(carries[1]), .cout(carries[2]));
    
    FullAdder FA3(.a(a[3]), .b(b[3]), .cin(carries[2]), .sum(sum[3]));
    LookAhead LA3(.a(a[3]), .b(b[3]), .cin(carries[2]), .cout(cout));

    /*assign sum[0] = a[0] ^ b[0] ^ carries[0];
    assign p[0] = (a[0] | b[0]) & cin;
    assign g[0] = a[0] & b[0];
    assign carries[0] = p[0] | g[0];
        
    assign sum[1] = a[1] ^ b[1] ^ carries[0];
    assign p[1] = (a[1] | b[1]) & carries[0];
    assign g[1] = a[1] & b[1];
    assign carries[1] = p[1] | g[1];
    
    assign sum[2] = a[2] ^ b[2] ^ carries[1];
    assign p[2] = (a[2] | b[2]) & carries[1];
    assign g[2] = a[2] & b[2];
    assign carries[2] = p[2] | g[2];
    
    assign sum[3] = a[3] ^ b[3] ^ carries[2];
    assign p[3] = (a[3] | b[3]) & carries[2];
    assign g[3] = a[3] & b[3];
    assign carries[3] = p[3] | g[3];*/
        
endmodule