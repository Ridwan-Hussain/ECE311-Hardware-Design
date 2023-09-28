//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Wed Sep 13 17:14:37 2023
//Host        : micro13 running 64-bit Debian GNU/Linux 10 (buster)
//Command     : generate_target TestProgram_wrapper.bd
//Design      : TestProgram_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TestProgram_wrapper
   (A,
    B,
    C,
    D);
  input [0:0]A;
  input [0:0]B;
  input [0:0]C;
  output [0:0]D;

  wire [0:0]A;
  wire [0:0]B;
  wire [0:0]C;
  wire [0:0]D;

  TestProgram TestProgram_i
       (.A(A),
        .B(B),
        .C(C),
        .D(D));
endmodule
