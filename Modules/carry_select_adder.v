module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire [15:0]k1,k2;
    wire o1,o2,o3;
    
    add16 inst1 (a[15:0],b[15:0],0,sum[15:0],o1);
    add16 inst2 (a[31:16],b[31:16],0,k1,o2);
    add16 inst3 (a[31:16],b[31:16],1,k2,o3);
    
    	

    	
    always @ (*)begin
        case(o1)
            0 : sum[31:16] = k1;
            1 : sum[31:16] = k2;
        endcase
    end
            
endmodule
