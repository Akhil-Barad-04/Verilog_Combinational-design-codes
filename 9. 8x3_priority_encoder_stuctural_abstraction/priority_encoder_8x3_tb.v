module prioritiy_encoder_8x3_tb();
    reg [7:0]I;
    wire [2:0]Y;
    wire idle;
    priority_encoder_8x3 DUT(Y,idle,I);
    initial begin
            I=8'b00100101;
        #10 I=8'b00010001;
        #10 I=8'b00000010;
        #10 I=8'b10000001;
        #10 I=8'b00011100;
        #10 I=8'b00000010;
        #10 I=8'b00010000;
        #10 I=8'b00011110;
        #10 I=8'b00000000;
            
    end
    initial begin
        $monitor("Input I=%b , Output Y=%b, Idle=%b",I,Y,idle);
    end
    initial begin
        #100 $finish;
    end
endmodule