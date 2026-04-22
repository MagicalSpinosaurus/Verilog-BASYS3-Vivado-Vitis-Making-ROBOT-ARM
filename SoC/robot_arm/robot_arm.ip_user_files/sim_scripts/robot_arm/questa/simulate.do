onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib robot_arm_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {robot_arm.udo}

run 1000ns

quit -force
