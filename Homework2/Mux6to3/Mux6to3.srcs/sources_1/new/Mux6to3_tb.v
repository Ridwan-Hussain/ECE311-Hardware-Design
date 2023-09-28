`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cooper Union ;)
// Engineer: Ridwan Hussain
// 
// Create Date: 09/19/2023 
// Design Name: Mux2to1_GateLevel
// Module Name: Mux2to1_GateLevel
// Project Name: Mux 2-to-1 Gate Level
// Description: A two bit wide 2-to-1 Multiplexer.
// 
// Dependencies: None
// 
// Revision: 1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Mux6to3_tb;
    reg s;
    reg [5:0] x, y;
    wire [5:0] dO;

    Mux6to3 test(.Tselect(s), .Tdata0(x), .Tdata1(y), .TdataOut(dO));    

    initial begin 
        $monitor("S=%b, D0=%b, D1=%b, DO=%b", s, x, y, dO);
    end

    initial begin
        x = 6'b000000; y = 6'b000000; s = 0;
        #10 x = 6'b010101;
        #10 y = 6'b010101;
        #10 x = 6'b111111; y = 6'b000000;
        #10 x = 6'b101010; y = 6'b111111;
        #10 s = 1;
        #10 x = 6'b010101;
        #10 y = 6'b010101;
        #10 x = 6'b111111; y = 6'b000000;
        #10 x = 6'b101010; y = 6'b111111;
        #20;
    end

endmodule