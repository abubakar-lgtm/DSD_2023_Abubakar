`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 01:17:01 AM
// Design Name: 
// Module Name: lab_4
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


module lab_4(
   input logic a1,a0,b0,b1,
   output logic r,g,b
    );
    assign r = ((~b0)&(~b1))|(a1&(~b0))|(a0&(~b0))|(a0&(~b1))|(a0&a1);
    assign g = ((~a0)&(~a1))|((~a0)&b1)|((~a0)&b0)|(b0&b1)|((~a1)&b0);
    assign b = (a0&(~b0))|((~a0)&b0)|(a1&(~b1))|((~a1)&b1);
endmodule
