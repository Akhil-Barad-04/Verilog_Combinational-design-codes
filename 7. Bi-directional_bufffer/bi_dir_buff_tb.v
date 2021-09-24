module bi_dir_buff_tb();

reg tempa, tempb, ctrl;
wire a, b;
integer i;

bi_dir_buff DUT(a, b, ctrl);

initial {tempa, tempb, ctrl}=3'b000;

initial begin

for(i=0; i<8; i=i+1)
begin
{tempa, tempb, ctrl}=i;
#10;
end

end

assign a=ctrl?tempa:1'bz;
assign b=ctrl?1'bz:tempb;



endmodule