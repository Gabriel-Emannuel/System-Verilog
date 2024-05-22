module top_module( 
    input [254:0] in,
    output [7:0] out );
   
    integer i, count;
    
    always @(*) begin
   		count = 0;
        for (i = 0; i < 255; i = i + 1) begin
            count += in[i];
        end
        out <= count;
    end
    
endmodule