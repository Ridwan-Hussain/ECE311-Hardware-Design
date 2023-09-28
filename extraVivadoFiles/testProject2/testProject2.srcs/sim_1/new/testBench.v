`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Ridwan Hussain
// 
// Create Date: 09/13/2023 05:34:20 PM
// Design Name: testBench
// Module Name: testBench
// Project Name: testProj2
//
// Revision: 1
// Revision 0.01 - File Created
// Additional Comments: Created the file and code was sourced by slides from Prof.
// Hoerning.
// 
//////////////////////////////////////////////////////////////////////////////////


module TestTutorial;
    reg[2:0] swt;
    wire D;
    
    integer i;
    reg e_output;
    
    tutorial ttul(.A(swt[2]), .B(swt[1]), .C(swt[0]), .D(D));
    
    function expected_led;
        input [2:0] switch;
        begin
            expected_led = switch[2] | switch[i] & switch[0];
        end
    endfunction
    
    initial begin
    for (i = 0; i < 8; i=i+1) begin
        #50 swt=i;
        #10 e_output = expected_led(swt);
        
        if (D== e_output) 
            $display("LED output matched at %t\n", $time);
        else 
            $display("LED output mis-matched %t, expected %b, actual %b\n", $time, e_output, D);
        end
    end

endmodule
