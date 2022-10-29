`include "register.v"
`include "subOne.v"
module counter(
    input wire clk, reset,
    output wire [3:0] q
);

wire [3:0] d_temp, q_temp;
register r1(clk, reset, d_temp, q_temp);
subOne a(q_temp, d_temp);

assign q = q_temp;

endmodule