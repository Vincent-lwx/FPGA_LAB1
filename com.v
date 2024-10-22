module com(
    input wire A,
    input wire B,
    output wire H,
    output wire E
);


assign H =  B & ~A;
assign E =  A == B;

endmodule