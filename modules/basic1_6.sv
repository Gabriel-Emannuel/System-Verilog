// module top_module (
//     input [31:0] a,
//     input [31:0] b,
//     output [31:0] sum
// );
    
//     wire coutMiddle, coutIgnore;
    
    // add16 manager1 (
    //     .a(a[15:0]),
    //     .b(b[15:0]),
    //     .cin(1'b0),
    //     .sum(sum[15:0]),
	// 	.cout(coutMiddle)
    //     );
                 
// 	add16 manager2 (
//         .a(a[31:16]),
//         .b(b[31:16]),
//         .cin(coutMiddle),
//         .sum(sum[31:16]),
//         .cout(coutIgnore)
//         );    

// endmodule

// module add1 ( input a, input b, input cin, output sum, output cout );

//     assign sum = (a ^ b) ^ cin;
//     assign cout = (a&b) | (a&cin) | (b&cin);

// endmodule