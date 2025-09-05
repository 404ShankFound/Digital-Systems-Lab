module bcd_adder(Cin,x,y,S,COUT);
input Cin;
input [3:0]x;
input [3:0]y;
wire [3:0]s;
output [3:0]S;
wire c1,c2,c3;
wire C1,C2,C3;
wire correct;
wire Cout;
output COUT;

fa f1(Cin,x[0],y[0],s[0],c1);
fa f2(c1,x[1],y[1],s[1],c2);
fa f3(c2,x[2],y[2],s[2],c3);
fa f4(c3,x[3],y[3],s[3],Cout);

//K=c+S3s2+s3s1

assign correct = (Cout)|(s[3]&s[2])|(s[3]&s[1]);

fa f5(1'b0,s[0],1'b0,S[0],C1);
fa f6(C1,s[1],correct,S[1],C2);
fa f7(C2,s[2],correct,S[2],C3);
fa f8(C3,s[3],1'b0,S[3],COUT);

endmodule

module fa(Cin,a,b,s,Carry);
input Cin;
input a,b;
output s,Carry;

assign s = a^b^Cin;
assign Carry = (a&b)|(b&Cin)|(Cin&a);
endmodule

