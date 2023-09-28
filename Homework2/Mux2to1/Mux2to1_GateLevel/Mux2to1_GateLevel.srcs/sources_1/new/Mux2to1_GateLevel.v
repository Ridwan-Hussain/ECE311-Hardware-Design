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


module Mux2to1_GateLevel
    #(parameter n = 2)
    (input select, 
    input [(n-1):0] data0, data1,
    output[(n-1):0] dataOut);
    
    wire nSelect;
    wire [(n-1):0] selectD0, selectD1;

    not(nSelect, select);
    genvar i;
    generate for (i = 0; i < n; i = i + 1) begin
        and(selectD0[i], nSelect, data0[i]);
        and(selectD1[i], select, data1[i]);
        or(dataOut[i], selectD0[i], selectD1[i]);
    end
    endgenerate
    
endmodule