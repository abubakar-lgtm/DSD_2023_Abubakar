`timescale 1ns/10ps

module lab_1_tb;
    reg a, b, c;
    wire x, y;
    
    // Instantiate the module under test
    lab_1 uut (
        .a(a),
        .b(b),
        .c(c),
        .x(x),
        .y(y)
    );
    
    initial begin
        // Monitor values
        $monitor("Time=%0t | a=%b b=%b c=%b | x=%b y=%b", $time, a, b, c, x, y);
        
        // Apply test vectors
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;
        
        // End simulation
        $finish;
    end
endmodule
