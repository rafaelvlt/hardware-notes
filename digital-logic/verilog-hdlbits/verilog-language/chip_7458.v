module chip_7458 (
  input p1a, p1b, p1c, p1d, p1e, p1f,
  output p1y,
  input p2a, p2b, p2c, p2d,
  output p2y );

wire p1x, p1w, p2x, p2w;
assign p1x = p1a & p1b & p1c;
assign p1w = p1f & p1e & p1d;
assign p2x = p2a & p2b;
assign p2w = p2c & p2d;
assign p1y = p1x | p1w;
assign p2y = p2x | p2w;

endmodule

