`timescale 1ns/1ps
`include "comp.v"

module comp_tb;
    reg a, b;
    wire c;
    comp uut(a, b, c);
    initial begin
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
    initial begin
        $dumpfile("comp.vcd");
        $dumpvars(0, comp_tb);
        $monitor("a=%b  b=%b    c=%b", a,b,c);
    end
endmodule