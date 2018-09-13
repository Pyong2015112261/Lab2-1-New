`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:47 09/11/2018
// Design Name:   mux2
// Module Name:   U:/UB/Digital Logic and Design/Verilog/Lab2-1-New/Lab2-1-New/mux_tb.v
// Project Name:  Lab2-1-New
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
	reg Input0;
	reg Input1;
	reg Cin;

	// Outputs
	wire InputOut;


	mux2 uut (
		.Input0(Input0), 
		.Input1(Input1), 
		.Cin(Cin), 
		.InputOut(InputOut)
	);

	initial begin

		Input0 = 0;
		Input1 = 0;
		Cin = 0;


		#100;
        

		  Input0 = 0;      Input1 = 0;      Cin = 1;      #100;
        Input0 = 0;      Input1 = 1;      Cin = 0;      #100;
        Input0 = 0;      Input1 = 1;      Cin = 1;      #100;
        Input0 = 1;      Input1 = 0;      Cin = 0;      #100;
        Input0 = 1;      Input1 = 0;      Cin = 1;      #100;
        Input0 = 1;      Input1 = 1;      Cin = 0;      #100;
        Input0 = 1;      Input1 = 1;      Cin = 1;      #100;

	end
      
endmodule

