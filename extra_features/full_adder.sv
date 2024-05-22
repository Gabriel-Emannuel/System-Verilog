module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

	genvar i;

    generate
        for (i = 0; i < 100; i = i + 1) begin : gen_full_adders
            if (i == 0) begin
                add1 adder (
                    .a(a[i]),
                    .b(b[i]),
                    .cin(cin),
                    .cout(cout[i]),
                    .sum(sum[i])
                );
            end else begin
                add1 adder (
                    .a(a[i]),
                    .b(b[i]),
                    .cin(cout[i-1]),
                    .cout(cout[i]),
                    .sum(sum[i])
                );
            end
        end
    endgenerate
    
endmodule

module add1( 
    input a, b, cin,
    output cout, sum );

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
    
endmodule 