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

module Mux6to3
    (input Tselect, 
    input [5:0] Tdata0, Tdata1,
    output[5:0] TdataOut);
    
    Mux2to1_GateLevel MUX_GL(.select(Tselect), .data0(Tdata0[1:0]), .data1(Tdata1[1:0]), .dataOut(TdataOut[1:0]));
    Mux2to1_Dataflow MUX_DF(.select(Tselect), .data0(Tdata0[3:2]), .data1(Tdata1[3:2]), .dataOut(TdataOut[3:2]));
    Mux2to1_Behaviorial MUX_B(.select(Tselect), .data0(Tdata0[5:4]), .data1(Tdata1[5:4]), .dataOut(TdataOut[5:4]));
            
endmodule

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

module Mux2to1_Behaviorial
    #(parameter n = 2)
    (input select, 
    input [(n-1):0] data0, data1,
    output reg [(n-1):0] dataOut);
    
    always @ (*) begin
        if (select == 0) begin
            dataOut = data0;        
        end else if (select == 1) begin
            dataOut = data1; 
        end
    end
    
endmodule