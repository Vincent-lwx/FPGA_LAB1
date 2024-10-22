`timescale 1ns/1ps
module tb_com;
	 reg KEY1;
    reg KEY2;

    wire LED0;
    wire LED1;
   com exp(
	.A(KEY1),
	.B(KEY2),
	.H(LED0),
	.E(LED1)
	
	);
	initial begin
	KEY1=0;KEY2=0;#100
	KEY1=0;KEY2=1;#100
	KEY1=1;KEY2=0;#100
	KEY1=1;KEY2=1;#100
	 $finish;
    end
endmodule