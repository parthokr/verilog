`timescale 1ns/1ps
`include "circuit.v"

module circuit_tb;
    reg x, y;
    wire z;
    circuit uut(x, y, z);
    initial begin
        x = 0; y = 0; #10;
        x = 0; y = 1; #10;
        x = 1; y = 0; #10;
        x = 1; y = 1; #10;
        $finish;
    end
    initial begin
        $dumpfile("cicuit.vcd");
        $dumpvars(0, circuit_tb);
        $monitor("x = %b y = %b | z = %b", x, y, z);
    end
endmodule