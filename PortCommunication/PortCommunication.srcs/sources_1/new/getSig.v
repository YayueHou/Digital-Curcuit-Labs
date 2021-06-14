`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/13 15:45:04
// Design Name: 
// Module Name: getSig
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


module getSig(
    input EN,
    input RsRx,
    input CLK,
    output reg [7:0] ResData,
    output reg DoneFlag
    );
    
    parameter   ClkT = 50000000;//时钟周期频率
    parameter   Potter = 115200;//波特率
    parameter   PotterT  = ClkT/Potter;//波特率周期
    
    wire StartFlag;
    wire EndFlag;
    reg DataGood=0;
    reg [4:0] DataCell=0;
    reg trigger0;
    reg trigger1;
    reg [20:0]clknum=0;
    
    //判断输入数据的下降沿 
     always @(posedge CLK or negedge EN)
     begin 
         if(!EN)
         begin 
             trigger0<=1'b1;
             trigger1<=1'b1;
         end
         else
         begin
             trigger0<=RsRx;
             trigger1<=trigger0;
         end
     end
     
     assign 
         StartFlag=(~trigger0)&(trigger1);
  
         
         
     //统计每个数据节点的长度,每通过一个数据加一，到达固定位数清零     
     always @(posedge CLK or negedge EN)
     begin
         if(!EN)
         begin
             DataCell<=0;
         end
         else
         begin
             if(DataGood!=1)
             begin
                 DataCell<=0;
             end 
             else 
             begin
                 if(clknum==PotterT-1)
                 begin
                     DataCell<=(DataCell+1);
                 end
                 else begin end
             end
         end
     end
     
     //计算时钟数量，每次时钟上升沿都加1，每到达一个数据的长度就清零
     always @(posedge CLK or negedge EN)
     begin
         if(!EN)
         begin
             clknum<=0;
         end
         else
         begin
             if(DataGood==1)
             begin
                 if(clknum<PotterT)
                 begin
                     clknum<=clknum+21'b1;
                 end
                 else
                 begin
                     clknum<=0;
                 end
             end
             else
             begin
                 clknum<=0;
             end
         end
     end
     
     //数据有效段的标识。从第一个下降沿开始拉升，到数据无效开始复位
     always @(posedge CLK or negedge EN)
     begin 
        if(!EN)
        begin
            DataGood<=0;
        end 
        else
        begin
            if(StartFlag==1)
            begin
                DataGood<=1;
            end
            else if(DoneFlag==1)
            begin 
                DataGood<=0;
            end
            else begin end
        end
     end
     
     always @(posedge CLK or negedge EN)
     begin
         if(!EN)
         begin
              ResData<=0;
         end
         else
         begin
             if(DataGood)
             begin
                 if(clknum==PotterT/2)
                 begin
                     case(DataCell)
                       5'd1: ResData[0]<= RsRx;
                       5'd2: ResData[1]<= RsRx;
                       5'd3: ResData[2]<= RsRx;
                       5'd4: ResData[3]<= RsRx;
                       5'd5: ResData[4]<= RsRx;
                       5'd6: ResData[5]<= RsRx;
                       5'd7: ResData[6]<= RsRx;
                       5'd8: ResData[7]<= RsRx;
                       default: ;
                     endcase
                 end 
                 else begin end
             end
             else
             begin
               ResData<=0; 
             end
            
         end
         
     end
     
     always @(posedge CLK or negedge EN)
     begin
         if(!EN)
         begin
             DoneFlag<=0;
         end
         else
         begin
             if(DataCell==5'd9)
             begin
                 DoneFlag<=1;
             end
             else 
             begin 
                 DoneFlag<=0;
             end
         end
     end
endmodule


 