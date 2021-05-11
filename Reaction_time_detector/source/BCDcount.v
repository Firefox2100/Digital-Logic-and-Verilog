`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 10:49:04
// Design Name: 
// Module Name: BCDcount
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


module BCDcount(clk,clr,E,BCD1,BCD0);

    input clk,clr,E;
    output reg [3:0] BCD1,BCD0;
    
    always @(posedge clk)
    begin
        if (clr)
        begin
            BCD1<=0;
            BCD0<=0;
        end
        else if (E)
            if (BCD0==4'b1001)
            begin
                BCD0<=0;
                if (BCD1==4'b1001)
                    BCD1<=0;
                else
                    BCD1<=BCD1+1;
            end
            else
                BCD0<=BCD0+1;
    end
endmodule
