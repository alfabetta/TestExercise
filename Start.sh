#!/bin/bash
export PATH=~/x-tools/riscv64-unknown-elf/bin:$PATH
make clean
make >> run.log
qemu-system-riscv64 -nographic -machine virt -net none   -chardev stdio,id=con,mux=on -serial chardev:con   -mon chardev=con,mode=readline -bios none   -smp 4 -kernel ./build/RTOSDemo.axf >> run.log 



