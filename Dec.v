module Dec(
    input wire A,  
    input wire B, 
    output reg Y0, 
    output reg Y1, 
    output reg Y2, 
    output reg Y3  
);


always @(A, B) begin
    Y0 = (A == 0 && B == 0);
    Y1 = (A == 0 && B == 1);
    Y2 = (A == 1 && B == 0);
    Y3 = (A == 1 && B == 1);
end

endmodule