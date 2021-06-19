`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 20:17:55
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;
reg clk;
reg sys_clk;
reg recvrx;
wire sendtx;

parameter CLK=50_000_000;
parameter POTTER=115200;
parameter POTTERT=CLK/POTTER;


 reg [7:0] j;
 reg [30:0]clk_num;
initial begin
  clk=0;
  sys_clk=0;
  recvrx=1;
  #100
  sys_clk=1;
  j=65;
end
  
  
  
always #(POTTERT*180)  makerx(j) ;

always #10 clk=~clk;
 
task makerx(input [7:0]data);
integer i;     
 begin
   j=j+1;
   recvrx=0;
   #(POTTERT*20);
 for(i=0;i<8;i=i+1) begin
    recvrx=data[i];
   #(POTTERT*20);
 end
 recvrx=1;
  #(POTTERT*20);

 end
endtask


top sim(
   .clk(clk),
   .sys_clk(sys_clk),
   .recvrx(recvrx),
   .sendtx(sendtx)
); 
endmodule
