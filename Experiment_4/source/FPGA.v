`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/12 21:43:17
// Design Name: 
// Module Name: FPGA
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


module FPGA(seq,clk,rst,b);
    
    input seq,clk,rst;
    output b;
    
    wire c;
    
    seq_detector seq_detector(
        .seq(seq),
        .clk(c),
        .rst(rst),
        .b(b));
    
    divider divider(
        .clk(clk),
        .clkout(c));
    
endmodule
