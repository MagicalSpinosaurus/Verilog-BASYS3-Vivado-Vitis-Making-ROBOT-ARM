#include <stdio.h>
#include <sys/_intsup.h>
#include <xstatus.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "xil_io.h"

#define GPIO_DATA_OFFSET 0x0
#define GPIO_TRI_OFFSET  0x4

/* =========================
 * AXI GPIO base addresses
 * ========================= */
#define SW_BASE     XPAR_AXI_GPIO_0_BASEADDR
#define BTN_BASE    XPAR_AXI_GPIO_1_BASEADDR
#define AN_BASE     XPAR_AXI_GPIO_2_BASEADDR
#define SEG_BASE    XPAR_AXI_GPIO_3_BASEADDR
#define LED_BASE    XPAR_AXI_GPIO_4_BASEADDR

#define SERVO0_BASE XPAR_AXI_GPIO_SERVO0_BASEADDR   /* Base   */
#define SERVO1_BASE XPAR_AXI_GPIO_SERVO1_BASEADDR   /* Elbow  */
#define SERVO2_BASE XPAR_AXI_GPIO_SERVO2_BASEADDR   /* Wrist  */
#define SERVO3_BASE XPAR_AXI_GPIO_SERVO3_BASEADDR   /* Clamp  */

/* =========================
 * Switch mapping
 * SW12 = Base
 * SW13 = Elbow
 * SW14 = Wrist
 * SW15 = Clamp
 * ========================= */
#define SW_BASE_MASK   (1U << 12)
#define SW_ELBOW_MASK  (1U << 13)
#define SW_WRIST_MASK  (1U << 14)
#define SW_CLAMP_MASK  (1U << 15)

/* =========================
 * Button mapping
 * bit0 = BTNU
 * bit1 = BTNL
 * bit2 = BTNR
 * bit3 = BTND
 *
 * BTNC는 하드웨어 reset으로 사용
 * ========================= */
#define BTN_UP_MASK    (1U << 0)   /* BTNU */
#define BTN_HOME_MASK  (1U << 1)   /* BTNL */
#define BTN_RIGHT_MASK (1U << 2)   /* BTNR (reserved) */
#define BTN_DOWN_MASK  (1U << 3)   /* BTND */

/* =========================
 * FND LUT (common anode, active-low)
 * bit0=a ... bit6=g, bit7=dp
 * ========================= */
static const u32 seven_seg_digit_lut[10] = {
    0xC0, /* 0 */
    0xF9, /* 1 */
    0xA4, /* 2 */
    0xB0, /* 3 */
    0x99, /* 4 */
    0x92, /* 5 */
    0x82, /* 6 */
    0xF8, /* 7 */
    0x80, /* 8 */
    0x90  /* 9 */
};

static const u32 an_select_lut[4] = {
    0x7, /* leftmost digit on  */
    0xB,
    0xD,
    0xE  /* rightmost digit on */
};

typedef struct
{
    u32 base_addr;
    u16 min_us;
    u16 home_us;
    u16 max_us;

    u16 button_step_us;    /* 버튼 1회 입력 시 목표값 변화량 */
    u16 move_step_us;      /* 실제 추종 시 한 번에 움직일 양 */
    u16 move_interval_ms;  /* 몇 ms마다 한 step 적용할지 */

    const char *name;
} ServoCfg;

/*
 * 현재 추천값
 * - 버튼은 너무 크게 튀지 않게
 * - 실제 이동은 빠르게
 */
static ServoCfg servo_cfg[4] = {
    { SERVO0_BASE,  500, 1500, 2500,  8, 16, 5, "Base"  },
    { SERVO1_BASE,  500, 1500, 2500,  8, 16, 5, "Elbow" },
    { SERVO2_BASE,  500, 1500, 2500, 10, 24, 4, "Wrist" },
    { SERVO3_BASE,  500, 1300, 2500, 10, 24, 4, "Clamp" }
};

static u16 current_us[4];
static u16 target_us[4];
static u16 last_written_us[4] = {0, 0, 0, 0};
static u16 move_accum_ms[4]   = {0, 0, 0, 0};

/* =========================
 * GPIO helper
 * ========================= */
static void gpio_set_output(u32 base_addr)
{
    Xil_Out32(base_addr + GPIO_TRI_OFFSET, 0x00000000);
}

static u32 gpio_read(u32 base_addr)
{
    return Xil_In32(base_addr + GPIO_DATA_OFFSET);
}

static void gpio_write(u32 base_addr, u32 value)
{
    Xil_Out32(base_addr + GPIO_DATA_OFFSET, value);
}

/* =========================
 * Servo helper
 * ========================= */
