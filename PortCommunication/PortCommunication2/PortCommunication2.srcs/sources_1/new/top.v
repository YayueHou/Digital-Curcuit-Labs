`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/19 15:09:41
// Design Name: 
// Module Name: top
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

module top
(
    input clk,
    input sys_clk,
    input recvrx,
    output sendtx
);
reg [2:0] state;
localparam s0=3'b0;
localparam s1=3'b1;


parameter CLK=50_000_000;
parameter POTTER=115200;
parameter POTTERT=CLK/POTTER;
reg startflag;
reg [20:0]clk_num;

wire [7:0] txdata;//待发送数据
wire [7:0] rxdata;//合成的并行数据
assign
   txdata=rxdata;
wire sendbusy;
reg startsend;
wire recvfinish;

always @(posedge clk or negedge sys_clk)
begin
   if(!sys_clk)begin
      state<=3'b0;
      clk_num<=0;
      startflag<=0;
   end 
   else begin
       case(state)
          s0:begin
             if(recvfinish) begin
                 state<=s1;
                 startflag<=1'b1;
             end
             end
          s1:begin
             clk_num<=clk_num+1;
             if(clk_num==POTTERT-1)begin
                 state<=s0;
                 startflag<=1'b0;
                 clk_num<=0;
             end
             end
            default:;
        endcase
    end
end   

send_urt
#(
.CLK(CLK),
.POTTER(POTTER)
)
send_urt_t
(
.clk(clk),      //系统时钟
.sys_clk(sys_clk),  //复位信号
.startflag(startflag),//开始标志
.senddata(sendtx),//发送数据
.data(txdata),//待发送数据
.busy(sendbusy)     //空闲状态
);

resv_urt
#(
.CLK(CLK),
.POTTER(POTTER)
)
resv_urt_t
(
   .clk(clk),  //时钟
   .sys_clk(sys_clk),//复位时钟
   .getdata(recvrx),//接收到的串行数据
   .rxdata(rxdata),//合成的并行数据
   .finish(recvfinish)   //完成标志
);
always 
begin
#POTTERT; 
//$display("%b ",txdata);
//$display("%b \n",recvrx);                                                                                                                               
end
endmodule
