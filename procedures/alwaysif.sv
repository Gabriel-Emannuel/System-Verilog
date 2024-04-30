module ifCondiction(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 

    wire[1:0] sel_result;
    assign {sel_result} = {sel_b1, sel_b2};
    
    assign out_assign = (2'b11 == sel_result) ? b : a;
    
    always @(*) begin
        if (2'b11 == sel_result) begin
        	out_always <= b;
        end
        else begin
           out_always <= a; 
        end
    end
    
endmodule