module top_module (input x, input y, output z);

    wire z1, z2, z3, z4;
    
    circuit_a manager1(.x(x), .y(y), .z(z1));
    circuit_a manager3(.x(x), .y(y), .z(z3));
    circuit_b manager2(.x(x), .y(y), .z(z2));
    circuit_b manager4(.x(x), .y(y), .z(z4));
    
    assign z = (z1 | z2) ^ (z3 & z4);
    
endmodule

module circuit_a (
    input logic x, y,
    output logic z
);
    assign z = (x ^ y) & x;
endmodule

module circuit_b (
	input logic x, y,
    output logic z
);
    assign z = !(x ^ y);
endmodule