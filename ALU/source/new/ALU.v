`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/30 11:38:45
// Design Name: ALU implementation
// Module Name: ALU
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tcsg324-1
// Tool Versions: Vivado 2018.3
// Description: 
// 
// Dependencies: 
// Top module of CLA, counter, shift_register, logic_operator and mux4_1.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module ALU(O,S,F,A,B,C1,C2,clk,G,rst);

    input [2:0] S;          //logic function selection
    input [1:0] O;          //output selection
    input [7:0] A,B;        //operating numbers
    input C1,clk,G,rst;
    
    output C2;
    output [7:0] F;
    
    wire [7:0] added,shifted,counted,logic;
    
    CLA CLA(
        .A(A),
        .B(B),
        .S(added),
        .cin(C1),
        .cout(C2)
        );
    
    shift_register shift_register(
        .clk(clk),
        .rst(rst),
        .din(A),
        .dout(shifted)
        );
        
    counter counter(
        .en(G),
        .ld(C1),
        .clk(clk),
        .rst(rst),
        .data(A),
        .Q(counted)
        );
    
    logic_operator logic_operator(
        .A(A),
        .B(B),
        .F(logic),
        .S(S)
        );
    
    mux4_1 mux4_1(
        .A(added),
        .B(shifted),
        .C(counted),
        .D(logic),
        .S(O),
        .nEN(G),
        .Y(F)
        );
        
endmodule
