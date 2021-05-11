`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 20:21:26
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


module divider(cin,cout);

    input cin;
    output reg cout;
    reg [27:0] r;
    
    initial
    begin
        r=28'd0;
        cout=0;
    end
    
    always @(posedge cin)
    begin
        r=r+1;
        if (r == 28'd50000000)
        begin
            r=0;
            cout=~cout;
        end
    end
    
endmodule
