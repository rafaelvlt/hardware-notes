// 4. use the two-to-four to make a 3-to-eight decoder
module three_to_eight (
    input logic [2:0] a,
    input logic en,
    output logic [7:0] bcode
);
  logic en_real;
  assign en_real = en & a[2];

  two_to_four bottom (
      .en(en_real),
      .a(a[1:0]),
      .bcode(bcode[3:0])
  );

  two_to_four bottom (
      .en(en_real),
      .a(a[1:0]),
      .bcode(bcode[7:4])
  );


endmodule
