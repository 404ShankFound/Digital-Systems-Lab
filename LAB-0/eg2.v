module eg2(x1, x2, x3, x4, f, g, h);
input x1, x2, x3, x4;
output f, g, h;

wire and1, and2, or1;
wire not1, not2;
wire or2, or3, and3;

// g = x1·x3 + x2·x4
and a1(and1, x1, x3);
and a2(and2, x2, x4);
or o1(g, and1, and2);

// h = (x1 + ~x3)·(~x2 + x4)
not n1(not1, x3);
not n2(not2, x2);
or o2(or2, x1, not1);
or o3(or3, not2, x4);
and a3(h, or2, or3);

// f = g + h
or o4(f, g, h);

endmodule
