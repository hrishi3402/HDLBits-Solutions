`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   );
    wire first, second, third;
    assign {first,second,third} = {(a&b),(c&d),(first|second)};
    assign {out, out_n} = {third, (~third)};
   
    

endmodule
