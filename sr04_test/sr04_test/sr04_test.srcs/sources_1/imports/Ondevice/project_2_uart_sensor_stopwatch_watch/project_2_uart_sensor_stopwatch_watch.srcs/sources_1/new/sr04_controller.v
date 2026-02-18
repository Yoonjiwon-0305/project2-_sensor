`timescale 1ns / 1ps

module sr04_controller (
    input clk,
    input reset,
    input b_tick_1u,
    input echo,
    input start,
    output trigger,
    output [8:0] distance
);

    localparam [1:0] IDLE = 2'd0, START = 2'd1, WAIT = 2'd2, DISTANCE = 2'd3;

    reg [1:0] current_state, next_state;
    reg [3:0] wait_cnt_reg, wait_cnt_next;  //11u지연
    reg [5:0] echo_cnt_reg, echo_cnt_next;  //최대 58 까지 카운트
    reg [8:0] distance_cnt_reg, distance_cnt_next;  // 400 까지 카운트
    reg [8:0] distance_reg, distance_next;
    reg trigger_reg, trigger_next;

    assign trigger  = trigger_reg;
    assign distance = distance_reg ;

    reg echo_s1, echo_s2;
    always @(posedge clk) begin
        echo_s1 <= echo;
        echo_s2 <= echo_s1;
    end

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            current_state    <= IDLE;
            wait_cnt_reg     <= 4'd0;
            echo_cnt_reg     <= 6'd0;
            distance_cnt_reg <= 9'd0;
            distance_reg     <= 9'd0;
            trigger_reg      <= 1'b0;
        end else begin
            current_state    <= next_state;
            wait_cnt_reg     <= wait_cnt_next;
            echo_cnt_reg     <= echo_cnt_next;
            distance_cnt_reg <= distance_cnt_next;
            distance_reg     <= distance_next;
            trigger_reg      <= trigger_next;
        end
    end

    always @(*) begin
        next_state        = current_state;
        wait_cnt_next     = wait_cnt_reg;
        echo_cnt_next     = echo_cnt_reg;
        distance_cnt_next = distance_cnt_reg;
        distance_next     = distance_reg;
        trigger_next      = trigger_reg;
        case (current_state)
            IDLE: begin
                trigger_next      = 1'b0;
                wait_cnt_next     = 4'd0;
                echo_cnt_next     = 6'd0;
                distance_cnt_next = 9'd0;
                if (start) begin
                    next_state   = START;
                    trigger_next = 1'b1;
                end
            end
            START: begin

                if (b_tick_1u) begin
                    if (wait_cnt_reg == 10) begin
                        wait_cnt_next = 0;
                        trigger_next = 1'b0;
                        next_state = WAIT;
                    end else begin
                        wait_cnt_next = wait_cnt_reg + 1;
                    end
                end
            end
            WAIT: begin

                if (echo_s2) begin
                    next_state = DISTANCE;
                end

            end
            DISTANCE: begin
                if (b_tick_1u) begin
                    if (echo_cnt_reg == 57) begin
                        echo_cnt_next = 6'd0;
                        if (distance_cnt_reg == 399) begin
                            // 카운터 400 고정
                            distance_next = 400;
                            next_state = IDLE;
                        end else begin
                            distance_cnt_next = distance_cnt_reg + 1;
                        end
                    end else begin
                        echo_cnt_next = echo_cnt_reg + 1;
                    end
                end
                if (!echo_s2) begin
                    distance_next = distance_cnt_reg;
                    next_state = IDLE;
                end

            end

        endcase

    end
endmodule

module tick_gen_1u (
    input clk,
    input reset,
    output reg b_tick_1u
);
    parameter BAUDRATE = 1_000_000;
    parameter F_count = 100_000_000 / BAUDRATE;
    reg [$clog2(F_count)-1:0] counter_reg;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            counter_reg <= 0;
            b_tick_1u   <= 1'b0;
        end else begin
            if (counter_reg == (F_count - 1)) begin
                counter_reg <= 0;
                b_tick_1u   <= 1'b1;
            end else begin
                counter_reg <= counter_reg + 1'b1;
                b_tick_1u   <= 1'b0;
            end
        end

    end

endmodule
