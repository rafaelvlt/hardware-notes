// 5. greater 4bit testbench
`timescale 1ns / 10ps

module greater_4bit_testbench ();
  logic [3:0] a_test, b_test;
  logic out_test;

  greater_circuit_4bit uut (
      .a  (a_test),
      .b  (b_test),
      .out(out_test)
  );

  initial begin
    a_test = 4'b0000;
    b_test = 4'b0000;
    #200;  // msb maior = 1
    a_test = 4'b1100;
    b_test = 4'b0001;
    #200;  // msb menor = 0
    a_test = 4'b0010;
    b_test = 4'b0100;
    #200;  // msb igual lsb maior = 1
    a_test = 4'b0010;
    b_test = 4'b0000;
    #200;  // msb igual lsb menor = 0
    a_test = 4'b1000;
    b_test = 4'b1010;
    #200;  // igual == 0
    a_test = 4'b1111;
    b_test = 4'b1111;
    #200;
    $stop;
  end

endmodule
