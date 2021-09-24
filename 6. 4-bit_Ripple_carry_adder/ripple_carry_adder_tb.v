module ripple_carry_adder_tb();

    reg [3:0]A;
    reg [3:0]B;
    reg C_in=0;
    wire [3:0]S;
    wire [4:1]C;
    integer i;
    ripple_carry_adder TUF(S,C,A,B,C_in);
    initial 
        begin
            for (i = 0;i<256; i=i+1)
            begin
                {A,B}={i};
                    #10;
            end
        end
    initial 
    	begin
        $monitor("Input A=%b , B=%b , C_in=%b, Output Sum = %b, Carry C = %b",A,B,C_in,S,C);

    end

    initial 
        begin
        #512 $finish;
        end
   

endmodule