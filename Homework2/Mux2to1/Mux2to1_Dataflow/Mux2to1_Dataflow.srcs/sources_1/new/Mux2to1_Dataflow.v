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

module Mux2to1_Dataflow
    #(parameter n = 2)
    (input select, 
    input [(n-1):0] data0, data1,
    output[(n-1):0] dataOut);
    
    wire [(n-1):0] selectD0, selectD1, selectNBits, nSelectNBits;
    
    assign selectNBits = {n{select}};
    assign nSelectNBits = {n{~select}};
    assign selectD0 = nSelectNBits & data0;
    assign selectD1 = selectNBits & data1;
    assign dataOut = selectD0 | selectD1;
        
endmodule
