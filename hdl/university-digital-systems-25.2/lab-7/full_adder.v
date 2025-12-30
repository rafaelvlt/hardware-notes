module full_adder(
						input  A,
						input  B,
						input	 Cin,
						output Sum,
						output Cout
);
	wire X1, AND1, AND2;
	assign X1 = A ^ B;
	assign AND1 = Cin & X1;
	assign AND2 = A & B;
	assign Sum = Cin ^ X1;
	assign Cout = AND1 | AND2;
endmodule
