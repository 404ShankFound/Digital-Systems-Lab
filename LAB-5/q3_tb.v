`timescale 1ns/1ns
`include "q3.v"

module q3_tb();
    reg [15:0]i;
    reg [3:0]s;
    wire f;

mux16to1 m16(i,s,f);

initial begin
$dumpfile("q3_tb.vcd");
$dumpvars(0,q3_tb);

i=16'b0000000000000011;
s=4'b1111;#20;
i=16'b0000000000000011;
s=4'b1110;#20;
i=16'b0000000000000011;
s=4'b0000;#20;

$display("Test Complete");
end
endmodule


