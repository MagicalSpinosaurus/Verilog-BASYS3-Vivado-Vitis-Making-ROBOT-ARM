//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Apr 17 14:12:52 2026
//Host        : user1-H410M-HD3P running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target robot_arm_wrapper.bd
//Design      : robot_arm_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module robot_arm_wrapper
   (an_tri_o,
    btn_tri_i,
    led_tri_o,
    pwm0,
    pwm1,
    pwm2,
    pwm3,
    reset,
    seg_tri_o,
    sw_tri_i,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]an_tri_o;
  input [3:0]btn_tri_i;
  output [15:0]led_tri_o;
  output pwm0;
  output pwm1;
  output pwm2;
  output pwm3;
  input reset;
  output [7:0]seg_tri_o;
  input [15:0]sw_tri_i;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]an_tri_o;
  wire [3:0]btn_tri_i;
  wire [15:0]led_tri_o;
  wire pwm0;
  wire pwm1;
  wire pwm2;
  wire pwm3;
  wire reset;
  wire [7:0]seg_tri_o;
  wire [15:0]sw_tri_i;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  robot_arm robot_arm_i
       (.an_tri_o(an_tri_o),
        .btn_tri_i(btn_tri_i),
        .led_tri_o(led_tri_o),
        .pwm0(pwm0),
        .pwm1(pwm1),
        .pwm2(pwm2),
        .pwm3(pwm3),
        .reset(reset),
        .seg_tri_o(seg_tri_o),
        .sw_tri_i(sw_tri_i),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
