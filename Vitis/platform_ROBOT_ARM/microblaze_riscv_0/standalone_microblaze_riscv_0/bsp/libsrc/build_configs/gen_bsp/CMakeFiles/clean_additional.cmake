# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/user1/workspace_ondevice_2/Vitis/platform_ROBOT_ARM/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/sleep.h"
  "/home/user1/workspace_ondevice_2/Vitis/platform_ROBOT_ARM/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/xiltimer.h"
  "/home/user1/workspace_ondevice_2/Vitis/platform_ROBOT_ARM/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/include/xtimer_config.h"
  "/home/user1/workspace_ondevice_2/Vitis/platform_ROBOT_ARM/microblaze_riscv_0/standalone_microblaze_riscv_0/bsp/lib/libxiltimer.a"
  )
endif()
