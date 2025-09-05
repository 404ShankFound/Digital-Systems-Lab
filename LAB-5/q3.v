

module mux16to1(i,s,f);
    input [15:0]i;
    input [3:0]s;
    wire [3:0]o;
    output f;

    mux4to1 m1(i[3:0],   s[1:0], o[0]);
    mux4to1 m2(i[7:4],   s[1:0], o[1]);
    mux4to1 m3(i[11:8],  s[1:0], o[2]);
    mux4to1 m4(i[15:12], s[1:0], o[3]);

    // Second stage: final MUX
    mux4to1 m5(o[3:0],   s[3:2], f);

endmodule


module mux4to1(i,s,g);
input [3:0]i;
input [1:0]s;
output reg g;

always@(*)
begin
    g = s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);
end

endmodule
