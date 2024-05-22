module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    
    wire [7:0] intermediate1, intermediate2;
    
    min_operator min1 (.n1(a), .n2(b), .min(intermediate1));
    min_operator min2 (.n1(intermediate1), .n2(c), .min(intermediate2));
    min_operator min3 (.n1(intermediate2), .n2(d), .min(min));

endmodule

module min_operator(
    input [7:0] n1, n2,
    output [7:0] min
);
    
    assign min = n1 > n2? n2:n1;
    
endmodule