module counter(
    input clk, reset,
    output wire [3:0] q
);
    reg [3:0] down;

    always @(posedge clk, posedge reset) begin
        if (reset)
            down <= 4'b1111;
        else 
            down <= down - 1;
    end
    assign q = down;
endmodule