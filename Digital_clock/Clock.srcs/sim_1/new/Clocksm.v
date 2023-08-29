`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/06 17:03:29
// Design Name: 
// Module Name: Clocksm
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


module Clocksm(); 
    reg CLK;
    reg btnC;
    wire[6:0] seg;
    wire[3:0] an;
   
   
    
    

parameter ClockPeriod = 1;
 
initial
   begin
   //初始信号
      CLK=1'b0;
      btnC=0;
     //产生激励信号

forever
    #(ClockPeriod) CLK = ~CLK;
      
end
   Num_Clock Clocktb(
    .CLK(CLK),
    .btnC(btnC),
    .seg(seg),
    .an(an)
    );
    reg [6:0]seg1=0;
  //  reg [2:0]i=0;
 
    //reg [6:0]a;
    // reg [6:0]b;
     // reg [6:0]c;
     //  reg [6:0]d;
 initial 
    begin 
     case(seg)
             7'd64:seg1<=7'b000_0000;
             7'd121:seg1<=7'b000_0001;
             7'b101_1011:seg1<=7'b000_0010;
             7'b100_1111:seg1<=7'b000_0011;
             7'b110_0110:seg1<=7'b000_0100;
             7'b110_1101:seg1<=7'b000_0101;
             7'b111_1101:seg1<=7'b000_0110;       
             7'b000_0111:seg1<=7'b000_0111;        
             7'b111_1111:seg1<=7'b000_1000;
             7'b110_0111:seg1<=7'b000_1001;
             default:seg1<=7'b0;
            endcase
 if(seg==121)
 begin
  $display("YES");
 end
 $display("YES");  
 $monitor($time,,,"YES");  #1600
       $finish; 
// forever
     //  $display("%d",seg1);
    
       $monitor($time,,,"%d  %d",seg1,seg); // 信号打印输出
      #1600
       $finish; 
        if(seg==121)
 begin

 end
       
    end 
endmodule


