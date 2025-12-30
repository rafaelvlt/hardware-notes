module bcd_to_7segment_anodo (
    input  [3:0] bcd,       // Entrada BCD (0 a 9)
    output reg [6:0] seg    // Segmentos a-g (ativa em '0' para ânodo comum)
);
    // seg[6] = a, seg[5] = b, ..., seg[0] = g
    always @(*) begin
        case (bcd)
            4'd0: seg = 7'b0000001; // 0
            4'd1: seg = 7'b1001111; // 1
            4'd2: seg = 7'b0010010; // 2
            4'd3: seg = 7'b0000110; // 3
            4'd4: seg = 7'b1001100; // 4
            4'd5: seg = 7'b0100100; // 5
            4'd6: seg = 7'b0100000; // 6
            4'd7: seg = 7'b0001111; // 7
            4'd8: seg = 7'b0000000; // 8
            4'd9: seg = 7'b0000100; // 9
				4'd10: seg = 7'b0001000;// 10
				4'd11: seg = 7'b1100000;// 11
				4'd12: seg = 7'b0110001;// 12
				4'd13: seg = 7'b1000010;// 13
				4'd14: seg = 7'b0110000;// 14
				4'd15: seg = 7'b0111000;// 15
            default: seg = 7'b1111110; // hífen ou erro
        endcase
    end

endmodule
