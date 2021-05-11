`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 11:12:18
// Design Name: 
// Module Name: divider
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


module divider(clk,cout);
    
    input clk;
    output reg cout;
    
    reg [31:0] cnt;
    
    initial
    begin
        cnt=0;
        cout=0;
    end
    
    always @(posedge clk)
    begin
        if(cnt==32'd500000)
        begin
            cout=~cout;
            cnt<=32'd0;
        end
        else
        begin
        cnt<=cnt+32'd1;
        end
    end
endmodule
