module mux_4x1_using_2_2x1(Y,I,S);
output Y;
input [3:0]I;
input [1:0]S;
wire [1:0]w;

mux_2x1_stu M1(w[0],I[1:0],S[0]);
mux_2x1_stu M2(w[1],I[3:2],S[0]);
mux_2x1_stu M3(Y,w[1:0],S[1]);

endmodule