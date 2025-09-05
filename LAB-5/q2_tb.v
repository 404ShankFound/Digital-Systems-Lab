`timescale 1ns/1ns
`include "q2.v"

module q2_tb;
  reg [3:0]j;
  reg [1:0]sel;
  wire g;

  mux4to1 uut (.j(j), .sel(sel), .g(g));

  initial
  begin
    $dumpfile("q2_tb.vcd");
    $dumpvars(0,q2_tb);

    j = 4'b1110;  // Inputs = j[3]=1, j[2]=0, j[1]=1, j[0]=0

    sel = 2'b00; #10; 
    sel = 2'b01; #10; 
    sel = 2'b10; #10; 
    sel = 2'b11; #10;

    $display("Test complete");
  end
endmodule

