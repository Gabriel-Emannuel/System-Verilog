`default_nettype none

module top_module (
    input
        wire [15:0] in,
    output
        wire [7:0] out_hi,
        wire [7:0] out_lo
);

    assign out_hi = in[15:8];
    assign out_lo[7:0] = in[7:0];

endmodule