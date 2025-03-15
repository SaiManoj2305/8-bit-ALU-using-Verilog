`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:44:09 03/11/2025
// Design Name:   alu
// Module Name:   /home/ise/VHDL_LAB/alu8-bit/alu_tb.v
// Project Name:  alu8-bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [3:0] s;

	// Outputs
	wire [7:0] alu_result;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.alu_result(alu_result)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		s=4'b0000;a=8'b0111_1110; b=8'b0101_1111;
		#50
		s=4'b0001;a=8'b0100_0011; b=8'b0000_0010;
		#50
		s=4'b0010;a=8'b1010_0011; b=8'b0010_0001;
		#50
		s=4'b0011;a=8'b0111_0111; b=8'b0100_1101;
		#50
		s=4'b0100;a=8'b0100_0101; b=8'b0010_0011;
		#50
		s=4'b0101;a=8'b0010_0111; b=8'b0011_0011;
		#50
		s=4'b0110;a=8'b1110_0010; b=8'b0000_1110;
		#50
		s=4'b0111;a=8'b0010_1100; b=8'b0001_1000;
		#50
		s=4'b1000;a=8'b1110_0000; b=8'b0001_0011;
		#50
		s=4'b1001;a=8'b0101_0001; b=8'b0111_1110;
		#50
		s=4'b1010;a=8'b1101_1000; b=8'b0000_1111;
		#50
		s=4'b1011;a=8'b0001_1001; b=8'b1011_0101;
		#50
		s=4'b1100;a=8'b0010_0011; b=8'b1001_1000;
		#50
		s=4'b1101;a=8'b0100_1001; b=8'b0101_0100;
		#50
		s=4'b1110;a=8'b0000_1000; b=8'b1010_1111;
		#50
		s=4'b1111;a=8'b0110_0011; b=8'b0010_0111;

		
	end
      
endmodule

