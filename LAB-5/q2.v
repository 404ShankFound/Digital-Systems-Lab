/*Write behavioral Verilog code for a 2 to 1 multiplexer using the if-else statement. Use 
this to write the hierarchical code for a 4 to 1 multiplexer.*/

module mux2to1(i, s, f);
  input [1:0] i;   // two input lines
  input s;         // select line
  output reg f;    // output

  always @(*) begin
    if (s == 0)
      f = i[0];
    else
      f = i[1];
  end
endmodule

module mux4to1(j,sel,g);
  input [3:0]j;
  input [1:0]sel;
  output g;
  wire [1:0]m;

        mux2to1 m1(j[1:0],sel[0],m[0]);
        mux2to1 m2(j[3:2],sel[0],m[1]);
        mux2to1 m3(m[1:0],sel[1],g);

endmodule


