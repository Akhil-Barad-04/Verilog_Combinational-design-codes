module fau2hadf_tb();

	reg a,b,c_in;
	wire sum,c_out;
	integer i;
	
fau2hadf DUT(sum,c_out,a,b,c_in);
	
	initial
		begin
		for(i=0;i<8;i=i+1)
			begin
			{a,b,c_in}=i;
			#10;
			end
		end
	
	initial
		begin
		$monitor("Input a=%b, b=%b, c_in=%b, Output sum = %b, c_out=%b",a,b,c_in,sum,c_out);
		end
		
	initial
		begin
		#100 $finish;
		end
endmodule