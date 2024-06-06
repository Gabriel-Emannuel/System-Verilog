module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
	
    wire cout[4:0];
    
    genvar i;
    
    generate
        for (i = 0; i < 4; i += 1) begin: sum_full_adder
            fadd sum_fadd (.a(x[i]), .b(y[i]), .cin(cout[i]), .cout(cout[i+1]), .sum(sum[i]));
        end
    endgenerate
    
    assign sum[4] = cout[4];
       
endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
    
endmodule