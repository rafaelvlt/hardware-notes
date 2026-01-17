module mux2_1_4bit (
    input  [3:0] A,     // Entrada 0
    input  [3:0] B,     // Entrada 1
    input        sel,   // Seleção: 0 = A, 1 = B
    output reg [3:0] Y  // Saída selecionada
);
    always @(*) begin
        case (sel)
            1'b0: Y = A;
            1'b1: Y = B;
        endcase
    end
endmodule