static u16 clamp_to_range(int idx, u16 pulse_us)
{
    if (pulse_us < servo_cfg[idx].min_us) {
        return servo_cfg[idx].min_us;
    }
    if (pulse_us > servo_cfg[idx].max_us) {
        return servo_cfg[idx].max_us;
    }
    return pulse_us;
}

static void servo_write_us_idx(int idx, u16 pulse_us)
{
    u16 clamped = clamp_to_range(idx, pulse_us);
    gpio_write(servo_cfg[idx].base_addr, (u32)clamped);
    last_written_us[idx] = clamped;
}

static void set_all_home_targets(void)
{
    int i;
    for (i = 0; i < 4; i++) {
        target_us[i] = servo_cfg[i].home_us;
    }
}

static void init_all_servos_home(void)
{
    int i;
    for (i = 0; i < 4; i++) {
        current_us[i] = servo_cfg[i].home_us;
        target_us[i]  = servo_cfg[i].home_us;
        servo_write_us_idx(i, servo_cfg[i].home_us);
    }
}

/* =========================
 * 스위치로 선택 축 결정
 * 한 번에 하나만 켜졌을 때만 변경
 * ========================= */
static int get_selected_axis_from_switch(u32 sw_value, int current_selected)
{
    int count = 0;
    int selected = current_selected;

    if (sw_value & SW_BASE_MASK)  { selected = 0; count++; }
    if (sw_value & SW_ELBOW_MASK) { selected = 1; count++; }
    if (sw_value & SW_WRIST_MASK) { selected = 2; count++; }
    if (sw_value & SW_CLAMP_MASK) { selected = 3; count++; }

    if (count == 1) {
        return selected;
    }
    return current_selected;
}

/* =========================
 * current_us -> target_us 추종
 * ========================= */
static void update_servo_motion_1ms(void)
{
    int i;

    for (i = 0; i < 4; i++) {
        move_accum_ms[i]++;

        if (move_accum_ms[i] < servo_cfg[i].move_interval_ms) {
            continue;
        }

        move_accum_ms[i] = 0;

        if (current_us[i] < target_us[i]) {
            u16 next = current_us[i] + servo_cfg[i].move_step_us;
            if (next > target_us[i]) {
                next = target_us[i];
            }
            current_us[i] = next;
        }
        else if (current_us[i] > target_us[i]) {
            u16 next;
            if (current_us[i] > (u16)(target_us[i] + servo_cfg[i].move_step_us)) {
                next = current_us[i] - servo_cfg[i].move_step_us;
            } else {
                next = target_us[i];
            }
            current_us[i] = next;
        }

        current_us[i] = clamp_to_range(i, current_us[i]);

        if (current_us[i] != last_written_us[i]) {
            servo_write_us_idx(i, current_us[i]);
        }
    }
}

/* =========================
 * pulse_us -> 표시용 각도(0~180)
 * ========================= */
static int pulse_to_angle_deg(int idx, u16 pulse_us)
{
    int min_us = servo_cfg[idx].min_us;
    int max_us = servo_cfg[idx].max_us;

    if (pulse_us <= min_us) {
        return 0;
    }
    if (pulse_us >= max_us) {
        return 180;
    }

    return ((pulse_us - min_us) * 180) / (max_us - min_us);
}

/* =========================
 * FND helper
 * ========================= */
static u32 sevenseg_encode_digit(u32 digit, int dp_on)
{
    u32 seg;

    if (digit <= 9U) {
        seg = seven_seg_digit_lut[digit];
    } else {
        seg = 0xFF;
    }

    if (dp_on) {
        seg &= 0x7F; /* dp ON */
    } else {
        seg |= 0x80; /* dp OFF */
    }

    return seg;
}

static void build_display_digits(int selected_axis, int angle, u32 digits[4], int dp_on[4])
{
    digits[0] = (u32)(selected_axis + 1); /* 축 번호 1~4 */
    digits[1] = (u32)(angle / 100);
    digits[2] = (u32)((angle / 10) % 10);
    digits[3] = (u32)(angle % 10);

    dp_on[0] = 1; /* 축 번호 뒤 점 */
    dp_on[1] = 0;
    dp_on[2] = 0;
    dp_on[3] = 0;
}

static void fnd_update_one_digit(int digit_index, u32 digits[4], int dp_on[4])
{
    u32 seg_value = sevenseg_encode_digit(digits[digit_index], dp_on[digit_index]);
    u32 an_value  = an_select_lut[digit_index];

    gpio_write(AN_BASE,  0x0000000F); /* all off */
    gpio_write(SEG_BASE, seg_value);
    gpio_write(AN_BASE,  an_value);
}

