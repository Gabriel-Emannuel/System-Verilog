// module top_module(
//     input [31:0] a,
//     input [31:0] b,
//     output [31:0] sum
// );
    
//     wire coutMiddle, ignore;
    
//     wire[15:0] sumRest1, sumRest2;
    
    // add16 manager (
    //     .a(a[15:0]),
    //     .b(b[15:0]),
    //     .cin(1'b0),
    //     .sum(sum[15:0]),
    //     .cout(coutMiddle)
    // );
    
//     add16 employee0 (
//         .a(a[31:16]),
//         .b(b[31:16]),
//         .cin(1'b0),
//         .sum(sumRest1),
//         .cout(ignore)
//     );
    
//     add16 employee1 (
//         .a(a[31:16]),
//         .b(b[31:16]),
//         .cin(1'b1),
//         .sum(sumRest2),
//         .cout(ignore)
//     );
    
//     always_comb begin
//         case (coutMiddle)
//         1'b0: sum[31:16] <= sumRest1;
//         1'b1: sum[31:16] <= sumRest2;
//         endcase
//     end
    
// endmodule