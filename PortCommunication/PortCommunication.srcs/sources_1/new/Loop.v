`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/13 22:06:13
// Design Name: 
// Module Name: Loop
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


module Loop(
    input EN,
    input CLK,
    input [7:0] recvData,
    input redone,
    input sendbusy,
    
    output reg [7:0] sendData,
    output reg senden
    );
    reg trigger0;
    reg trigger1;
    wire redoneflag;
    reg sendready;
     always @(posedge CLK or negedge EN)
     begin
         if(!EN)
         begin
             trigger0<=0;
             trigger1<=0;
         end
         else
         begin
             trigger0<=redone;
             trigger1<=trigger0;
         end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
     end
     assign
         redoneflag=((trigger0)&&(~trigger1));
     
     always @(posedge CLK or negedge EN)
     begin
     if(!EN)
     begin
         sendready<=0;
         sendData<=0;
         senden<=0;
     end 
     else
     begin
         if(redoneflag==1)
         begin
             sendready<=1;
             sendData<=recvData;
             senden<=0;
         end
         else if(sendready&&(!sendbusy))
         begin
             sendready<=0;
             senden<=1;
         end
     end
     end
         
endmodule
