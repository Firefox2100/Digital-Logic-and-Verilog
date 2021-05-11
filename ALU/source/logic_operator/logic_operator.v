`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Northwestern Polytechnical University
// Engineer: Yunze Wang
// 
// Create Date: 2019/11/30 14:47:42
// Design Name: ALU implementation
// Module Name: logic_operator
// Project Name: ALU Design for Digital Logic and Verilog
// Target Devices: xc7a35tcsg324-1
// Tool Versions: Vivado 2018.3
// Description: 
// 
// Dependencies: 
// None.
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module logic_operator(A,B,F,S);
    
    input [7:0] A,B;
    input [2:0] S;
    output reg [7:0] F;
    
    always @*
    begin
        case (S)
        3'b000: F=A&B;
        3'b001: F=A|B;
        3'b010: F=A^B;
        3'b011: F=~(A^B);
        3'b100: F=~(A&B);
        3'b101: F=~(A|B);
        3'b110: F=~A;
        3'b111: F=~B;
        endcase
    end
endmodule
