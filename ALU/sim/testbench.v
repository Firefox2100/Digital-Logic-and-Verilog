`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/30 15:37:05
// Design Name: ALU implementation
// Module Name: testbench
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tcsg324-1
// Tool Versions: Vivado 2018.3
// Description: 
// 
// Dependencies: 
// Top module of ALU.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench();

    reg [7:0] A,B;
    reg [2:0] S;
    reg [1:0] O;
    reg C1,clk,G,rst;
    
    wire C2;
    wire [7:0] F;
    
    ALU ALU(
        .O(O),
        .S(S),
        .F(F),
        .A(A),
        .B(B),
        .C1(C1),
        .C2(C2),
        .clk(clk),
        .G(G),
        .rst(rst)
        );
    
    initial
    begin
        A=8'b00000000;
        B=8'b00000000;
        S=3'b000;
        O=2'b00;
        C1=0;clk=0;G=1;
        #0 rst=1;
        #2 rst=0;
        #4 rst=1;
    end
    
    always #5
        clk=~clk;
    
    always @(posedge clk)
        {O,S,C1,A,B}={O,S,C1,A,B}+1;
endmodule
