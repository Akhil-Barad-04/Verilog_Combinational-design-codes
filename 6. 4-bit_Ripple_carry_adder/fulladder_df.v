module fulladder_df(sum,carry,a,b,c_in);
    output sum,carry;
    input a,b,c_in;
    assign sum=a^b^c_in;
    assign carry=(a&b)|(b&c_in)|(c_in&a);

endmodule