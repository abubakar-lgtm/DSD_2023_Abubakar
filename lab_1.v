`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2025 04:09:02 PM
// Design Name: 
// Module Name: lab_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab_1(
    input logic a,b,c,
    output logic x,y
    );
    
    logic not1, or1, nand1, xor1, or2, and1;
    
    assign not1 = ~c;
    assign or1 = a|b;
    assign nand1 = ~(a & b);
    assign or2 = a|b;
    assign x = or1 ^ not1;
    assign xor1 = nand1 ^ or2;
    assign y = xor1 & or1;
endmodule
