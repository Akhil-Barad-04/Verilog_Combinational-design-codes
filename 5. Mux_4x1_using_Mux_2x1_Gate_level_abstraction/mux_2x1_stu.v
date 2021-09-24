module mux_2x1_stu(y,I,s);
output y;
input [1:0]I;
input s;
wire w1,w2,w3;
    
    not G1(w1,s);
    and G2(w2,I[0],w1);
    and G3(w3,s,I[1]);
    or G4(y,w2,w3);

endmodule