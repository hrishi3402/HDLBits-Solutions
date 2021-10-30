module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1,c2;
    wire [15:0]o1,o2;
    
    add16 inst1 (a[15:0],b[15:0],0,o1,c1);
    add16 inst2 (a[31:16],b[31:16],c1,o2,c2);
    
    assign sum = {o2,o1};
    

endmodule
