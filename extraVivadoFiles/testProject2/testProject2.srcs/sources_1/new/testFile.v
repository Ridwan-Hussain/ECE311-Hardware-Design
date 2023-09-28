`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Ridwan Hussain
// 
// Create Date: 09/13/2023 05:34:20 PM
// Design Name: testFile
// Module Name: testFile
// Project Name: testProj2
//
// Revision: 1
// Revision 0.01 - File Created
// Additional Comments: Created the file and code was sourced by slides from Prof.
// Hoerning.
// 
//////////////////////////////////////////////////////////////////////////////////

//create a new module
module tutorial(A, B, C, D);
    //Defining inputs and outputs
    input wire [0:0] A;
    input wire [0:0] B;
    input wire [0:0] C;
    output wire [0:0] D;
    
    //internal wire
    wire wire1;
    
    //Gates for wires
    or(wire1, A, B);
    and(D, C, wire1);

endmodule
