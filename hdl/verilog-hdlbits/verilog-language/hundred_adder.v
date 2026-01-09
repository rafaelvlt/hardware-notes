module hundred_adder(
  input [99:0] a, b,
  input cin,
  output [99:0] cout,
  output [99:0] sum );
genvar i;
generate
  for (i = 0; i < 100 ; i = i + 1) begin: gen_adders
    if (i == 0)
      full_adder inst1 (.cin(cin), .cout(cout[i]), .a(a[i]), .b(b[i]), .sum(sum[i]) );
    else
      full_adder inst1 (.cin(cout[i-1]), .cout(cout[i]), .a(a[i]), .b(b[i]), .sum(sum[i]) );
  end
endgenerate
endmodule

module full_adder(input cin, input a, input b, output sum, output cout);
assign sum = a^ b ^ cin;
assign cout = (a & b) | (a & cin) | (b & cin);
endmodule
