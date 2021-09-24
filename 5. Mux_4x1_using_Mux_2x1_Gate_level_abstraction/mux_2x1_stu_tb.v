module mux_2x1_stu_tb();
    reg [1:0]I;
    reg s;
    wire y;
    integer i;
    mux_2x1_stu DUT(y,I,s);
    initial 
	begin
        for (i=0;i<10;i=i+1)
         begin
             {I,s}=i;
             #10;
           
         end
    	end
    initial 
	begin
        $monitor ("Input I1=%b ,I0=%b, Select s=%b , Output Y=%b",I[1],I[0],s,y);
        
    end
 
endmodule