module decoder_2x4_df(Y,I);

output [3:0]Y;
input [1:0]I;

assign Y[0]=(~I[1])&(~I[0]);
assign Y[1]=(~I[1])&( I[0]);
assign Y[2]=( I[1])&(~I[0]);
assign Y[3]=( I[1])&( I[0]); 

endmodule