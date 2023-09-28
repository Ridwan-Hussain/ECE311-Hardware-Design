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
// Additional Comments:`timescale 1ns / 1ps
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

module Mux2to1_tb 
    #(parameter n = 2);
    reg s;
    reg [(n-1):0] x, y;
    wire [(n-1):0] dO;
    
    Mux2to1_Behaviorial test(.select(s), .data0(x), .data1(y), .dataOut(dO));    

    initial begin 
        $monitor("S=%b, D0=%b, D1=%b, DO=%b", s, x, y, dO);
    end
    
    initial begin
        x = 0; y = 0; s = 0;
        #10 x = 1;
        #10 y = 1;
        #10 x = 3; y = 0;
        #10 x = 2; y = 3;
        #10 s = 1;
        #10 x = 1;
        #10 y = 1;
        #10 x = 3; y = 0;
        #10 x = 2; y = 3;
        #20;
    end
    
endmodule