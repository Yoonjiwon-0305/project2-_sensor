`timescale 1ns / 1ps

module top_sr04_fnd (
    input        clk,
    input        reset,
    input        btn_r,
    input        echo,
    output       led,
    output       trigger,
    output [3:0] fnd_digit,
    output [7:0] fnd_data
);

    wire w_btn_start;
    wire [8:0] w_distance;
    wire w_tick_1u;
   
    btn_debounce U_BTN_DEBOUNCE (
        .clk(clk),
        .reset(reset),
        .i_btn(btn_r),
        .o_btn(w_btn_start)
    );

    tick_gen_1u U_TICK_GEN_1U (
        .clk(clk),
        .reset(reset),
        .b_tick_1u(w_tick_1u)
    );

    sr04_controller U_SR04 (
        .clk(clk),
        .reset(reset),
        .b_tick_1u(w_tick_1u),
        .echo(echo),
        .start(w_btn_start),
        .trigger(trigger),
        .distance(w_distance)
    );

    fnd_controller U_FND_CTRL (
        .clk(clk),
        .reset(reset),
        .sel_display(1'b0),
        .fnd_in_data({15'b0, w_distance}),
        .fnd_digit(fnd_digit),
        .fnd_data(fnd_data)
    );

    assign led = trigger;

endmodule