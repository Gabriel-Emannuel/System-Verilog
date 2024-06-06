module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);
    
    wire cout[8:0];
    
    genvar i;
    
    generate
        for (i = 0; i < 8; i += 1) begin : sum_full_adder
            fadd sum_fadd (.a(a[i]), .b(b[i]), .cin(cout[i]), .cout(cout[i+1]), .sum(s[i]));	
        end
    endgenerate
    
    assign overflow = cout[8] ^ cout[7];
    
endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
    
endmodule