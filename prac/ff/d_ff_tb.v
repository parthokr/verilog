`timescale 1ns/1ps
`include "d_ff.v"

module d_ff_tb;
    reg d, clk;
    wire q;

    d_ff uut(d, clk, q);

    always #10 clk = ~clk;
    initial begin
        clk <= 0;

        d <= 0; #20;
        d <= 1; #20;

        $finish;
    end
    initial begin
        $dumpfile("d_ff.vcd");
        $dumpvars(0, d_ff_tb);
        $monitor("clk = %b d = %b q = %b", clk, d, q);
    end
endmodule