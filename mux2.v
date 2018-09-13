`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:30 09/11/2018 
// Design Name: 
// Module Name:    mux2 
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
module mux2(Input0,Input1,Cin,InputOut);
	

	input Input0;
	input Input1;
	input Cin;
	

	output InputOut;
	
	
	wire NotCin;
	wire OutFromInput0AndNotCin;
	wire OutFromInput1AndCin;
	wire InputOutTemp;
	

	not CinAndNotCin(NotCin,Cin);

	and Input0OUT(OutFromInput0AndNotCin,Input0,NotCin);
	and Input1OUT(OutFromInput1AndCin,Input1,Cin);

	or INPUT0OUTORINPUT1OUT(InputOutTemp,OutFromInput0AndNotCin,OutFromInput1AndCin);

	assign InputOut = InputOutTemp;

endmodule
