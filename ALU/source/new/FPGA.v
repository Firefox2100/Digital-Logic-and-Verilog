`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/30 15:37:05
// Design Name: ALU implementation
// Module Name: FPGA
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tcsg324-1
// Tool Versions: Vivado 2018.3
// Description: 
// The top module designed to test out this ALU implementation.
// Dependencies: 
// Top module of ALU
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FPGA(O,S,F,A,B,C2,clk,rst);
    input [2:0] S;          //logic function selection
    input [1:0] O;          //output selection
    input [7:0] A,B;        //operating numbers
    input clk,rst;
    
    output C2;
    output [7:0] F;
    
    reg C1,G;
    wire c;
    
    pregate pregate(
        .clk(clk),
        .gateout(c)
        );
    
    ALU ALU(
        .O(O),
        .S(S),
        .F(F),
        .A(A),
        .B(B),
        .C1(C1),
        .C2(C2),
        .clk(c),
        .G(G),
        .rst(rst));
    
    initial
        G=1;
    
    always @(O, S)
    if (O!=2'b11 && S!=3'b000)
        C1=1;
    else
        C1=0;
endmodule
