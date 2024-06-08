module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);

    integer i;
    
    always @(posedge clk) begin
        if (!resetn) begin
        	q <= 16'b0;
        end
        else begin
            for (i = 7; i < 16; i += 8) begin
                if (byteena[(i/8)]) begin
                    q[i-:8] <= d[i-:8];
                end
            end
        end
    end
    
endmodule
