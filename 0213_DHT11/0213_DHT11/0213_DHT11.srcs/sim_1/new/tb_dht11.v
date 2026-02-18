`timescale 1ns / 1ps

module tb_dht11 ();

    reg clk;
    reg reset;
    reg btn_r;
    reg sw;
    wire dhtio;
    wire [3:0] debug;
    wire [7:0] fnd_data;
    wire [3:0] fnd_digit;

    reg [39:0] test_data;
    reg dhtio_driver;

    assign dhtio = dhtio_driver;

    top_dht11_fnd dut (
        .clk(clk),
        .reset(reset),
        .btn_r(btn_r),
        .sw(sw),
        .dhtio(dhtio),
        .debug(debug),
        .fnd_data(fnd_data),
        .fnd_digit(fnd_digit)
    );

    always #5 clk = ~clk;

    task send_bit(input bit_val);
        begin
            dhtio_driver = 0;
            #50000;  // 50us Low
            dhtio_driver = 1;
            if (bit_val) #70000;  // 70us High (Data 1)
            else #26000;  // 26us High (Data 0)
        end
    endtask

    integer i;

    initial begin
        clk = 0;
        reset = 1;
        btn_r = 0;
        sw = 0;
        dhtio_driver = 1'bz;
        test_data = {8'd45, 8'd0, 8'd25, 8'd0, 8'd70};

        #100;
        reset = 0;
        #100;

        btn_r = 1;
        #20_000_000;  // 20ms 유지 (디바운스 통과용)
        btn_r = 0;

        #19_030_000;
        dhtio_driver = 0;
        #80000;  // 센서 Response Low
        dhtio_driver = 1;
        #80000;  // 센서 Response High

        for (i = 39; i >= 0; i = i - 1) begin
            send_bit(test_data[i]);
        end

        dhtio_driver = 0;
        #50000;
        dhtio_driver = 1'bz;

        #1000000;
        sw = 1;

        #10_000_000;
        $stop;
    end

endmodule
