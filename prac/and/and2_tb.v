`timescale 1ns/1ps
`include "and2.v"
module and2_tb;
    reg a;
    reg b;
    wire c;
    and2 uut(.x(a), .y(b), .z(c));
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
    initial begin
        $dumpfile("and2.vcd");
        $dumpvars(0, and2_tb);
        // $display("simulating and gate");
        $monitor("a=%b   b=%b    c=%b", a,b,c);
    end
endmodule