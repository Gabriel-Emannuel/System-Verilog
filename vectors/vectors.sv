module top_module (
    input 
        wire [2:0] vector,
    output
        wire [2:0] outVector,
        wire o0,
        wire o1,
        wire o2
);

    assign outVector = vector;

    assign o0 = vector[0];
    assign o1 = vector[1];
    assign o2 = vector[2];

endmodule