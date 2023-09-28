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

 

module CarryLookAhead_tb;
    reg [3:0] a, b;
    reg [5:0] tVect;
    reg cin;
    wire [3:0] sum;
    wire cout;

    CarryLookAheadAdder CLAA(.cin(cin), .a(a), .b(b), .cout(cout), .sum(sum));
    //FullAdder FA(.cin(cinT), .a(aT), .b(bT), .cout(coutT), .sum(sumT));

 

    initial begin 
        $monitor("A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", a, b, cin, sum, cout);
    end

    initial begin
        cin = 0;
        for (tVect = 0; tVect < 8; tVect = tVect + 1) begin
            {cin, a, b} = tVect;
            #10;
        end
    end


endmodule