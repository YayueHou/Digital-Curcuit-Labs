`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/28 00:07:29
// Design Name: 
// Module Name: CuLigh
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


module CuLigh(
    input wire CLK,
    input wire[16:0] sw,
    input wire btnC,
    output [16:0] led
    
    );

    reg[15:0] LED1=16'b0000_0000_0000_0001;
    
    reg[28:0] sleep=29'd5000000;
    reg[28:0]counter=29'b0;
    reg[28:0] clk1=29'b0;

    
always @(posedge CLK)
begin 
   if(counter==sleep)begin
        counter<=29'b0;
        clk1<=~clk1;
    end
    else begin
        counter<=counter+29'b1;
    end
     
end   
 
always @(posedge clk1)
begin 
    if(!btnC) 
    begin
         LED1<=sw;
    end
    else 
    begin
        if(LED1)begin
             LED1<=(LED1<<1);
        end 
        else begin
             LED1<= 16'b0000_0000_0000_0001;
        end
         
   end
end
    assign led = LED1;
//
endmodule