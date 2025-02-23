`timescale 1ns / 10ps

module lab_4b_tb;
    logic a,b,c,d;
    logic s1,s2,s3;
    logic A,B,C,D,E,F,G,DP;
    logic AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7;
    
    
    lab_4b DUT(
        .a(a), .b(b), .c(c), .d(d), .s1(s1), .s2(s2), .s3(s3), .A(A), 
        .B(B), .C(C), .D(D), .E(E), .F(F), .G(G), .DP(DP),
        .AN0(AN0), .AN1(AN1), .AN2(AN2), .AN3(AN3),
        .AN4(AN4), .AN5(AN5), .AN6(AN6), .AN7(AN7)    
        );
    
    
    task drive_input(input logic [3:0] bin, input logic [2:0] sel);
    {a, b, c, d} = bin;
    {s1, s2, s3} = sel;
    #10;  
    endtask
    
    
    task monitor_output;
    $display("Input: a=%b b=%b c=%b d=%b | s1=%b s2=%b s3=%b | Output: A=%b B=%b C=%b D=%b E=%b F=%b G=%b DP=%b | AN0=%b AN1=%b AN2=%b AN3=%b AN4=%b AN5=%b AN6=%b AN7=%b",
        a, b, c, d, s1, s2, s3, A, B, C, D, E, F, G, DP, AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7);
    endtask
    

    function logic [7:0] expected_output(logic [3:0] bin);
        case (bin)
            4'b0000: expected_output = 8'b00000010; // 0
            4'b0001: expected_output = 8'b10011110; // 1
            4'b0010: expected_output = 8'b00100100; // 2
            4'b0011: expected_output = 8'b00001100; // 3
            4'b0100: expected_output = 8'b10011000; // 4
            4'b0101: expected_output = 8'b01001000; // 5
            4'b0110: expected_output = 8'b01000000; // 6
            4'b0111: expected_output = 8'b00011110; // 7
            4'b1000: expected_output = 8'b00000000; // 8
            4'b1001: expected_output = 8'b00001000; // 9
            4'b1010: expected_output = 8'b00010000; // A
            4'b1011: expected_output = 8'b11000000; // b
            4'b1100: expected_output = 8'b01100010; // C
            4'b1101: expected_output = 8'b10000100; // d
            4'b1110: expected_output = 8'b01100000; // E
            4'b1111: expected_output = 8'b01110000; // F
            default: expected_output = 8'b11111111; // Invalid
        endcase
    endfunction

    task check_output;
        logic [7:0] expected;
        expected = expected_output({a, b, c, d});
        if ({A, B, C, D, E, F, G, DP} !== expected) begin
            $display("? ERROR: Mismatch at a=%b b=%b c=%b d=%b | Expected: %b, Got: %b", 
                     a, b, c, d, expected, {A, B, C, D, E, F, G, DP});
        end else begin
            $display("? PASS: a=%b b=%b c=%b d=%b | Output Correct: %b", a, b, c, d, {A, B, C, D, E, F, G, DP});
        end
    endtask
    
    initial begin
        for (int i = 0; i < 16; i++) begin
            for (int j = 0; j < 8; j++) begin
                drive_input(i, j);  
                monitor_output();
                #10
                check_output();   
            end
        end
        $finish;
    end  
endmodule
