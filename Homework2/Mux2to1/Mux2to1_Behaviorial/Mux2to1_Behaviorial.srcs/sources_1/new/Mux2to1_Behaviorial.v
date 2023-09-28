`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 02:57:49 PM
// Design Name: 
// Module Name: Mux2to1_Behaviorial
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
