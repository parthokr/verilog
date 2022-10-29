module d_ff_reset(
    input wire d, clk, reset,
    output reg q
);

always @(posedge clk, posedge reset) begin
    if (reset)
        q <= 1'b0;
    else
        q <= d;
end



/* 
==========alternative==========
will there by any issue provided changing order?


always @(posedge clk) q <= d;
always @(posedge reset) q <= 1'b0; 

*/


endmodule