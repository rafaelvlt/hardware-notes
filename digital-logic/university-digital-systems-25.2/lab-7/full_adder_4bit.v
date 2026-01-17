module full_adder_4bit(
						input	[3:0] A,
						input [3:0] B,
						input 		Cin,
					 	output [3:0] Sum,
						output 		Cout
);
	wire COUT0, COUT1, COUT2;
	full_adder ADD0(
					.A	(A[0]),
					.B (B[0]),
					.Sum (Sum[0]),
					.Cin (Cin),
					.Cout (COUT0)
	);
	
	full_adder ADD1(
					.A	(A[1]),
					.B (B[1]),
					.Sum (Sum[1]),
					.Cin (COUT0),
					.Cout (COUT1)
	);

	full_adder ADD2(
					.A	(A[2]),
					.B (B[2]),
					.Sum (Sum[2]),
					.Cin (COUT1),
					.Cout (COUT2)
	);
	
	full_adder ADD3(
					.A	(A[3]),
					.B (B[3]),
					.Sum (Sum[3]),
					.Cin (COUT2),
					.Cout (Cout)
	);

endmodule

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