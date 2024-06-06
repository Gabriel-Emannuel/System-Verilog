module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    assign out = (!a & !d) | (!b & !c) | (a & c & d) | (c & !a & b);
    
endmodule