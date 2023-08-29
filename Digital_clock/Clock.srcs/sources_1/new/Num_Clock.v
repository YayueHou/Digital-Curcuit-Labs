`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 19:15:15
// Design Name: 
// Module Name: Num_Clock
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


module Num_Clock(
    input wire CLK,
    input wire btnC,
    output reg[6:0] seg=7'b0,
    output reg[3:0] an=4'b0
   // output reg [0:0]RsRx,
   // output reg[0:0]RsTx
   //output reg segsq
    );
    
    
    reg[28:0]counter=29'b0;
    reg[28:0] clk1=29'b0;
    reg[28:0] sleep=29'd5000_0000;
    reg[28:0] clk2=29'b0;
    reg[28:0] sleep1=29'd2500;
    reg[28:0]counter2=29'b0;
    always @(posedge CLK)
    begin 
         if(counter==sleep)
         begin
            counter<=29'b0;
            clk1<=~clk1; 
         end
    else begin
        counter<=counter+29'b1;
    end
     
    end
      
    always @(posedge CLK)
    begin 
         if(counter2==sleep1)
         begin
            counter2<=29'b0;
            clk2<=~clk2; 
         end
    else begin
        counter2<=counter2+29'b1;
    end
    
     
    end
    
    
    reg [6:0]second=7'b0;
    reg [6:0]secondL=7'b0;
    reg [6:0]secondH=7'b0;
    
    reg [6:0]minute=7'b0;
    reg [6:0]hour=7'b0;
    reg [6:0]minuteH=7'b0;
    reg [6:0]minuteL=7'b0;
    reg[6:0]seg1=7'b0;
    always @(posedge clk1)
    begin 
        if(second==7'd59)
        begin
            second<=7'b0;
            minute<=(minute+7'd1);
        end 
        else 
        begin 
            second<=(second+7'd1);
        end  
        if(minute==7'd59)
        begin
            minute<=7'b0;
        end
        else 
        begin
        end
        if(btnC==1||hour)
        begin
            minute<=7'b0;
            second<=7'b0;
            hour<=7'b0;
        end 
        else 
        begin
        end
    end
    reg[1:0] an_counter=0;
    reg [1:0]an1=4'd0;
    
    
    always @(posedge clk2)
    begin
       //  RsTx<=1'b0;
        // RsRx<=1'b0;
         minuteL<=(minute%7'd10);
         minuteH<=((minute-minuteL)/7'd10);
         secondL<=(second%7'd10);
         secondH<=((second-secondL)/7'd10);
         case(an_counter)
             2'b00:an<=4'b1110;
             2'b01:an<=4'b1101;
             2'b10:an<=4'b1011;  
             2'b11:an<=4'b0111;
             default:an<=4'b1111;  
         endcase
         case(an)
             4'b1110:seg1<=minuteL;
             4'b1101:seg1<=minuteH;
             4'b1011:seg1<=secondL;  
             4'b0111:seg1<=secondH;
             default:seg1<=7'b0;  
         endcase
         case(seg1)
             7'b000_0000:seg<=~7'b011_1111;
             7'b000_0001:seg<=~7'b000_0110;
             7'b000_0010:seg<=~7'b101_1011;
             7'b000_0011:seg<=~7'b100_1111;
             7'b000_0100:seg<=~7'b110_0110;
             7'b000_0101:seg<=~7'b110_1101;
             7'b000_0110:seg<=~7'b111_1101;       
             7'b000_0111:seg<=~7'b000_0111;        
             7'b000_1000:seg<=~7'b111_1111;
             7'b000_1001:seg<=~7'b110_0111;
             default:seg<=~7'b0;
            endcase
           if(an_counter==2'b11)
         begin
             an_counter<=2'b00;
         end 
         else begin
             an_counter<=(an_counter+2'b01);
         end    
     end 
endmodule

