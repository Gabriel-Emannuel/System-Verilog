// module top_module(
//     input [31:0] a,
//     input [31:0] b,
//     input sub,
//     output [31:0] sum
// );
  
//     wire coutMiddle, ignore;

//     wire[31:0] notb;

//     assign notb = b ^ {32{sub}};

//     add16 manager1 (
//         .a(a[15:0]),
//         .b(notb[15:0]),
//         .cin(sub),
//         .sum(sum[15:0]),
//         .cout(coutMiddle)
//     );
    
//     add16 manager2 (
//         .a(a[31:16]),
//         .b(notb[31:16]),
//         .cin(coutMiddle),
//         .sum(sum[31:16]),
//         .cout(ignore)
//     );

// endmodule