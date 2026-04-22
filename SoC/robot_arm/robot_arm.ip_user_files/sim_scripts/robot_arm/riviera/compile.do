transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_uartlite_v2_0_37
vlib riviera/microblaze_v11_0_14
vlib riviera/microblaze_riscv_v1_0_3
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_25
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/mdm_riscv_v1_0_3
vlib riviera/xlconstant_v1_1_9
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/axi_vip_v1_1_19
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_35

vmap xilinx_vip riviera/xilinx_vip
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_37 riviera/axi_uartlite_v2_0_37
vmap microblaze_v11_0_14 riviera/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 riviera/microblaze_riscv_v1_0_3
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 riviera/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap mdm_riscv_v1_0_3 riviera/mdm_riscv_v1_0_3
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 riviera/axi_gpio_v2_0_35

vlog -work xilinx_vip  -incr "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_proc_sys_reset_0_0/sim/robot_arm_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_clk_wiz_0/robot_arm_clk_wiz_0_clk_wiz.v" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_clk_wiz_0/robot_arm_clk_wiz_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_37 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_uartlite_0_0/sim/robot_arm_axi_uartlite_0_0.vhd" \

vcom -work microblaze_v11_0_14 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_3 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f9dd/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_microblaze_riscv_0_0/sim/robot_arm_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_dlmb_v10_0/sim/robot_arm_dlmb_v10_0.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_ilmb_v10_0/sim/robot_arm_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_dlmb_bram_if_cntlr_0/sim/robot_arm_dlmb_bram_if_cntlr_0.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_ilmb_bram_if_cntlr_0/sim/robot_arm_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_lmb_bram_0/sim/robot_arm_lmb_bram_0.v" \

vcom -work mdm_riscv_v1_0_3 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/d547/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_mdm_1_0/sim/robot_arm_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/sim/bd_c18a.v" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_0/sim/bd_c18a_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_1/sim/bd_c18a_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_2/sim/bd_c18a_arinsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_3/sim/bd_c18a_rinsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_4/sim/bd_c18a_awinsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_5/sim/bd_c18a_winsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_6/sim/bd_c18a_binsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_7/sim/bd_c18a_aroutsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_8/sim/bd_c18a_routsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_9/sim/bd_c18a_awoutsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_10/sim/bd_c18a_woutsw_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_11/sim/bd_c18a_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_12/sim/bd_c18a_arni_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_13/sim/bd_c18a_rni_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_14/sim/bd_c18a_awni_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_15/sim/bd_c18a_wni_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_16/sim/bd_c18a_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_17/sim/bd_c18a_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_18/sim/bd_c18a_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_19/sim/bd_c18a_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_20/sim/bd_c18a_s00a2s_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_21/sim/bd_c18a_sarn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_22/sim/bd_c18a_srn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_23/sim/bd_c18a_sawn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_24/sim/bd_c18a_swn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_25/sim/bd_c18a_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_26/sim/bd_c18a_m00s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_27/sim/bd_c18a_m00arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_28/sim/bd_c18a_m00rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_29/sim/bd_c18a_m00awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_30/sim/bd_c18a_m00wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_31/sim/bd_c18a_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_32/sim/bd_c18a_m00e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_33/sim/bd_c18a_m01s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_34/sim/bd_c18a_m01arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_35/sim/bd_c18a_m01rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_36/sim/bd_c18a_m01awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_37/sim/bd_c18a_m01wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_38/sim/bd_c18a_m01bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_39/sim/bd_c18a_m01e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_40/sim/bd_c18a_m02s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_41/sim/bd_c18a_m02arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_42/sim/bd_c18a_m02rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_43/sim/bd_c18a_m02awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_44/sim/bd_c18a_m02wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_45/sim/bd_c18a_m02bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_46/sim/bd_c18a_m02e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_47/sim/bd_c18a_m03s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_48/sim/bd_c18a_m03arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_49/sim/bd_c18a_m03rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_50/sim/bd_c18a_m03awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_51/sim/bd_c18a_m03wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_52/sim/bd_c18a_m03bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_53/sim/bd_c18a_m03e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_54/sim/bd_c18a_m04s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_55/sim/bd_c18a_m04arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_56/sim/bd_c18a_m04rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_57/sim/bd_c18a_m04awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_58/sim/bd_c18a_m04wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_59/sim/bd_c18a_m04bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_60/sim/bd_c18a_m04e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_61/sim/bd_c18a_m05s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_62/sim/bd_c18a_m05arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_63/sim/bd_c18a_m05rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_64/sim/bd_c18a_m05awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_65/sim/bd_c18a_m05wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_66/sim/bd_c18a_m05bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_67/sim/bd_c18a_m05e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_68/sim/bd_c18a_m06s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_69/sim/bd_c18a_m06arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_70/sim/bd_c18a_m06rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_71/sim/bd_c18a_m06awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_72/sim/bd_c18a_m06wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_73/sim/bd_c18a_m06bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_74/sim/bd_c18a_m06e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_75/sim/bd_c18a_m07s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_76/sim/bd_c18a_m07arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_77/sim/bd_c18a_m07rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_78/sim/bd_c18a_m07awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_79/sim/bd_c18a_m07wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_80/sim/bd_c18a_m07bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_81/sim/bd_c18a_m07e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_82/sim/bd_c18a_m08s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_83/sim/bd_c18a_m08arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_84/sim/bd_c18a_m08rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_85/sim/bd_c18a_m08awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_86/sim/bd_c18a_m08wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_87/sim/bd_c18a_m08bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_88/sim/bd_c18a_m08e_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_89/sim/bd_c18a_m09s2a_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_90/sim/bd_c18a_m09arn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_91/sim/bd_c18a_m09rn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_92/sim/bd_c18a_m09awn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_93/sim/bd_c18a_m09wn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_94/sim/bd_c18a_m09bn_0.sv" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/bd_0/ip/ip_95/sim/bd_c18a_m09e_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_smc_0/sim/robot_arm_axi_smc_0.v" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_0_0/sim/robot_arm_axi_gpio_0_0.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_1_0/sim/robot_arm_axi_gpio_1_0.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_2_0/sim/robot_arm_axi_gpio_2_0.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_3_0/sim/robot_arm_axi_gpio_3_0.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_4_0/sim/robot_arm_axi_gpio_4_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_servo_pwm_4ch_0_0/sim/robot_arm_servo_pwm_4ch_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_5_0/sim/robot_arm_axi_gpio_5_0.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_5_1/sim/robot_arm_axi_gpio_5_1.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_5_2/sim/robot_arm_axi_gpio_5_2.vhd" \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/ip/robot_arm_axi_gpio_5_3/sim/robot_arm_axi_gpio_5_3.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/3cbc" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/f0b6/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/0127/hdl/verilog" "+incdir+../../../../robot_arm.gen/sources_1/bd/robot_arm/ipshared/ec67/hdl" "+incdir+/opt/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l mdm_riscv_v1_0_3 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../robot_arm.gen/sources_1/bd/robot_arm/sim/robot_arm.v" \

vlog -work xil_defaultlib \
"glbl.v"

