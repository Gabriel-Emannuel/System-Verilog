module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

    wire [4:0] couts;
    
    assign couts[0] = cin; 
    
    genvar i;
    
    generate
        for (i = 3; i < 16; i+=4) begin : sum_bcd
            bcd_fadd sum_fadd (
                .a(a[i:i-3]), 
                .b(b[i:i-3]), 
                .cin(couts[i/4]), 
                .cout(couts[(i/4)+1]), 
                .sum(sum[i:i-3])
            );
        end
    endgenerate
    
    assign cout = couts[4];
    
endmodule