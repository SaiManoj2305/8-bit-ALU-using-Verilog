`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:36:12 03/11/2025 
// Design Name: 
// Module Name:    alu8-bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
    input [7:0] a,
    input [7:0] b,
    input [3:0] s,
    output [7:0] alu_result
    );
reg [7:0] alu_result;
always @(*) begin
case(s)
4'b0000: alu_result = a + b;//addition
4'b0001: alu_result = a - b;//subtraction
//4'b0010: alu_result = a * b;// multiplication
4'b0011: alu_result = a/b;// division
4'b0100: alu_result = a<<1;// left shift
4'b0101: alu_result = a>>1;//right shift
4'b0110: alu_result = {a[6:0],a[7]};// rotate right
4'b0111: alu_result = {a[0],a[7:1]};// rotate left
4'b1000: alu_result = a & b;// logical and
4'b1001: alu_result = a|b;// logical or
4'b1010: alu_result = a ^ b;// logical xor
4'b1011: alu_result = ~(a & b);// logical nand
4'b1100: alu_result = ~(a|b);//logical nor
4'b1101: alu_result = ~(a^b);// logical xnor
4'b1110: alu_result = (a>b)?8'd1:8'd0;//greater than check
4'b1111: alu_result = (a==b)?8'd1:8'd0;//equal to check
default: alu_result = 8'bX;
endcase
end
endmodule
