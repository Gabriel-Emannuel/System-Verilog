module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] cins, couts;
    
    genvar i;

    generate
        for (i = 3; i < 400; i += 4) begin : begin_generate_bcd
            if (i == 3) begin    	
            bcd_fadd sum_bcd (
                .a(a[i:i-3]),
                .b(b[i:i-3]),
                .cin(cin),
                .cout(couts[i/4]),
                .sum(sum[i:i-3]));
            end else begin
			bcd_fadd sum_bcd (
                .a(a[i:i-3]),
                .b(b[i:i-3]),
                .cin(couts[(i/4)-1]),
                .cout(couts[i/4]),
                .sum(sum[i:i-3]));	
            end

        end
    endgenerate

	assign cout = couts[99];
                
endmodule