module top_module (
    input a, b, c, d, e,
    output [24:0] out );

    wire[24:0] elementsNot;
    wire[24:0] elementsOrder;
    
    assign elementsNot = {{5{~a}}, {5{~b}}, {5{~c}}, {5{~d}}, {5{~e}}};
    assign elementsOrder = {5{a, b, c, d, e}};
    
	assign out = elementsNot ^ elementsOrder;
    
endmodule