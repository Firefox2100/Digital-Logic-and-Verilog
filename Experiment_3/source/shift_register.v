`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 09:21:23
// Design Name: 
// Module Name: shift_register
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
