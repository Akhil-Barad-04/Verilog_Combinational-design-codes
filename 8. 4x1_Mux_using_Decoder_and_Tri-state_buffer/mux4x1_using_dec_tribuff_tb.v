module mux4x1_using_dec_tribuff_tb();

    reg [3:0]I;
    reg [1:0]S;
    wire Y;
    integer i;

    mux4x1_using_dec_tribuff DUT(Y,I,S);
    initial begin
       for (i = 0;i<64 ;i=i+1 ) 
       begin
       {S,I}=i;
       #10;    
       end
    end

    initial begin
        $monitor("Input I = %b, Selection line S=%b, Output Y=%b",I,S,Y);

    end
    initial begin
        #600 $finish;
    end
endmodule