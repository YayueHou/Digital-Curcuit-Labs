`timescale 1ns/1ps
module resv_urt
#(
parameter CLK=50_000_000,
parameter POTTER=115200
)
(
   input clk,  //时钟
   input sys_clk,//复位时钟
   input getdata,//接收到的串行数据
   output reg [7:0] rxdata,//合成的并行数据
   output reg finish   //完成标志
);
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
wire StartFlag;

reg trigger0;
reg trigger1;

//判断接受信号的下降沿
always @(posedge clk or negedge sys_clk)
begin 
  if(!sys_clk)
  begin 
      trigger0<=1'b1;
      trigger1<=1'b1;
  end
  else
  begin
      trigger0<=getdata;
      trigger1<=trigger0;
  end 
end
assign
    StartFlag=(~trigger0)&(trigger1);

always @(posedge clk or negedge sys_clk)
begin
   if(!sys_clk) begin
      state<=UNABLE;
      rxdata<=8'b0;
      finish<=1'b0;
   end
   else begin
      case(state)
          UNABLE:begin
           finish<=1'b0;
                if(StartFlag)begin
                 $display("fall");
                  state<=ss;
                
                end
          end 
          ss:begin
          $display("ss");
             if(clk_num==POTTERT-1)begin
               $display("start");
                state<=s0; 
             end
             else begin end
          end 
          
          s0:begin
             if(clk_num==POTTERT/2)begin
             rxdata[0]<=getdata;
            //    $display("%b ",getdata);
                 end
             if(clk_num==POTTERT-1)begin
                state<=s1;
           
             end 
          end
          s1:begin
             if(clk_num==POTTERT/2)begin
             rxdata[1]<=getdata;
              //  $display("%b ",getdata);
                 end
             if(clk_num==POTTERT-1)begin
                state<=s2;
             end 
          end 
          s2:begin
             if(clk_num==POTTERT/2)begin
             rxdata[2]<=getdata;
             //   $display("%b ",getdata);
                 end
             if(clk_num==POTTERT-1)begin
                state<=s3;
               
             end 
          end
          s3:begin
             if(clk_num==POTTERT/2)begin
                rxdata[3]<=getdata;
             //      $display("%b ",getdata);
                    end
                if(clk_num==POTTERT-1)begin
                   state<=s4;
              
                end 
          end
          s4:begin
             if(clk_num==POTTERT/2)begin
             rxdata[4]<=getdata;
            //    $display("%b ",getdata);
                 end
             if(clk_num==POTTERT-1)begin
                state<=s5;
              
             end 
          end
          s5:begin
             if(clk_num==POTTERT/2)begin
             rxdata[5]<=getdata;
          //      $display("%b ",getdata);
                 end
             if(clk_num==POTTERT-1)begin
                state<=s6;
            
             end 
          end
          s6:begin
          if(clk_num==POTTERT/2)begin
             rxdata[6]<=getdata;
            //   $display("%b ",getdata);
                end
             if(clk_num==POTTERT-1)begin
                state<=s7;
            
             end 
          end
          s7:begin
             if(clk_num==POTTERT/2)begin
             rxdata[7]<=getdata;
              //  $display("%b ",getdata);
            //      $display("%b \n",rxdata);
                 end
             if(clk_num==POTTERT-1)begin
                state<=se;
             end 
          end
          se:begin
             if(clk_num==POTTERT-1)begin
                finish<=1'b1;
                state<=UNABLE;
             end 
          end
          default:state<=UNABLE;
       endcase
   end
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
        $display("clk");
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
always 
begin
#(POTTERT*20); 
//$display("%b ",txdata);
$display("%b \n",getdata);  
                                                                                                         
end
always @(posedge clk)
begin
if(StartFlag)
$display("st:%b \n",StartFlag);                                                                                                                
end
endmodule
