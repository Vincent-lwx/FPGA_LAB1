module com(
    input wire A,
    input wire B,
    output wire H,
    output wire E,
	 output wire L
);

assign H =  A & ~B;
assign E =  A == B;
assign L =  B & ~A;


endmodule
