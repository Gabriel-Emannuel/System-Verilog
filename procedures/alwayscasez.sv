module alwayxcasex (
    input [7:0] in,
    output reg [2:0] pos );
    
    always @(*) begin
        casex (in[7:0])
        	8'bxxxxxx10: pos <= 1;
        	8'bxxxxx100: pos <= 2;
        	8'bxxxx1000: pos <= 3;
            8'bxxx10000: pos <= 4;
			8'bxx100000: pos <= 5;
            8'bx1000000: pos <= 6;
            8'b10000000: pos <= 7;
		    default: pos <= 0;
        endcase
    end
    
endmodule