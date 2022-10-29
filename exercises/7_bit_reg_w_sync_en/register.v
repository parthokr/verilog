module register(
    input wire clk, reset, en,
    input wire [6:0] d,
    output reg [6:0] q
);

always @(posedge clk, posedge reset) begin
    if (reset) 
        q = 7'b0000_000;
    else if(en)
        q = d;
end

endmodule