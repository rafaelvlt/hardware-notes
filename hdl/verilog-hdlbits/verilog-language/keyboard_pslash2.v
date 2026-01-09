module keyboard_pslash2(
  input [15:0] scancode,
  output reg left,
  output reg right,
  output reg up,
  output reg down
);

always @(*) begin
  case(scancode)
    16'he06b: begin
      left = 1;
      right = 0;
      up = 0;
      down = 0;
    end
    16'he072: begin
      left = 0;
      right = 0;
      up = 0;
      down = 1;
    end
    16'he074: begin
      left = 0;
      right = 1;
      up = 0;
      down = 0;
    end
    16'he075: begin
      left = 0;
      right = 0;
      up = 1;
      down = 0;
    end
    default: begin
      left = 0;
      right = 0;
      up = 0;
      down = 0;
    end
  endcase
end

endmodule
