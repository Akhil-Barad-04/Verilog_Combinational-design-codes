module haudf_tb();

	reg a,b;
	wire sum,carry;

	integer i;
	
	haudf DUT(sum,carry,a,b);
	initial
	begin
		for(i=0;i<4;i=i+1)
			begin
				{a,b}=i;
				#10;
			end
		
	end
		
	initial
		begin
			$monitor("input a = %b, b = %b, Output sum = %b, carry= %b",a,b,sum,carry);
		end
	initial
		begin
		#100 $finish;
		end
		
endmodule