int main(void)
{
    u32 sw_value;
    u32 btn_value;
    u32 prev_btn_value = 0;
    u32 btn_rise;

    int selected_axis = 0;

    /* 버튼 hold 처리용 */
    u32 hold_count_ms = 0;

    /* FND 표시용 */
    int display_angle;
    u32 display_digits[4] = {0, 0, 0, 0};
    int display_dp[4] = {0, 0, 0, 0};
    int fnd_digit_index = 0;

    init_platform();

    /* 출력 GPIO 설정 */
    gpio_set_output(LED_BASE);
    gpio_set_output(AN_BASE);
    gpio_set_output(SEG_BASE);
    gpio_set_output(SERVO0_BASE);
    gpio_set_output(SERVO1_BASE);
    gpio_set_output(SERVO2_BASE);
    gpio_set_output(SERVO3_BASE);

    /* 초기 상태 */
    gpio_write(LED_BASE, 0x0000);
    gpio_write(AN_BASE,  0x0000000F);
    gpio_write(SEG_BASE, 0x000000FF);

    init_all_servos_home();

    xil_printf("\r\n");
    xil_printf("====================================\r\n");
    xil_printf("Robot Arm Final Control Start (Split Step Version)\r\n");
    xil_printf("SW12=Base, SW13=Elbow, SW14=Wrist, SW15=Clamp\r\n");
    xil_printf("BTNU=Up, BTND=Down, BTNL=Home, BTNR=Reserved\r\n");
    xil_printf("BTNC = hardware reset (not read by software)\r\n");
    xil_printf("====================================\r\n");

    while (1) {
        /* 1) 입력 읽기 */
        sw_value  = gpio_read(SW_BASE)  & 0x0000FFFFU;
        btn_value = gpio_read(BTN_BASE) & 0x0000000FU;
        btn_rise  = btn_value & (~prev_btn_value);

        /* 2) LED는 스위치 상태 그대로 표시 */
        gpio_write(LED_BASE, sw_value);

        /* 3) 선택 축 결정 */
        selected_axis = get_selected_axis_from_switch(sw_value, selected_axis);

        /* 4) 버튼 처리 */
        if (btn_rise & BTN_HOME_MASK) {
            set_all_home_targets();
            hold_count_ms = 0;
        }

        /* 즉시 1회 반응 */
        if (btn_rise & BTN_UP_MASK) {
            u16 next = target_us[selected_axis] + servo_cfg[selected_axis].button_step_us;
            target_us[selected_axis] = clamp_to_range(selected_axis, next);
            hold_count_ms = 0;
        }

        if (btn_rise & BTN_DOWN_MASK) {
            u16 next;
            if (target_us[selected_axis] > (u16)(servo_cfg[selected_axis].min_us + servo_cfg[selected_axis].button_step_us)) {
                next = target_us[selected_axis] - servo_cfg[selected_axis].button_step_us;
            } else {
                next = servo_cfg[selected_axis].min_us;
            }
            target_us[selected_axis] = clamp_to_range(selected_axis, next);
            hold_count_ms = 0;
        }

        /* hold repeat */
        if ((btn_value & BTN_UP_MASK) && !(btn_value & BTN_DOWN_MASK)) {
            hold_count_ms++;

            if (hold_count_ms >= 100U && ((hold_count_ms - 100U) % 18U) == 0U) {
                u16 next = target_us[selected_axis] + servo_cfg[selected_axis].button_step_us;
                target_us[selected_axis] = clamp_to_range(selected_axis, next);
            }
        }
        else if ((btn_value & BTN_DOWN_MASK) && !(btn_value & BTN_UP_MASK)) {
            hold_count_ms++;

            if (hold_count_ms >= 100U && ((hold_count_ms - 100U) % 18U) == 0U) {
                u16 next;
                if (target_us[selected_axis] > (u16)(servo_cfg[selected_axis].min_us + servo_cfg[selected_axis].button_step_us)) {
                    next = target_us[selected_axis] - servo_cfg[selected_axis].button_step_us;
                } else {
                    next = servo_cfg[selected_axis].min_us;
                }
                target_us[selected_axis] = clamp_to_range(selected_axis, next);
            }
        }
        else {
            hold_count_ms = 0;
        }

        prev_btn_value = btn_value;

        /* 5) 서보 현재값 -> 목표값 추종 */
        update_servo_motion_1ms();

        /* 6) FND 표시 */
        display_angle = pulse_to_angle_deg(selected_axis, current_us[selected_axis]);
        build_display_digits(selected_axis, display_angle, display_digits, display_dp);
        fnd_update_one_digit(fnd_digit_index, display_digits, display_dp);
        fnd_digit_index = (fnd_digit_index + 1) % 4;

        /* 1ms 주기 */
        usleep(1000);
    }

    cleanup_platform();
    return 0;
}