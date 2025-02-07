`timescale 1ns/10ps


module lab_1(
    input logic a,
    input logic b,
    input logic c,
    output logic x,
    output logic y
);

    
    logic not_c, or_gate, nand_gate, xor_gate;

    assign not_c = ~c;
    assign or_gate = a | b;
    assign nand_gate = ~(a & b);
    assign xor_gate = nand_gate ^ or_gate;
    assign x = or_gate ^ not_c;
    assign y = xor_gate & or_gate;

endmodule
