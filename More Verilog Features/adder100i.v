module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    fadder u1 (a[0], b[0], cin, cout[0], sum[0]);
    genvar i;
    
    generate 
        for (i =1; i<100; i=i+1)begin : Full_adder_block
            fadder u0 (a[i], b[i], cout[i-1], cout[i], sum[i]);
        end
    endgenerate

endmodule

module fadder(
    input a,b,c,
    output cout , sum);
    
    assign sum = a ^ b ^ c;
    assign cout = (a&b) | (b&c) | (a&c); 

endmodule
