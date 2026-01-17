//7. use 2-4 decoders to derive a 4 to 16 decoder
module four_to_sixteen (
    input logic [3:0] a,
    input logic en,
    output logic [15:0] bcode
);
  logic [3:0] select;

  two_to_four selector (
      .a(a[3:2]),
      .en(en),
      .bcode(select)
  );

  two_to_four lsb (
      .a(a[1:0]),
      .en(select[0]),
      .bcode(bcode[3:0])
  );
  two_to_four sec_lsb (
      .a(a[1:0]),
      .en(select[1]),
      .bcode(bcode[7:4])
  );
  two_to_four low_msb (
      .a(a[1:0]),
      .en(select[2]),
      .bcode(bcode[11:8])
  );
  two_to_four msb (
      .a(a[1:0]),
      .en(select[3]),
      .bcode(bcode[15:12])
  );

endmodule
