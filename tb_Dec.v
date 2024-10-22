`timescale 1ns / 1ps
module tb_Dec;

    
    reg KEY1;
    reg KEY2;

    wire LED0;
    wire LED1;
    wire LED2;
    wire LED3;

    
    Dec exp(
        .A(KEY1),
        .B(KEY2),
        .Y0(LED0),
        .Y1(LED1),
        .Y2(LED2),
        .Y3(LED3)
    );

    initial begin
        
        KEY1 = 0;
        KEY2 = 0;
        
        
        #100;
        KEY1 = 0; KEY2 = 0; 
        #100; KEY1 = 0; KEY2 = 1; 
        #100; KEY1 = 1; KEY2 = 0; 
        #100; KEY1 = 1; KEY2 = 1; 

        $finish;
    end
endmodule