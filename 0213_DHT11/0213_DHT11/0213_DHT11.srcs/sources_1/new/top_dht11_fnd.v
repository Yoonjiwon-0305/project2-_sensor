`timescale 1ns / 1ps

module top_dht11_fnd (
    input        clk,
    input        reset,
    input        btn_r,
    input        sw,
    inout        dhtio,
    output [3:0] debug,
    output [7:0] fnd_data,
    output [3:0] fnd_digit
);

    wire w_btn_tick;
    wire [31:0] w_dht_data;
    wire [23:0] w_fnd_input;

    // DHT11 데이터 구조: {습도정수[31:24], 습도소수[23:16], 온도정수[15:8], 온도소수[7:0]}
    // sw가 1이면 습도(정수.소수), 0이면 온도(정수.소수)를 FND용 24비트로 재구성
    assign w_fnd_input = sw ? {w_dht_data[31:24], w_dht_data[23:16], 8'b0} 
                            : {w_dht_data[15:8],  w_dht_data[7:0],  8'b0};

    btn_debounce U_BTN_DEBOUNCE (
        .clk  (clk),
        .reset(reset),
        .i_btn(btn_r),
        .o_btn(w_btn_tick)
    );

    dht11_controller U_DHT11 (
        .clk(clk),
        .reset(reset),
        .start(w_btn_tick),
        .dht_data(w_dht_data),
        .dht11_done(),
        .dht11_valid(),
        .debug(debug),
        .dhtio(dhtio)
    );

    fnd_controller U_FND_CTRL (
        .clk(clk),
        .reset(reset),
        .sel_display(sw),
        .fnd_in_data(w_fnd_input),
        .fnd_digit(fnd_digit),
        .fnd_data(fnd_data)
    );
endmodule
