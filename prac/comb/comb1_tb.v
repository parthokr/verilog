 `timescale 1ns/1ps
`include "comb1.v"
module comb1_tb;
    reg D;
    reg X; 
    reg A; 
    wire L;

    comb1 uut
    (
        .D(D),
        .X(X),
        .A(A),
        .L(L)
    );

    initial begin
        D = 0;
        X = 0;
        A = 0;

        #10;
        A = 1;

        #10;
        X = 1;

        #10;
        D = 1;


        #10;
        X = 0;

        #10;
        A = 0;

        $finish;
    end

 initial begin
 $monitor("D=%d X=%d A=%d L=%d\n", 
                       D, X, A, L);
 end

endmodule
