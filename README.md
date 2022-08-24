# TestExercise

## Requirements

1. GNU RISC-V toolchains (tested on Crosstool-NG)
1. qemu-riscv32-system (tested on Ubuntu 20.20 package)
1. Linux OS (tested on Ubuntu 20.20)

## How to build toolchain

Clone the Crosstool-NG and build.

```
$ git clone https://github.com/crosstool-ng/crosstool-ng
$ ./configure --enable-local
$ make

$ ./ct-ng menuconfig
```

Change the following configs:

```
CT_EXPERIMENTAL=y
CT_ARCH_RISCV=y
CT_ARCH_64=y
CT_ARCH_ARCH=rv32ima
CT_ARCH_ABI=ilp32
CT_MULTILIB=y
CT_DEBUG_GDB=y
```

Build the GNU toolchain for RISC-V.

```
$ ./ct-ng build
```

A toolchain is installed at ~/x-tools/riscv64-unknown-elf directory.

## How install qemu

```
$ sudo apt install qemu-system-misc
```

## How to run

```
$ ./Start.sh
```
## Log

```
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c main.c -o build/main.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c main_blinky.c -o build/main_blinky.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c riscv-virt.c -o build/riscv-virt.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c ns16550.c -o build/ns16550.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/EventGroupsDemo.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/EventGroupsDemo.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/TaskNotify.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/TaskNotify.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/TimerDemo.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/TimerDemo.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/blocktim.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/blocktim.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/dynamic.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/dynamic.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/recmutex.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/recmutex.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/event_groups.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/event_groups.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/list.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/list.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/queue.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/queue.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/stream_buffer.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/stream_buffer.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/tasks.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/tasks.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/timers.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/timers.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/MemMang/heap_4.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/MemMang/heap_4.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/port.c -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/port.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/coremark/core_main.c -o build//home/ubuntu/Build/TestExercise/coremark/core_main.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/coremark/core_util.c -o build//home/ubuntu/Build/TestExercise/coremark/core_util.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/coremark/core_list_join.c -o build//home/ubuntu/Build/TestExercise/coremark/core_list_join.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/coremark/core_state.c -o build//home/ubuntu/Build/TestExercise/coremark/core_state.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/coremark/core_matrix.c -o build//home/ubuntu/Build/TestExercise/coremark/core_matrix.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/coremark/posix/core_portme.c -o build//home/ubuntu/Build/TestExercise/coremark/posix/core_portme.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei  -mabi=ilp32 -mcmodel=medany -Wall -fmessage-length=0 -ffunction-sections -fdata-sections -fno-builtin-printf  -O2 -MMD -MP -c /home/ubuntu/Build/TestExercise/coremark/posix/xprintf.c -o build//home/ubuntu/Build/TestExercise/coremark/posix/xprintf.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei -mabi=ilp32 -mcmodel=medany -MMD -MP -c start.S -o build/start.o
riscv64-unknown-elf-gcc -D__riscv_float_abi_soft -DportasmHANDLE_INTERRUPT=handle_trap -I . -I FreeRTOS/Common/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/include -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V -I /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions -I /home/ubuntu/Build/TestExercise/coremark -I /home/ubuntu/Build/TestExercise/coremark/posix  -march=rv32imafdc_zicsr_zifencei -mabi=ilp32 -mcmodel=medany -MMD -MP -c /home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/portASM.S -o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/portASM.o
riscv64-unknown-elf-gcc -nostartfiles -Tfake_rom.lds -Xlinker --gc-sections -Xlinker --defsym=__stack_size=300  build/main.o build/main_blinky.o build/riscv-virt.o build/ns16550.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/EventGroupsDemo.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/TaskNotify.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/TimerDemo.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/blocktim.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/dynamic.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Common/Minimal/recmutex.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/event_groups.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/list.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/queue.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/stream_buffer.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/tasks.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/timers.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/MemMang/heap_4.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/port.o build//home/ubuntu/Build/TestExercise/coremark/core_main.o build//home/ubuntu/Build/TestExercise/coremark/core_util.o build//home/ubuntu/Build/TestExercise/coremark/core_list_join.o build//home/ubuntu/Build/TestExercise/coremark/core_state.o build//home/ubuntu/Build/TestExercise/coremark/core_matrix.o build//home/ubuntu/Build/TestExercise/coremark/posix/core_portme.o build//home/ubuntu/Build/TestExercise/coremark/posix/xprintf.o build/start.o build//home/ubuntu/Build/TestExercise/FreeRTOS/Source/portable/GCC/RISC-V/portASM.o -o build/RTOSDemo.axf
Hello FreeRTOS!
Start coremark!
2K performance run parameters for coremark.
CoreMark Size    : 666
Total ticks      : 20105
Total time (secs): 20.105000
Iterations/Sec   : 547.127580
Iterations       : 11000
Compiler version : GCC12.1.0
Compiler flags   : -o3
Memory location  : Static
seedcrc          : 0xe9f5
[0]crclist       : 0xe714
[0]crcmatrix     : 0x1fd7
[0]crcstate      : 0x8e3a
[0]crcfinal      : 0x33ff
Correct operation validated. See README.md for run and reporting rules.
CoreMark 1.0 : 547.127580 / GCC12.1.0 -o3 / Static
Stop coremark!
Start coremark!
2K performance run parameters for coremark.
CoreMark Size    : 666
Total ticks      : 20180
Total time (secs): 20.180000
Iterations/Sec   : 545.094153
Iterations       : 11000
Compiler version : GCC12.1.0
Compiler flags   : -o3
Memory location  : Static
seedcrc          : 0xe9f5
[0]crclist       : 0xe714
[0]crcmatrix     : 0x1fd7
[0]crcstate      : 0x8e3a
[0]crcfinal      : 0x33ff
Correct operation validated. See README.md for run and reporting rules.
CoreMark 1.0 : 545.094153 / GCC12.1.0 -o3 / Static
Stop coremark!
Start coremark!
2K performance run parameters for coremark.
CoreMark Size    : 666
Total ticks      : 20236
Total time (secs): 20.236000
Iterations/Sec   : 543.585689
Iterations       : 11000
Compiler version : GCC12.1.0
Compiler flags   : -o3
Memory location  : Static
seedcrc          : 0xe9f5
[0]crclist       : 0xe714
[0]crcmatrix     : 0x1fd7
[0]crcstate      : 0x8e3a
[0]crcfinal      : 0x33ff
Correct operation validated. See README.md for run and reporting rules.
CoreMark 1.0 : 543.585689 / GCC12.1.0 -o3 / Static
Stop coremark!

```





