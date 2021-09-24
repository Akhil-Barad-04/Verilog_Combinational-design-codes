module ripple_carry_adder(S,C,A,B,C_in);

output [3:0]S;
output [4:1]C;
input [3:0]A;
input [3:0]B;
input C_in;

fulladder_df FA_1(S[0],C[1],A[0],B[0],C_in);
fulladder_df FA_2(S[1],C[2],A[1],B[1],C[1]);
fulladder_df FA_3(S[2],C[3],A[2],B[2],C[2]);
fulladder_df FA_4(S[3],C[4],A[3],B[3],C[3]);

endmodule