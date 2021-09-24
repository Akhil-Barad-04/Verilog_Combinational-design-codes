
 module bi_dir_buff(inout a, b, input ctrl);

wire w1;
not n1(w1, ctrl);

bufif1(b, a, ctrl);
bufif1(a, b, w1);
    
endmodule