module fulladder_df_tb();

	reg a,b,c_in;
	wire sum,carry;
	integer i;
	
fulladder_df DUT(sum,carry,a,b,c_in);
	
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
		$monitor("Input a=%b, b=%b, c_in=%b, Output sum = %b, c_out=%b",a,b,c_in,sum,carry);
		end
		
	initial
		begin
		#100 $finish;
		end
endmodule