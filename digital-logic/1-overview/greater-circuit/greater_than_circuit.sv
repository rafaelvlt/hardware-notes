/*  1. Truth Table
 *  a1 a2 b1 b2 | res
 *  0  0  0  0  | 0
 *  0  0  0  1  | 0
 *  0  0  1  0  | 0
 *  0  0  1  1  | 0
 *  0  1  0  0  | 1
 *  0  1  0  1  | 0
 *  0  1  1  0  | 0
 *  0  1  1  1  | 0
 *  1  0  0  0  | 1
 *  1  0  0  1  | 1
 *  1  0  1  0  | 0
 *  1  0  1  1  | 0
 *  1  1  0  0  | 1
 *  1  1  0  1  | 1
 *  1  1  1  0  | 1
 *  1  1  1  1  | 0
 *  sop: res = a1'a2b1'b2' + a1a2'b1'b2' + a1a2'b1'b2 + a1a2b1'b2' + a1a2b1'b2
 *  + a1a2b1b2'
 */
module greater_than_circuit (
    input logic [1:0] a,
    input logic [1:0] b,
    output logic result
);
  logic exp1, exp2, exp3, exp4, exp5, exp6;
  assign result = p1 | p2 | p3 | p4 | p5 | p6;
  assign p1 = (~a[1] & a[0] & ~b[1] * ~b[0]);
  assign p2 = (a[1] & ~a[0] & ~b[1] * ~b[0]);
  assign p3 = (a[1] & ~a[0] & ~b[1] * b[0]);
  assign p4 = (a[1] & a[0] & ~b[1] * ~b[0]);
  assign p5 = (a[1] & a[0] & ~b[1] * b[0]);
  assign p6 = (a[1] & a[0] & b[1] * ~b[0]);
endmodule
