module mux_4x1_using_2_2x1_tb();
    reg [3:0]I;
    reg [1:0]S;
    wire Y;

    integer i;
    mux_4x1_using_2_2x1 DUT(Y,I,S);
    initial 
    begin
        for (i = 0;i<256 ;i=i+1 )
         begin
             {I,S}=i;
             #10;
         end
    end
    initial begin
        $monitor("Select S1=%b, S0=%b, Input I3=%b, I2=%b, I1=%b, I0=%b, Y=%b",S[1],S[0],I[3],I[2],I[1],I[0],Y);

    end
    initial begin
        #256 $finish;
    end
endmodule