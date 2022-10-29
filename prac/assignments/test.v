module test;
    reg a, b, c, d;

    initial begin
        a = 0;
        b = 1;
        c = b;
        #15;
        d = 1;
        #5

    end
endmodule;