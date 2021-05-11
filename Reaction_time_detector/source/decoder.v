`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 11:01:37
// Design Name: 
// Module Name: decoder
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


module decoder(BCD,LEDs);
    
    input [3:0] BCD;
    output reg [1:7] LEDs;
    
    always @(BCD)
        case(BCD)
            0:LEDs=7'b1111110;
            1:LEDs=7'b0110000;
            2:LEDs=7'b1101101;
            3:LEDs=7'b1111001;
            4:LEDs=7'b0110011;
            5:LEDs=7'b1011011;
            6:LEDs=7'b1011111;
            7:LEDs=7'b1110000;
            8:LEDs=7'b1111111;
            9:LEDs=7'b1111011;
            default: LEDs=7'bxxxxxxx;
        endcase
endmodule
