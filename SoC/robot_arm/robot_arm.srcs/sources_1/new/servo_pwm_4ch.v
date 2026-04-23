`timescale 1ns / 1ps

module servo_pwm_4ch (
    input  wire        clk,       // 100MHz system clock
    input  wire        rst_n,     // active-low reset

    input  wire [15:0] pulse0_us, // target pulse width in us
    input  wire [15:0] pulse1_us, // target pulse width in us
    input  wire [15:0] pulse2_us, // target pulse width in us
    input  wire [15:0] pulse3_us, // target pulse width in us

    output reg         pwm0,
    output reg         pwm1,
    output reg         pwm2,
    output reg         pwm3
);

    // ============================================================
    // 기본 설정
    // 100MHz 기준:
    // 1 tick = 10ns
    // 1us = 100 ticks
    // 20ms = 2,000,000 ticks
    // ============================================================
    localparam integer CLK_HZ       = 100_000_000;
    localparam integer TICKS_PER_US = CLK_HZ / 1_000_000;   // 100
    localparam integer FRAME_US     = 20_000;               // 20ms
    localparam integer FRAME_TICKS  = FRAME_US * TICKS_PER_US; // 2,000,000

    // ============================================================
    // 서보 펄스폭 제한
    // 현재 테스트에서 실제 반응이 확인된 범위를 기준으로 사용
    // ============================================================
    localparam [15:0] SERVO_MIN_US = 16'd500;
    localparam [15:0] SERVO_MAX_US = 16'd2500;

    // ============================================================
    // reset 시 홈 포지션
    // ============================================================
    localparam [15:0] HOME0_US = 16'd1500;
    localparam [15:0] HOME1_US = 16'd1500;
    localparam [15:0] HOME2_US = 16'd1500;
    localparam [15:0] HOME3_US = 16'd1300;

    // ============================================================
    // 입력 pulse(us)를 안전 범위로 자르는 함수
    // ============================================================
    function [15:0] clamp_us;
        input [15:0] in_us;
        begin
            if (in_us < SERVO_MIN_US)
                clamp_us = SERVO_MIN_US;
            else if (in_us > SERVO_MAX_US)
                clamp_us = SERVO_MAX_US;
            else
                clamp_us = in_us;
        end
    endfunction

    // ============================================================
    // 내부 레지스터
    // frame_cnt: 20ms 프레임 카운터
    // pulse*_us_latched: 프레임 시작 때만 입력값 저장
    // pulse*_ticks: 실제 비교에 사용할 tick 값
    // ============================================================
    reg [21:0] frame_cnt;

    reg [15:0] pulse0_us_latched;
    reg [15:0] pulse1_us_latched;
    reg [15:0] pulse2_us_latched;
    reg [15:0] pulse3_us_latched;

    reg [21:0] pulse0_ticks;
    reg [21:0] pulse1_ticks;
    reg [21:0] pulse2_ticks;
    reg [21:0] pulse3_ticks;

    // ============================================================
    // 프레임 카운터 + 입력값 래치
    //
    // 중요:
    // 입력 pulse 값이 프레임 중간에 바뀌더라도 즉시 반영하지 않고
    // "새 프레임 시작 순간"에만 래치합니다.
    // 이렇게 해야 한 프레임 안의 PWM 폭이 중간에 깨지지 않습니다.
    // ============================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            frame_cnt         <= 22'd0;

            pulse0_us_latched <= HOME0_US;
            pulse1_us_latched <= HOME1_US;
            pulse2_us_latched <= HOME2_US;
            pulse3_us_latched <= HOME3_US;

            pulse0_ticks      <= HOME0_US * TICKS_PER_US;
            pulse1_ticks      <= HOME1_US * TICKS_PER_US;
            pulse2_ticks      <= HOME2_US * TICKS_PER_US;
            pulse3_ticks      <= HOME3_US * TICKS_PER_US;
        end
        else begin
            if (frame_cnt == FRAME_TICKS - 1) begin
                frame_cnt <= 22'd0;

                pulse0_us_latched <= clamp_us(pulse0_us);
                pulse1_us_latched <= clamp_us(pulse1_us);
                pulse2_us_latched <= clamp_us(pulse2_us);
                pulse3_us_latched <= clamp_us(pulse3_us);

                pulse0_ticks <= clamp_us(pulse0_us) * TICKS_PER_US;
                pulse1_ticks <= clamp_us(pulse1_us) * TICKS_PER_US;
                pulse2_ticks <= clamp_us(pulse2_us) * TICKS_PER_US;
                pulse3_ticks <= clamp_us(pulse3_us) * TICKS_PER_US;
            end
            else begin
                frame_cnt <= frame_cnt + 1'b1;
            end
        end
    end

    // ============================================================
    // PWM 출력 생성
    //
    // frame_cnt가 pulse_ticks보다 작은 동안 HIGH
    // 그 이후 LOW
    // ============================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pwm0 <= 1'b0;
            pwm1 <= 1'b0;
            pwm2 <= 1'b0;
            pwm3 <= 1'b0;
        end
        else begin
            pwm0 <= (frame_cnt < pulse0_ticks) ? 1'b1 : 1'b0;
            pwm1 <= (frame_cnt < pulse1_ticks) ? 1'b1 : 1'b0;
            pwm2 <= (frame_cnt < pulse2_ticks) ? 1'b1 : 1'b0;
            pwm3 <= (frame_cnt < pulse3_ticks) ? 1'b1 : 1'b0;
        end
    end

endmodule