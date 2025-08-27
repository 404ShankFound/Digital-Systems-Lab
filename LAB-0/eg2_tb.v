`timescale 1ns/1ns
`include "eg2.v"

module eg2_tb();
reg x1, x2, x3, x4;
wire f, g, h;

eg2 eg(x1, x2, x3, x4, f, g, h);

initial begin
  $dumpfile("eg2.vcd");
  $dumpvars(0, eg2_tb);

  x1=1'b0; x2=1'b0; x3=1'b0; x4=1'b0; #20;
  x1=1'b0; x2=1'b0; x3=1'b0; x4=1'b1; #20;
  x1=1'b0; x2=1'b0; x3=1'b1; x4=1'b0; #20;
  x1=1'b0; x2=1'b0; x3=1'b1; x4=1'b1; #20;

  x1=1'b0; x2=1'b1; x3=1'b0; x4=1'b0; #20;
  x1=1'b0; x2=1'b1; x3=1'b0; x4=1'b1; #20;
  x1=1'b0; x2=1'b1; x3=1'b1; x4=1'b0; #20;
  x1=1'b0; x2=1'b1; x3=1'b1; x4=1'b1; #20;

  x1=1'b1; x2=1'b0; x3=1'b0; x4=1'b0; #20;
  x1=1'b1; x2=1'b0; x3=1'b0; x4=1'b1; #20;
  x1=1'b1; x2=1'b0; x3=1'b1; x4=1'b0; #20;
  x1=1'b1; x2=1'b0; x3=1'b1; x4=1'b1; #20;

  x1=1'b1; x2=1'b1; x3=1'b0; x4=1'b0; #20;
  x1=1'b1; x2=1'b1; x3=1'b0; x4=1'b1; #20;
  x1=1'b1; x2=1'b1; x3=1'b1; x4=1'b0; #20;
  x1=1'b1; x2=1'b1; x3=1'b1; x4=1'b1; #20;

  $display("Test complete");
end

endmodule
