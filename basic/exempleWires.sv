module top_module (input in, output in);

    wire not_in;

    assign out = !not_in;
    assign not_in = !in;

endmodule