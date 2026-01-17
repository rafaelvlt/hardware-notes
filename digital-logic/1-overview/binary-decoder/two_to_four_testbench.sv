//2. derive testbench for the 2-4 decoder
`timescale 1ns / 10ps
module two_to_four_testbench ();
  logic en_test;
  logic [1:0] a_test;
  logic [3:0] bcode_test;

  two_to_four uut (
      .a(a_test),
      .en(en_test),
      .bcode(bcode_test)
  );

  initial begin
    en_test = 1'b0;
    a_test  = 2'b00;
    #200;
    en_test = 1'b1;
    a_test  = 2'b01;
    #200;
    en_test = 1'b1;
    a_test  = 2'b10;
    #200;
    en_test = 1'b0;
    a_test  = 2'b11;
    #200;
    en_test = 1'b1;
    a_test  = 2'b00;
    #200;
    en_test = 1'b0;
    a_test  = 2'b10;
    #200;
    $stop;
  end
endmodule
