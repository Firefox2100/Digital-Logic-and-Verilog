`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/08 13:40:53
// Design Name: 
// Module Name: testbench
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


module testbench();
    
    reg clk,mb,sb,start;
    wire [6:0] L1,L2,L3,L4;
    wire buzz,cc;
    wire [3:0] l1,l2,l3,l4;
    
    alarm alarm(
        .c(clk),
        .mb(mb),
        .sb(sb),
        .start(start),
        .L1(L1),
        .L2(L2),
        .L3(L3),
        .L4(L4),
        .buzz(buzz),
        .l1(l1),
        .l2(l2),
        .l3(l3),
        .l4(l4),
        .clk(cc));
        
    initial
    begin
    clk=0;
    mb=0;
    sb=0;
    start=0;
    #500 start=1;
    #600 start=0;
    end
    
    always #5
        clk=~clk;
    
    
endmodule
