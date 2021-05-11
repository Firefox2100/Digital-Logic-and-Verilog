`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/22 09:21:23
// Design Name: ALU implementation
// Module Name: shift_register
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tcsg324-1
// Tool Versions: Vivado 2018.3
// Description: 
// 
// Dependencies: 
// Top module of line_shifting_register.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_register(clk,rst,din,dout);
    
    input [7:0] din;
    input clk;
    input rst;
    output [7:0] dout;
    
    wire [7:0] w0,w1,w2,w3;
    
    line_shifting_reg l0(
        .din(din),
        .dout(w0),
        .clk(clk),
        .rst(rst)
        );
    line_shifting_reg l1(
        .din(w0),
        .dout(w1),
        .clk(clk),
        .rst(rst)
        );
    line_shifting_reg l2(
        .din(w1),
        .dout(w2),
        .clk(clk),
        .rst(rst)
        );
    line_shifting_reg l3(
        .din(w2),
        .dout(w3),
        .clk(clk),
        .rst(rst)
        );
    line_shifting_reg l4(
        .din(w3),
        .dout(dout),
        .clk(clk),
        .rst(rst)
        );
endmodule
