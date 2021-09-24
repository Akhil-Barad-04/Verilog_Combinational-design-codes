module decoder_2x4_df_tb();

    reg [1:0]I;
    wire [3:0]Y;
    integer i;

    decoder_2x4_df DUT(Y,I);
    initial
        begin
          for(i=0;i<4;i=i+1)
            begin
              {I}=i;
              #10;
            end
        end
  
    initial begin
        #100 $finish;
    end
endmodule