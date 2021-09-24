module priority_circuit(H,idle,I);
    input [7:0]I;
    output idle;
    output [7:0]H;


    assign H[0]=((I[0])&(~I[1])&(~I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]));
    assign H[1]=((I[1])&(~I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]));
    assign H[2]=((I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]));
    assign H[3]=((I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]));
    assign H[4]=((I[4])&(~I[5])&(~I[6])&(~I[7]));
    assign H[5]=((I[5])&(~I[6])&(~I[7]));
    assign H[6]=((I[6])&(~I[7]));
    assign H[7]=((I[7]));
    assign idle=((~I[0])&(~I[1])&(~I[2])&(~I[3])&(~I[4])&(~I[5])&(~I[6])&(~I[7]));

endmodule
