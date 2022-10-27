module comp(
    input x,
    input y,
    output z
);
    wire a, b, c, d;
    not(a, x);
    not(b, y);
    and(p, x, y);
    and(q, a, b);
    or(z, p, q);
endmodule