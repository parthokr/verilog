module equation (
    input a,
    input b,
    input c,
    input d,
    output z
);
    wire a_and_c, b_and_d;
    // assign a_and_c = a and c;
    // assign b_and_d = b and c;
    and(a_and_c, a, c);
    and(b_and_d, b, d);
    // or(z, a_and_c, b_and_d);
    assign z = a_and_c | b_and_d;
endmodule