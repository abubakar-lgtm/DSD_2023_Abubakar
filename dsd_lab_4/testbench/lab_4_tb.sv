`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 02:23:04 AM
// Design Name: 
// Module Name: lab_4_tb
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

module lab_4_tb;

    logic a0, a1, b0, b1;   
    logic r,g,b;  
    lab_4 UUT (
        .a0(a0), .a1(a1), .b0(b0), .b1(b1),
        .r(r), .g(g), .b(b)
    );

    initial begin
        $monitor("Time=%0t | a1=%b a0=%b b0=%b b1=%b | r=%b g=%b b=%b", 
                  $time, a1, a0, b0, b1, r, g, b);        

        a0 = 0; a1 = 0; b0 = 0; b1 = 0; #10;
        a0 = 0; a1 = 0; b0 = 0; b1 = 1; #10;
        a0 = 0; a1 = 0; b0 = 1; b1 = 0; #10;
        a0 = 0; a1 = 0; b0 = 1; b1 = 1; #10;

        a0 = 0; a1 = 1; b0 = 0; b1 = 0; #10;
        a0 = 0; a1 = 1; b0 = 0; b1 = 1; #10;
        a0 = 0; a1 = 1; b0 = 1; b1 = 0; #10;
        a0 = 0; a1 = 1; b0 = 1; b1 = 1; #10;

        a0 = 1; a1 = 0; b0 = 0; b1 = 0; #10;
        a0 = 1; a1 = 0; b0 = 0; b1 = 1; #10;
        a0 = 1; a1 = 0; b0 = 1; b1 = 0; #10;
        a0 = 1; a1 = 0; b0 = 1; b1 = 1; #10;

        a0 = 1; a1 = 1; b0 = 0; b1 = 0; #10;
        a0 = 1; a1 = 1; b0 = 0; b1 = 1; #10;
        a0 = 1; a1 = 1; b0 = 1; b1 = 0; #10;
        a0 = 1; a1 = 1; b0 = 1; b1 = 1; #10;

        $finish;
    end
endmodule


