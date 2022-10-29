`include "register.v"
`include "addOne.v"
module counter(
    input wire clk, reset,
    output wire [6:0] q
);

wire [6:0] d_temp, q_temp;
register r1(clk, reset, d_temp, q_temp);
addOne a(q_temp, d_temp);

assign q = q_temp;

endmodule