module priority_encoder_8x3(Y,idle,I);
    input [7:0]I;
    output [2:0]Y;
	output idle;
    wire [7:0]H;

    priority_circuit PC(H,idle,I);
    bin_enc_8x3 BE(Y,H);
    

endmodule