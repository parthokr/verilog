`timescale 1ns/1ps
`include "register.v"

module register_tb;
    reg clk, reset;
    reg [6:0] d;
    wire [6:0] q;

    register uut(clk, reset, d, q);

    always #10 clk = ~clk;
    initial begin
        clk <= 0;

        reset <= 1;
        d <= 7'b0000_001;
        #20
        reset <= 0;
        d <= 7'b0000_111;
        #20
        $finish;
    end    
    initial begin
        $dumpfile("register.vcd");
        $dumpvars(0, register_tb);
        $monitor("clk=%b reset=%b d=%b q=%b", clk, reset, d, q);
    end
endmodule