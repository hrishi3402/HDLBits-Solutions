module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    always @ (a,b,out_alwaysblock)
        out_alwaysblock = a & b;
    
    assign out_assign= a&b; 
endmodule
