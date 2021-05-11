`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 10:41:12
// Design Name: 
// Module Name: RTD
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


module RTD(clk,rst,w,bt,led,D1,D0,S);

    input clk,rst,w,bt;
    output wire led;
    output wire [1:7] D1,D0;
    output reg [1:0] S;
    
    reg LED;
    wire [3:0] BCD1,BCD0;
    wire c;
    
    initial
    begin
        S=2'b11;
    end
    
    always @(posedge clk)
    begin
        if(!bt||rst)
            LED<=0;
        else if(w)
            LED<=1;
    end
    
    assign led=~LED;
    
    BCDcount counter(
        .clk(c),
        .clr(rst),
        .E(LED),
        .BCD1(BCD1),
        .BCD0(BCD0)
        );
    
    decoder seg1(
        .BCD(BCD1),
        .LEDs(D1)
        );
    
    decoder seg0(
        .BCD(BCD0),
        .LEDs(D0)
        );
    
    divider divider(
        .clk(clk),
        .cout(c));
endmodule
