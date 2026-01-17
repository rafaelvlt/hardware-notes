module top_mux_display (
    input  [3:0] A,         // Entrada A
    input  [3:0] B,         // Entrada B
    input        sel,       // Chave de seleção
    output [6:0] segA,      // Display para A
    output [6:0] segB,      // Display para B
    output [6:0] segY       // Display para saída Y
);

    wire [3:0] Y;                // Saída do mux

    // Instancia o mux 2:1
    mux2_1_4bit mux_inst (
        .A   (A),
        .B   (B),
        .sel (sel),
        .Y   (Y)
    );

    // Decodificador hexadecimal para A
    bcd_to_7segment_anodo dec_A (
        .bcd (A),
        .seg (segA)
    );

    // Decodificador hexadecimal para B
    bcd_to_7segment_anodo dec_B (
        .bcd (B),
        .seg (segB)
    );

    // Decodificador hexadecimal para saída Y
    bcd_to_7segment_anodo dec_Y (
        .bcd (Y),
        .seg (segY)
    );

endmodule
