module circuit (
    input x,
    input y,
    output z
);
    wire not_x, not_y, not_x_and_not_y, x_and_y;
    not(not_x, x);
    not(not_y, y);
    and(x_and_y, x, y);
    and(not_x_and_not_y, not_x, not_y);
    or(z, not_x_and_not_y, x_and_y);
endmodule