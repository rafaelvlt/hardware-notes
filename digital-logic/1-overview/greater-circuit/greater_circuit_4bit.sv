/* 4. derivar 4bit greater circuit
*
*    |----[ 2-bit-eq]--------------|
*    |     -------                 |
*   a3 -- |  gre |                 0
*   a4 --|   a  |-------------- -------------|
*   b3 --|  ter |                  0         |  _____
*   b4 --|  2   |                  |  ---    ---| or|---- out
*         -------                  - |and|------|___|
*         -------        ----------- |___|
*   a1 -- |  gre |       |
*   a2 --|   a  |        |
*   b1 --|  ter |  ------
*   b2 --|  1   |
*        -------
*  se g2 = true, out é true, se g1 é true e g2 false, é true se {a3, a4} == {b3, b4}
*/

module greater_circuit_4bit (
    input logic [3:0] a,
    input logic [3:0] b,
    output logic out
);
  logic greater1_res, greater2_res, eq;

  greater_than_circuit greater1 (
      .a  (a[1:0]),
      .b  (b[1:0]),
      .res(greater1_res)
  );
  greater_than_circuit greater2 (
      .a  (a[3:2]),
      .b  (b[3:2]),
      .res(greater2_res)
  );

  assign eq  = a[3:2] == b[3:2];
  assign out = greater2_res | (greater1_res & eq);

endmodule
