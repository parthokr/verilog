module register(
    input wire clk, reset, 
    input wire [15:0] d,
    output reg [15:0] q
);

always @(posedge clk, posedge reset) begin
    if (reset) 
        q = 16'b0000_000;
    else
        q = d;
end

endmodule