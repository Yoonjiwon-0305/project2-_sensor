`timescale 1ns / 1ps


module tb_sr04 ();
    reg        clk;
    reg        reset;
    reg        btn_start;
    reg        echo;
    wire       led;
    wire       trigger;
    wire [3:0] fnd_digit;
    wire [7:0] fnd_data;


    top_sr04_fnd U_SR04_FND (
        .clk(clk),
        .reset(reset),
        .btn_start(btn_start),
        .echo(echo),
        .led(led),
        .trigger(trigger),
        .fnd_digit(fnd_digit),
        .fnd_data(fnd_data)
    );
    always #5 clk = ~clk;

    initial begin

        clk = 0;
        reset = 1;
        echo = 0;
        btn_start = 0;


        #10;
        reset = 0;

        #10;
        btn_start = 1;
        #100_000_00;
        btn_start = 0;


        #100;
        echo = 1;

        #5_800_000;  //100cm
        echo = 0;

        #100_000;
        echo = 0;

        #100_000;
        btn_start = 1;
        #10_000_000;
        btn_start = 0;
    
        #100;
        echo = 1;

        #26_100_000;  //450cm
        echo = 0;

        #1000;
        btn_start = 1;
        #10_000_000;
        btn_start = 0;

        #100;
        echo = 1;

        #232_000;  // 4cm
        echo = 0;

        #100000;
        echo = 0;

        #100000;
        echo = 0;
        #10000;
        $stop;

    end



endmodule


