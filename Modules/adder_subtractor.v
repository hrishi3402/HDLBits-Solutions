module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire[31:0]o1;
    wire k1,k2;
	assign o1 = {32{sub}}^b; 
    add16 inst1 (a[15:0],o1[15:0],sub,sum[15:0],k1);
    add16 inst2 (a[31:16],o1[31:16],k1,sum[31:16],k2);
    

endmodule
