`timescale 1ns / 10ps


module lab_4b_behave(
    input wire a,b,c,d,s1,s2,s3,
    output reg A,B,C,D,E,F,G,DP,AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7
    );
    reg [6:0] segments;
    reg [3:0] input_value;
    always @(*) begin
        input_value = {a, b, c, d}; 
        case (input_value)
            4'b0000: segments = 7'b0000001; 
            4'b0001: segments = 7'b1001111; 
            4'b0010: segments = 7'b0010010;
            4'b0011: segments = 7'b0000110; 
            4'b0100: segments = 7'b1001100; 
            4'b0101: segments = 7'b0100100;
            4'b0110: segments = 7'b0100000;
            4'b0111: segments = 7'b0001111; 
            4'b1000: segments = 7'b0000000;
            4'b1001: segments = 7'b0000100; 
            4'b1010: segments = 7'b0001000; 
            4'b1011: segments = 7'b1100000; 
            4'b1100: segments = 7'b0110001; 
            4'b1101: segments = 7'b1000010; 
            4'b1110: segments = 7'b0110000; 
            4'b1111: segments = 7'b0111000; 
            default: segments = 7'b1111111; 
        endcase
    end

    always @(*) begin
        {A, B, C, D, E, F, G} = segments;
        DP = 0;
    end

    always @(*) begin
        AN0 = s1 | s2 | s3;
        AN1 = s1 | s2 | ~s3;
        AN2 = s1 | ~s2 | s3;
        AN3 = s1 | ~s2 | ~s3;
        AN4 = ~s1 | s2 | s3;
        AN5 = ~s1 | s2 | ~s3;
        AN6 = ~s1 | ~s2 | s3;
        AN7 = ~s1 | ~s2 | ~s3;
    end 
    
endmodule
