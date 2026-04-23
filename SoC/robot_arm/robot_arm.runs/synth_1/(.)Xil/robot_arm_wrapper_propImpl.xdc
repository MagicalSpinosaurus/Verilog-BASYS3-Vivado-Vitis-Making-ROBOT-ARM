set_property SRC_FILE_INFO {cfile:/home/user1/workspace_ondevice_2/SoC/robot_arm/robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_1/bd_c18a_psr_aclk_0.xdc rfile:../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_1/bd_c18a_psr_aclk_0.xdc id:1 order:EARLY scoped_inst:robot_arm_i/axi_smc/inst/clk_map/psr_aclk/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/user1/workspace_ondevice_2/SoC/robot_arm/robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_microblaze_riscv_0_0/robot_arm_microblaze_riscv_0_0.xdc rfile:../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_microblaze_riscv_0_0/robot_arm_microblaze_riscv_0_0.xdc id:2 order:EARLY scoped_inst:robot_arm_i/microblaze_riscv_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/user1/workspace_ondevice_2/SoC/robot_arm/robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_clk_wiz_0/robot_arm_clk_wiz_0.xdc rfile:../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_clk_wiz_0/robot_arm_clk_wiz_0.xdc id:3 order:EARLY scoped_inst:robot_arm_i/clk_wiz/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/user1/workspace_ondevice_2/SoC/robot_arm/robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_proc_sys_reset_0_0/robot_arm_proc_sys_reset_0_0.xdc rfile:../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_proc_sys_reset_0_0/robot_arm_proc_sys_reset_0_0.xdc id:4 order:EARLY scoped_inst:robot_arm_i/proc_sys_reset_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/user1/workspace_ondevice_2/SoC/robot_arm/robot_arm.srcs/constrs_1/imports/fpga/Basys-3-Master.xdc rfile:../../../robot_arm.srcs/constrs_1/imports/fpga/Basys-3-Master.xdc id:5} [current_design]
set_property SRC_FILE_INFO {cfile:/home/user1/workspace_ondevice_2/SoC/robot_arm/robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_mdm_1_0/robot_arm_mdm_1_0.xdc rfile:../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_mdm_1_0/robot_arm_mdm_1_0.xdc id:6 order:LATE scoped_inst:robot_arm_i/mdm_1/U0} [current_design]
current_instance robot_arm_i/axi_smc/inst/clk_map/psr_aclk/U0
set_property src_info {type:SCOPED_XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]
current_instance
current_instance robot_arm_i/microblaze_riscv_0/U0
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/C]
set_property src_info {type:SCOPED_XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-3  -description "Debug protocol ensures stable signals" -from [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/C]
set_property src_info {type:SCOPED_XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-7  -description "Debug protocol ensures stable signals" -from [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/C]
set_property src_info {type:SCOPED_XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" -from [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/C]
set_property src_info {type:SCOPED_XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/C]
set_property src_info {type:SCOPED_XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/C]
set_property src_info {type:SCOPED_XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/*/C]
set_property src_info {type:SCOPED_XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/D]
set_property src_info {type:SCOPED_XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/CE]
set_property src_info {type:SCOPED_XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/*/D]
set_property src_info {type:SCOPED_XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-7  -description "Debug protocol ensures stable signals" -to [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/CLR]
set_property src_info {type:SCOPED_XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-7  -description "Debug protocol ensures stable signals" -to [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/PRE]
set_property src_info {type:SCOPED_XDC file:2 line:17 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user microblaze_riscv -tags IPCPG-502 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -to [get_pins -quiet riscv_core_I/*.Core/*Debug_Logic.Master_Core.Debug*/Serial_Dbg_Intf.*/CLR]
current_instance
current_instance robot_arm_i/clk_wiz/inst
set_property src_info {type:SCOPED_XDC file:3 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
current_instance
current_instance robot_arm_i/proc_sys_reset_0/U0
set_property src_info {type:SCOPED_XDC file:4 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]
current_instance
set_property src_info {type:XDC file:5 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports sys_clock]
set_property src_info {type:XDC file:5 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports reset]
set_property src_info {type:XDC file:5 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[0]}]   ;# SW0
set_property src_info {type:XDC file:5 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[1]}]   ;# SW1
set_property src_info {type:XDC file:5 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[2]}]   ;# SW2
set_property src_info {type:XDC file:5 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[3]}]   ;# SW3
set_property src_info {type:XDC file:5 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[4]}]   ;# SW4
set_property src_info {type:XDC file:5 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[5]}]   ;# SW5
set_property src_info {type:XDC file:5 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[6]}]   ;# SW6
set_property src_info {type:XDC file:5 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[7]}]   ;# SW7
set_property src_info {type:XDC file:5 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[8]}]   ;# SW8
set_property src_info {type:XDC file:5 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[9]}]   ;# SW9
set_property src_info {type:XDC file:5 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T2    IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[10]}]  ;# SW10
set_property src_info {type:XDC file:5 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[11]}]  ;# SW11
set_property src_info {type:XDC file:5 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[12]}]  ;# SW12
set_property src_info {type:XDC file:5 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U1    IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[13]}]  ;# SW13
set_property src_info {type:XDC file:5 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[14]}]  ;# SW14
set_property src_info {type:XDC file:5 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports {sw_tri_i[15]}]  ;# SW15
set_property src_info {type:XDC file:5 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[0]}]   ;# LED0
set_property src_info {type:XDC file:5 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[1]}]   ;# LED1
set_property src_info {type:XDC file:5 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[2]}]   ;# LED2
set_property src_info {type:XDC file:5 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[3]}]   ;# LED3
set_property src_info {type:XDC file:5 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[4]}]   ;# LED4
set_property src_info {type:XDC file:5 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[5]}]   ;# LED5
set_property src_info {type:XDC file:5 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[6]}]   ;# LED6
set_property src_info {type:XDC file:5 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[7]}]   ;# LED7
set_property src_info {type:XDC file:5 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[8]}]   ;# LED8
set_property src_info {type:XDC file:5 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[9]}]   ;# LED9
set_property src_info {type:XDC file:5 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[10]}]  ;# LED10
set_property src_info {type:XDC file:5 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U3    IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[11]}]  ;# LED11
set_property src_info {type:XDC file:5 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[12]}]  ;# LED12
set_property src_info {type:XDC file:5 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[13]}]  ;# LED13
set_property src_info {type:XDC file:5 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P1    IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[14]}]  ;# LED14
set_property src_info {type:XDC file:5 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports {led_tri_o[15]}]  ;# LED15
set_property src_info {type:XDC file:5 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W7   IOSTANDARD LVCMOS33 } [get_ports {seg_tri_o[0]}]
set_property src_info {type:XDC file:5 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 } [get_ports {seg_tri_o[1]}]
set_property src_info {type:XDC file:5 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports {seg_tri_o[2]}]
set_property src_info {type:XDC file:5 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports {seg_tri_o[3]}]
set_property src_info {type:XDC file:5 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports {seg_tri_o[4]}]
set_property src_info {type:XDC file:5 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports {seg_tri_o[5]}]
set_property src_info {type:XDC file:5 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports {seg_tri_o[6]}]
set_property src_info {type:XDC file:5 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V7   IOSTANDARD LVCMOS33 } [get_ports {seg_tri_o[7]}]
set_property src_info {type:XDC file:5 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports {an_tri_o[0]}]
set_property src_info {type:XDC file:5 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports {an_tri_o[1]}]
set_property src_info {type:XDC file:5 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports {an_tri_o[2]}]
set_property src_info {type:XDC file:5 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports {an_tri_o[3]}]
set_property src_info {type:XDC file:5 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports {btn_tri_i[0]}]   ;# BTNU
set_property src_info {type:XDC file:5 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports {btn_tri_i[1]}]   ;# BTNL
set_property src_info {type:XDC file:5 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports {btn_tri_i[2]}]   ;# BTNR
set_property src_info {type:XDC file:5 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports {btn_tri_i[3]}]   ;# BTND
set_property src_info {type:XDC file:5 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 } [get_ports pwm0]   ;# JA1
set_property src_info {type:XDC file:5 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports pwm1]   ;# JA2
set_property src_info {type:XDC file:5 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J2   IOSTANDARD LVCMOS33 } [get_ports pwm2]   ;# JA3
set_property src_info {type:XDC file:5 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports pwm3]   ;# JA4
set_property src_info {type:XDC file:5 line:143 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports usb_uart_rxd]
set_property src_info {type:XDC file:5 line:144 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports usb_uart_txd]
current_instance robot_arm_i/mdm_1/U0
set_property src_info {type:SCOPED_XDC file:6 line:15 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
set_property src_info {type:SCOPED_XDC file:6 line:18 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user mdm_riscv -tags IPCPG-503 -type METHODOLOGY -id TIMING-54 -object [get_clocks -quiet -of_objects [get_pins "Use*.BSCAN*/*/UPDATE"]] -description "Avoid warning for valid UPDATE clock constraint"
set_property src_info {type:SCOPED_XDC file:6 line:21 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user mdm_riscv -tags IPCPG-503 -type METHODOLOGY -id TIMING-54 -object [get_clocks -quiet -of_objects [get_pins "Use*.BSCAN*/*/TCK"]] -description "Avoid warning for valid TCK clock constraint"
set_property src_info {type:SCOPED_XDC file:6 line:24 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -scoped -user mdm_riscv -tags IPCPG-503 -type METHODOLOGY -id TIMING-54 -object [get_clocks -quiet -of_objects [get_pins */*/*.BUFG_UPDATE/*/O]] -description "Avoid warning for valid UPDATE clock constraint"
set_property src_info {type:SCOPED_XDC file:6 line:29 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
set_property src_info {type:SCOPED_XDC file:6 line:30 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
set_property src_info {type:SCOPED_XDC file:6 line:31 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
set_property src_info {type:SCOPED_XDC file:6 line:32 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/UPDATE]
set_property src_info {type:SCOPED_XDC file:6 line:33 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/CE]
set_property src_info {type:SCOPED_XDC file:6 line:34 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/D]
set_property src_info {type:SCOPED_XDC file:6 line:35 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/R]
set_property src_info {type:SCOPED_XDC file:6 line:36 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Use_JTAG_BSCAN.*/CE]
set_property src_info {type:SCOPED_XDC file:6 line:37 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Use_JTAG_BSCAN.*/D]
set_property src_info {type:SCOPED_XDC file:6 line:38 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Use_JTAG_BSCAN.*/R]
set_property src_info {type:SCOPED_XDC file:6 line:39 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-2  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
set_property src_info {type:SCOPED_XDC file:6 line:40 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-7  -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
set_property src_info {type:SCOPED_XDC file:6 line:41 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-10 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
set_property src_info {type:SCOPED_XDC file:6 line:42 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-11 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
set_property src_info {type:SCOPED_XDC file:6 line:43 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
set_property src_info {type:SCOPED_XDC file:6 line:44 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_JTAG_BSCAN.*/C]
set_property src_info {type:SCOPED_XDC file:6 line:45 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/*/O]
set_property src_info {type:SCOPED_XDC file:6 line:46 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-13 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
set_property src_info {type:SCOPED_XDC file:6 line:47 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/C]
set_property src_info {type:SCOPED_XDC file:6 line:48 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TDI]
set_property src_info {type:SCOPED_XDC file:6 line:49 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/INTERNAL_TCK]
set_property src_info {type:SCOPED_XDC file:6 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -from [get_pins -quiet Use_E2.BSCAN_I/Use_E2.BSCANE2_I/UPDATE]
set_property src_info {type:SCOPED_XDC file:6 line:51 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -to [get_pins -quiet MDM_Core_I1/JTAG_CONTROL_I/*/R]
set_property src_info {type:SCOPED_XDC file:6 line:52 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-15 -description "Debug protocol ensures stable signals" -to [get_pins -quiet Use_JTAG_BSCAN.*/R]
set_property src_info {type:SCOPED_XDC file:6 line:54 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Internal_BSCANID.bscanid*reg/D]
set_property src_info {type:SCOPED_XDC file:6 line:55 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -user mdm_riscv -tags IPCPG-503 -type CDC -id CDC-1  -description "Debug protocol ensures stable signals" -to [get_pins -quiet Internal_BSCANID.bscanid*reg/CE]
