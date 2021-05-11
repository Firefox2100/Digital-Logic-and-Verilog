`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/22 10:15:26
// Design Name: 
// Module Name: sim_reg
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


module sim_reg();
    reg rst,clk;
    wire [7:0] Q1,Q2;
    reg [7:0] D;
    
    a_register a(
        .clk(clk),
        .rst(rst),
        .D(D),
        .Q(Q1)
        );
    
    shift_register s(
        .clk(clk),
        .rst(rst),
        .din(D),
        .dout(Q2)
        );
    
    initial
    begin
        clk=1;
        D=8'b00000000;
        #2 rst=1;
        #5 rst=0;
        #8 rst=1;
    end
    
    always #10
        clk=~clk;
    
    always #20
        D={$random}%8'b11111111;
endmodule
