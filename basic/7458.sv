module chip_7458 (
    input p1a, p1b, p1c, p1d, p1e, p1f,
    input p2a, p2b, p2c, p2d,
    output p1y, p2y
)

    wire and_p1_1;
    wire and_p1_2;
    wire or_p1;

    wire and_p2_1;
    wire and_p2_2;
    wire or_p2;

    assign and_p1_1 = p1a & p1b & p1c;
    assign and_p1_2 = p1d & p1e & p1f;
    assign or_p1 = and_p1_1 | and_p1_2;

    assign and_p2_1 = p2a & p2b;
    assign and_p2_2 = p2c & p2d;
    assign or_p2 = and_p2_1 | and_p2_2;

    assign p1y = or_p1;
    assign p2y = or_p2;

endmodule