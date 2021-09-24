module fau2hadf(sum,c_out,a,b,c_in);
	input a,b,c_in;
	output sum,c_out;
	wire w1,w2,w3;
	
	haudf HA1(w1,w2,a,b);
	haudf HA2(sum,w3,w1,c_in);
	
	or O(c_out,w2,w3);
endmodule