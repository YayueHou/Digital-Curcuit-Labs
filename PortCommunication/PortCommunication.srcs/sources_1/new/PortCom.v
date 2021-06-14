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


module PortCom(
    input CLK,
    input EN,
    input RsRx,
    output RsTx
    );
    parameter   ClkT = 50000000;//时钟周期频率
    parameter   Potter = 115200;//波特率
    
    wire [7:0] recvData;
    wire [7:0] sendData;
    wire recvdone;
    wire senden;
    wire busy;
    
    getSig #(
    .ClkT(ClkT),
    .Potter(Potter)
    )
    simget(
     .CLK(CLK),
     .EN(EN),
     .RsRx(RsRx),
     .ResData(recvData),
     .DoneFlag(recvdone)
    );
    
     senSig #(
    .ClkT(ClkT),
    .Potter(Potter)
    )
    simsend(
     .CLK(CLK),
     .EN(EN),
     .Data(sendData),
     .Enable(senden),
     .RsTx(RsTx),
     .busy(busy)
    ); 
    
   
    Loop simloop(
     .CLK(CLK),
     .EN(EN),
     .recvData(recvData),
     .redone(recvdone),
     .sendbusy(busy),
     .sendData(sendData),
     .senden(senden)
    ); 
    
    
    endmodule