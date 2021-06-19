`timescale  1ns/1ps
module send_urt
#(
parameter CLK=50_000_000,
parameter POTTER=115200
)
(
input clk,      //系统时钟
input sys_clk,  //复位信号
input  startflag,//开始标志
output reg senddata,//发送数据
input [7:0] data,//待发送数据
output reg busy     //空闲状态
);
reg [7:0] dataset;//数据缓存

//所有状态参数
localparam UNABLE = 4'b0000;
localparam ss = 4'b0001;
localparam s0 = 4'b0010;
localparam s1 = 4'b0011;
localparam s2 = 4'b0100;
localparam s3 = 4'b0101;
localparam s4 = 4'b0110;
localparam s5 = 4'b0111;
localparam s6 = 4'b1000;
localparam s7 = 4'b1001;
localparam se = 4'b1010;
reg [3:0] state;

reg [20:0] clk_num;

parameter POTTERT=CLK/POTTER;

always @(posedge clk)
begin
if((!busy) && startflag )
begin
  dataset<=data;
end
else begin ; end
end
always @(posedge clk or negedge sys_clk)
if(!sys_clk)
begin
   state<=UNABLE;
   busy<=1'b0;
   senddata<=1'b1;
end
else 
begin
    case(state)
    UNABLE:begin
        if(startflag)begin
            busy<=1'b1;
            state<=ss;
            senddata<=1'b0;
        end
        else begin end 
     end
     ss:begin
         if(clk_num==POTTERT-1)begin
             state<=s0;
         end
         else begin end
     end 
     s0:begin
         senddata<=dataset[0];
         // $display("d:%b ",senddata);
         if(clk_num==POTTERT-1)begin
             state<=s1;
         end
         else begin end
     end 
     s1:begin
         senddata<=dataset[1];
      //        $display("d:%b ",senddata);
         if(clk_num==POTTERT-1)begin
             state<=s2;
         end
         else begin end
     end 
     s2:begin
         senddata<=dataset[2];
       //     $display("d:%b ",senddata);
         if(clk_num==POTTERT-1)begin
             state<=s3;
         end
         else begin end
     end
     s3:begin
         senddata<=dataset[3];
       //       $display("d:%b ",senddata);
         if(clk_num==POTTERT-1)begin
             state<=s4;
         end
         else begin end
     end 
     s4:begin
         senddata<=dataset[4];
       //        $display("d:%b ",senddata);
         if(clk_num==POTTERT-1)begin
             state<=s5;
         end
     end 
     s5:begin
         senddata<=dataset[5];
        //     $display("d:%b ",senddata);
         if(clk_num==POTTERT-1)begin
             state<=s6;
         end
         else begin end
     end
     s6:begin
         senddata<=dataset[6];
        //     $display("d:%b ",senddata);
         if(clk_num==POTTERT-1)begin
             state<=s7;
         end
         else begin end
     end
     s7:begin
         senddata<=dataset[7];
       //      $display("d:%b ",senddata);
         if(clk_num==POTTERT-1)begin
             state<=se;
         end
         else begin end
     end
     se:begin
         senddata<=1'b1;
         if(clk_num==POTTERT-1)begin
             state<=UNABLE;
             busy<=1'b0;
         end
         else begin end
     end
     default:state<=UNABLE;
     endcase
end
//字计数器
always @(posedge clk or negedge sys_clk)
begin
if(!sys_clk)
begin
    clk_num<=0;
end
else begin
    if(clk_num==POTTERT-1)begin
        clk_num<=0;
    end
    else if(state>ss||state==ss)begin
        clk_num<=(clk_num+21'b1);
      // $display("clk:%b",clk_num);
    end
    else begin
        clk_num<=0;
    end
end
end

endmodule
 