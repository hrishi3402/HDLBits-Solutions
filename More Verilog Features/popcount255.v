module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    integer i;
    reg[7:0] j;
    always @ (in)   begin
        j = 0;
     
            for (i=0; i<255; i=i+1)
                begin
                    if (in[i] == 1'b1)
                        j= j+1'b1; 
                end
                
   				 out = j;
        end


endmodule
