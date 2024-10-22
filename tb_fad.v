module tb_fad;
    reg A, B, cin;
    wire sum, cout;

    FAD exp (
        .a(A),
        .b(B),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
				A = 0; B = 0; cin = 0;
        #10 A = 0; B = 0; cin = 1;
        #10 A = 0; B = 1; cin = 0;
        #10 A = 0; B = 1; cin = 1;
        #10 A = 1; B = 0; cin = 0;
        #10 A = 1; B = 0; cin = 1;
        #10 A = 1; B = 1; cin = 0;
        #10 A = 1; B = 1; cin = 1;
        #10 $finish;
    end
endmodule