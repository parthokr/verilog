`timescale 1ns/1ps
`include "counter.v"

module counter_tb;
    reg clk, reset;
    wire [6:0] q;

    counter uut(clk, reset, q);
    always #10 clk=~clk;
    initial begin
        clk <= 0;

        reset <= 1;
        #20;
        reset <= 0;
        #20;
        #20;
        #20;
        #20;
        $finish;
    end    
    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, counter_tb);
        $monitor("clk = %b reset = %b q = %b", clk, reset, q);
    end
endmodule