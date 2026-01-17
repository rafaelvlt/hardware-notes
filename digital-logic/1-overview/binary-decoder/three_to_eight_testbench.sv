//5. derive testbench for the 3-8 decoder
`timescale 1ns / 10ps

module three_to_eight_testbench ();
  logic en_test;
  logic [2:0] a_test;
  logic [7:0] bcode_test;

  three_to_eight uut (
      .a(a_test),
      .en(en_test),
      .bcode(bcode_test)
  );

  initial begin
    en_test = 1'b0;
    a_test  = 3'b000;
    #200;
    en_test = 1'b1;
    a_test  = 3'b001;
    #200;
    en_test = 1'b1;
    a_test  = 3'b010;
    #200;
    en_test = 1'b0;
    a_test  = 3'b011;
    #200;
    en_test = 1'b0;
    a_test  = 3'b100;
    #200;
    en_test = 1'b0;
    a_test  = 3'b101;
    #200;
    en_test = 1'b0;
    a_test  = 3'b110;
    #200;
    en_test = 1'b0;
    a_test  = 3'b111;
    #200;
    en_test = 1'b1;
    a_test  = 3'b000;
    #200;
    en_test = 1'b0;
    a_test  = 3'b010;
    #200;
    $stop;
  end
endmodule
