`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 19:20:14
// Design Name: 
// Module Name: PortCom
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


module senSig(
    input [7:0] Data,
    input Enable,
    input CLK,
    input EN,
    output reg RsTx,
    output busy
    );
    
    parameter   ClkT = 50000000;//时钟周期频率
    parameter   Potter = 115200;//波特率
    parameter   PotterT  = ClkT/Potter;//
    
    reg DataGood=0;
    wire StartFlag;
    reg EndFlag=0;
    
    reg [4:0] DataCell;
    reg [20:0] clknum;
    reg trigger0;
    reg trigger1;
    
    always @(posedge CLK or negedge EN)
    begin
        if(!EN)
        begin
            trigger1<=0;
            trigger0<=0;
        end
        else
        begin
            trigger0<=Enable;
            trigger1<=trigger0;
        end
    end 
    assign
        StartFlag=((trigger0)&&(~trigger1));
    assign
        busy=DataGood;
    
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
               // EndFlag<=0;
            end
            else if(DataCell>9)
            begin 
                DataGood<=0;
           //     DataCell<=0;
              //  EndFlag<=1;
            end
            else 
            begin
                DataGood<=DataGood;
            end
                
        end
    end
    
    
    always @(posedge CLK or negedge EN)
    begin
        if(!EN)begin
            clknum<=0;
        end 
        else
        begin
            if(DataGood==1)
            begin
                if(clknum<PotterT)
                begin
                    clknum<=clknum+1;
                end
                else
                begin
                    clknum<=0;
                end
                
            end
        end
    end
   
   
   always @(posedge CLK or negedge EN)
   begin
       if(!EN)
       begin
           DataCell<=0;
       end
       else
       begin
           if(DataGood)
           begin
               if(clknum==PotterT-1)
               begin
                   DataCell<=DataCell+1;
               end 
               else begin end
           end
           else 
           begin
               DataCell<=0;
           end  
         
       end
   end
    
   always @(posedge CLK or negedge EN)
   begin
       if(!EN)
       begin
           RsTx<=0;
       end    
       else
       begin
           if(DataGood)
           begin
                case(DataCell)
                     5'd0:RsTx<=0;
                     5'd1: RsTx<= Data[0];
                     5'd2: RsTx<= Data[1];
                     5'd3: RsTx<= Data[2];
                     5'd4: RsTx<= Data[3];
                     5'd5: RsTx<= Data[4];
                     5'd6: RsTx<= Data[5];
                     5'd7: RsTx<= Data[6];
                     5'd8: RsTx<= Data[7];
                     5'd9:RsTx<=1;
                     default: ;
                 endcase
           end
           else begin
              RsTx<=0;
            end
       end
   end
    
endmodule
