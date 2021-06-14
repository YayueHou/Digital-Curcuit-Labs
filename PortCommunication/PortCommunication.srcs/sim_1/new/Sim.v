`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/13 22:16:41
// Design Name: 
// Module Name: Sim
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


module Sim();
reg CLK;
reg EN;
reg RsRx;
wire RsTx;

PortCom simtop(
   .CLK(CLK),
   .EN(EN),
   .RsRx(RsRx),
   .RsTx(RsTx)
);
initial begin
    EN=1;
    #200
    EN=0;
    #200
    EN=1;
end
initial begin
    CLK=0;
    forever #10 CLK=~CLK;
end 

    parameter   ClkT = 50000000;//时钟周期频率
    parameter   Potter = 115200;//波特率
    parameter   PotterT  = ClkT/Potter;//

reg [4:0] i;
reg [20:0] clknum;
reg [4:0] datacell;

always @(posedge CLK or negedge EN)
begin
    if(!EN)begin
       clknum<=0;
     end
     else begin
       if(clknum==PotterT-1)
            clknum<=0;
       else
           clknum<=clknum+1;
     end
end

always @(posedge CLK or negedge EN)
begin
  if(!EN)begin
       datacell<=0;
     end
     else begin
       if(clknum==PotterT-1)
            datacell<=datacell+1;
       else begin 
      
       end
     end
end

always @(posedge CLK or negedge EN)
begin
   if(!EN)
   begin
       i<=0;
       RsRx<=1;
   end
   else
   begin
       case(i)
         0:i<=i+1;
         1:begin
            if(datacell==5'd1)begin
                RsRx<=1'b0;
                i<=i+1;
             end 
           end 
         2:begin
            if(datacell==5'd2)begin
                RsRx<=1'b1;
                i<=i+1;
             end 
           end 
         3:begin
            if(datacell==5'd3)begin
                RsRx<=1'b1;
                i<=i+1;
             end 
           end 
         4:begin
            if(datacell==5'd4)begin
                RsRx<=1'b0;
                i<=i+1;
             end 
           end 
        5:begin
            if(datacell==5'd5)begin
                RsRx<=1'b0;
                i<=i+1;
             end 
           end 
        6:begin
            if(datacell==5'd6)begin
                RsRx<=1'b1;
                i<=i+1;
             end 
           end 
        7:begin
            if(datacell==5'd7)begin
                RsRx<=1'b1;
                i<=i+1;
             end 
           end 
        8:begin
            if(datacell==5'd8)begin
                RsRx<=1'b0;
                i<=i+1;
             end 
           end 
         9:begin
            if(datacell==5'd9)begin
                RsRx<=1'b0;
                i<=i+1;
             end 
           end 
         10:begin
            if(datacell==5'd10)begin
                RsRx<=1'b1;
                i<=i+1;
             end 
           end 
          11:i<=0;
          default:;
        endcase
           
           
           
   end

end

endmodule
