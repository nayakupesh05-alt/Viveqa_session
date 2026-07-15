module block_ram(clk,wr_en,addr, write_data,read_data);
    input wire clk;
    input wire wr_en;                    
    input wire [31:0] addr;         
          
    input  [31:0] write_data;            
    output reg [31:0] read_data ;

   
 reg  [31:0] mem [0:63];
always @(posedge clk)begin
if(wr_en)begin

mem[addr]<=write_data;
end
else

read_data<=mem[addr];
end
endmodule
