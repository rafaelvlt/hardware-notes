module top_adder_display(
						input	[3:0] A,
						input [3:0] B,
						input 		Cin,
						output 		Cout,
						output 		ledCin,
						output 		[6:0]seg1,
						output 		[6:0]seg2,
						output 		[6:0]seg3,
						output		[6:0]seg4
);
	wire [3:0] Sum;
	wire [4:0] ovf;
	full_adder_4bit adder(
							.A (A),
							.B (B),
							.Cin (Cin),
							.Sum (Sum),
							.Cout (Cout)
						);
	
	assign ovf= {Cout, Sum};
	
	bcd_to_7segments_anodo_30 displaySum(
								.bcd (ovf),
								.seg1 (seg1),
								.seg2 (seg2)
							);
							
	bcd_to_7segment_anodo displayA(
								.bcd (A),
								.seg (seg3)
						);
	
	bcd_to_7segment_anodo displayB(
								.bcd (B),
								.seg (seg4)
						);
	
	assign ledCin = Cin;
	


endmodule
