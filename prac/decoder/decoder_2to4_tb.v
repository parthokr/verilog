`timescale 1ns/1ps
`include "decoder_2to4_if.v"

module decoder_2to4_tb;
    reg [1:0] A;
    reg E;
    wire [3:0] Y;

    decoder_2to4_if uut(A, E, Y);
    initial begin
        A = 2'b00;
        E = 0;
        #10;
        E = 1; #10;
        A[0] = 1; #10;
        A[1] = 1; #10;
        A[0] = 0; #10;
        E=0; #10;
        $finish;
    end
    initial begin
        $dumpfile("dec.vcd");
        $dumpvars(0, decoder_2to4_tb);
        $monitor("A[1]=%b A[0]=%b E=%b\t\tY[3]=%b Y[2]=%b Y[1]=%b Y[0]=%b", A[1], A[0], E, Y[3], Y[2], Y[1], Y[0]);
    end
endmodule