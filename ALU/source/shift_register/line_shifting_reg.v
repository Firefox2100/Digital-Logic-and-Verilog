`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/30 12:39:40
// Design Name: ALU implementation
// Module Name: line_shifting_reg
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tcsg324-1
// Tool Versions: Vivado 2018.3
// Description: 
// 
// Dependencies: 
// Module a_flipflop.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module line_shifting_reg(din,dout,clk,rst);

    input [7:0] din;
    input clk,rst;
    output [7:0] dout;
    a_flipflop a0(
        .D(din[0]),
        .rst(rst),
        .clk(clk),
        .Q(dout[0]));
    a_flipflop a1(
        .D(din[1]),
        .rst(rst),
        .clk(clk),
        .Q(dout[1]));
    a_flipflop a2(
        .D(din[2]),
        .rst(rst),
        .clk(clk),
        .Q(dout[2]));
    a_flipflop a3(
        .D(din[3]),
        .rst(rst),
        .clk(clk),
        .Q(dout[3]));
    a_flipflop a4(
        .D(din[4]),
        .rst(rst),
        .clk(clk),
        .Q(dout[4]));
    a_flipflop a5(
        .D(din[5]),
        .rst(rst),
        .clk(clk),
        .Q(dout[5]));
    a_flipflop a6(
        .D(din[6]),
        .rst(rst),
        .clk(clk),
        .Q(dout[6]));
    a_flipflop a7(
        .D(din[7]),
        .rst(rst),
        .clk(clk),
        .Q(dout[7]));
endmodule
