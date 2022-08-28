CROSS   = ~/x-tools/riscv64-unknown-elf/bin/riscv64-unknown-elf-
CC      = $(CROSS)gcc
OBJCOPY = $(CROSS)objcopy
ARCH    = $(CROSS)ar

BUILD_DIR       = build
RTOS_SOURCE_DIR = $(abspath FreeRTOS/Source)
DEMO_SOURCE_DIR = $(abspath FreeRTOS/Common/Minimal)
COREMARK_SOURCE_DIR = $(abspath coremark)


CPPFLAGS = \
	-D__riscv_float_abi_soft \
	-DportasmHANDLE_INTERRUPT=handle_trap \
	-I . -I FreeRTOS/Common/include \
	-I $(RTOS_SOURCE_DIR)/include \
	-I $(RTOS_SOURCE_DIR)/portable/GCC/RISC-V \
	-I $(RTOS_SOURCE_DIR)/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions\
	-I $(COREMARK_SOURCE_DIR)\
    	-I $(COREMARK_SOURCE_DIR)/posix\



CFLAGS  = -march=rv64imafdc_zicsr_zifencei  -mabi=lp64 -mcmodel=medany \
	-Wall \
	-fmessage-length=0 \
	-ffunction-sections \
	-fdata-sections \
	-fno-builtin-printf\
	 

ASFLAGS = -march=rv64imafdc_zicsr_zifencei -mabi=lp64 -mcmodel=medany
LDFLAGS = -nostartfiles -Tfake_rom.lds \
	-Xlinker --gc-sections \
	-Xlinker --defsym=__stack_size=800\

    

ifeq ($(DEBUG), 1)
    CFLAGS += -Og -g
    ASFLAGS += -g
else
    CFLAGS += -O2
endif

SRCS = main.c main_blinky.c riscv-virt.c ns16550.c \
	$(DEMO_SOURCE_DIR)/EventGroupsDemo.c \
	$(DEMO_SOURCE_DIR)/TaskNotify.c \
	$(DEMO_SOURCE_DIR)/TimerDemo.c \
	$(DEMO_SOURCE_DIR)/blocktim.c \
	$(DEMO_SOURCE_DIR)/dynamic.c \
	$(DEMO_SOURCE_DIR)/recmutex.c \
	$(RTOS_SOURCE_DIR)/event_groups.c \
	$(RTOS_SOURCE_DIR)/list.c \
	$(RTOS_SOURCE_DIR)/queue.c \
	$(RTOS_SOURCE_DIR)/stream_buffer.c \
	$(RTOS_SOURCE_DIR)/tasks.c \
	$(RTOS_SOURCE_DIR)/timers.c \
	$(RTOS_SOURCE_DIR)/portable/MemMang/heap_4.c \
	$(RTOS_SOURCE_DIR)/portable/GCC/RISC-V/port.c\
	$(COREMARK_SOURCE_DIR)/core_main.c\
    $(COREMARK_SOURCE_DIR)/core_util.c\
	$(COREMARK_SOURCE_DIR)/core_list_join.c\
	$(COREMARK_SOURCE_DIR)/core_state.c\
	$(COREMARK_SOURCE_DIR)/core_matrix.c\
	$(COREMARK_SOURCE_DIR)/posix/core_portme.c\
	$(COREMARK_SOURCE_DIR)/posix/xprintf.c\


ASMS = start.S \
	$(RTOS_SOURCE_DIR)/portable/GCC/RISC-V/portASM.S

OBJS = $(SRCS:%.c=$(BUILD_DIR)/%.o) $(ASMS:%.S=$(BUILD_DIR)/%.o)
DEPS = $(SRCS:%.c=$(BUILD_DIR)/%.d) $(ASMS:%.S=$(BUILD_DIR)/%.d)

all: $(BUILD_DIR)/RTOSDemo.axf

$(BUILD_DIR)/RTOSDemo.axf: $(OBJS) fake_rom.lds Makefile
	$(CC) $(LDFLAGS) $(OBJS) -o $@

$(BUILD_DIR)/%.o: %.c Makefile
	@mkdir -p $(@D)
	$(CC) $(CPPFLAGS) $(CFLAGS) -MMD -MP -c $< -o $@

$(BUILD_DIR)/%.o: %.S Makefile
	@mkdir -p $(@D)
	$(CC) $(CPPFLAGS) $(ASFLAGS) -MMD -MP -c $< -o $@

clean:
	rm -rf $(BUILD_DIR)
	rm -rf run.log

-include $(DEPS)

