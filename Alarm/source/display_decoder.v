`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/02 20:02:36
// Design Name: 
// Module Name: display_decoder
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


module display_decoder(a,b);
    
    input wire [3:0] a;
    output reg [6:0] b;
    
    always@(a)
    begin
        case(a)
            4'b0000:b=7'b1111110;
            4'b0001:b=7'b0110000;
            4'b0010:b=7'b1101101;
            4'b0011:b=7'b1111001;
            4'b0100:b=7'b0110011;
            4'b0101:b=7'b1011011;
            4'b0110:b=7'b1011111;
            4'b0111:b=7'b1110000;
            4'b1000:b=7'b1111111;
            4'b1001:b=7'b1111011;
            default:b=7'b0000000;
        endcase
    end
endmodule
