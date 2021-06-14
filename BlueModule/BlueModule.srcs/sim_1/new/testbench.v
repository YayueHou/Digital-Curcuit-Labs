`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/10 12:21:49
// Design Name: 
// Module Name: testbench
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

`define clk_period 125000
`define data_period 125000
module fir_tb;
reg clk;
reg rst;
reg[7:0]data_in;
wire[7:0]data_out;
reg[7:0]data[1023:0];


fir_compiler_1 u_fir_complier_2(
.aresetn(~rst),
.aclk(clk),
.s_axis_data_tvalid(1'b1),
.s_axis_data_tready(),
.s_axis_data_tdata(data_in),
.m_axis_data_tvalid(),
.m_axis_data_tdata(data_out)
);
integer i;
initial clk=1'b1;
always #(`clk_period/2)clk=~clk;
initial begin
rst=1;
#(`clk_period*4);
rst=0;
$readmemb("/home/houyayue/hodepoint/TextCode/BlueModule/SinIn.txt",data);
for(i=0;i<1023;i=i+1)begin
data_in=data[i];
#(`data_period);
end 
#(`clk_period*800000);
$stop;
end 
integer fir_done_file;
initial begin
fir_done_file=$fopen("/home/houyayue/hodepoint/TextCode/BlueModule/fir_done_file.txt");
if(fir_done_file==0)begin
$display("can not open the file!");
 $stop;
 end 
 end 
wire signed[7:0]fir_dataout;
assign fir_dataout =data_out;
always @(posedge clk)begin
#1
if(!rst)begin
if(i<1023)
$fdisplay(Dome_sample_fir_file,"%d",fir_dataout);
else begin
$fclose(Dome_sample_fir_file);
$display("Write completed,Close the file!");
end 
end 
end   
endmodule