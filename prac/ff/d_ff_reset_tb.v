`timescale 1ns/1ps
`include "d_ff_reset.v"

module d_ff_reset_tb;
    reg d, clk, reset;
    wire q;

    d_ff_reset uut(d, clk, reset, q);

    always #10 clk = ~clk;
    initial begin
        clk = 0;

        reset =0; d = 0; #20;
        reset =0; d=1; #20;
        reset =1; d=0; #20;
        reset =1; d=1; #20; 

        reset = 0;
        d = 1; #20;

        // clk <= 0;
        // reset <= 1;
        // d <= 0;
        // #20;

        // reset <= 0;
        // d <= 1;
        // #20;


        $finish;
    end
    initial begin
        $dumpfile("d_ff_reset.vcd");
        $dumpvars(0, d_ff_reset_tb);
        $monitor("reset = %b clk = %b d = %b q = %b", reset, clk, d, q);
    end
endmodule