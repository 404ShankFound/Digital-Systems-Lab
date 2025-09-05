`timescale 1ns/1ns
`include "bcd_adder.v"

module b_tb();
reg Cin;
reg [3:0]x;
reg [3:0]y;
wire [3:0]S;
wire COUT;

bcd_adder ba(Cin,x,y,S,COUT);
initial
begin
$dumpfile("b_tb.vcd");
$dumpvars(0,b_tb);
Cin=1'b0;
x=4'b1000;y=4'b0010;
#20;

$display("Test Complete");
end
endmodule

