//1. two to 4 with enable
module two_to_four (
    input logic en,
    input logic [1:0] a,
    output logic [3:0] bcode
);

  assign bcode[0] = en & (~a[0] & ~a[1]);
  assign bcode[1] = en & (a[0] & ~a[1]);
  assign bcode[2] = en & (~a[0] & a[1]);
  assign bcode[3] = en & (a[0] & a[1]);

endmodule
