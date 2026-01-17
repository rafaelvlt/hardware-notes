// 2. Derive a testbench for the 2-bit greater than circuit
`timescale 1ns / 10ps  // é crase n aspas simples... define o time unit

module greater_testbench ();
  logic test_a, test_b, test_res;

  greater_than_circuit uut (
      .a  (test_a),
      .b  (test_b),
      .res(test_res)
  );

  initial begin
    test_a = 2'b00;
    test_b = 2'b00;
    #200;
    test_a = 2'b00;
    test_b = 2'b01;
    #200;
    test_a = 2'b00;
    test_b = 2'b10;
    #200;
    test_a = 2'b00;
    test_b = 2'b11;
    #200;
    test_a = 2'b01;
    test_b = 2'b00;
    #200;
    test_a = 2'b01;
    test_b = 2'b01;
    #200;
    test_a = 2'b01;
    test_b = 2'b10;
    #200;
    test_a = 2'b01;
    test_b = 2'b11;
    #200;
    test_a = 2'b10;
    test_b = 2'b00;
    #200;
    test_a = 2'b10;
    test_b = 2'b01;
    #200;
    test_a = 2'b10;
    test_b = 2'b10;
    #200;
    test_a = 2'b10;
    test_b = 2'b11;
    #200;
    test_a = 2'b11;
    test_b = 2'b00;
    #200;
    test_a = 2'b11;
    test_b = 2'b01;
    #200;
    test_a = 2'b11;
    test_b = 2'b10;
    #200;
    test_a = 2'b11;
    test_b = 2'b11;
    #200;
    $stop;
  end
endmodule
