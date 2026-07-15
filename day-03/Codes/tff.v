module tff(clk,rst,q,qr);
input clk,rst;
output reg q;
output qr;

always @(posedge clk)begin
if(rst)begin
q<=~q;
end
else
q<=q;
end
assign qr=~q;
endmodule

module asy_counter(clk,rst,count);
input clk,rst;
output reg[3:0]count;
wire q0,q1,q2,q3;

tff t1(q0,clk,rst,1'b1,count[0]);
tff t2(q1,clk,rst,1'b1,count[1]);
tff t3(q2,clk,rst,1'b1,count[2]);
tff t4(q3,clk,rst,1'b1,count[3]);
endmodule
