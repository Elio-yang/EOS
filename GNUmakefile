# how to build the system?
# firstly , a linux system is needed(dd command is needed)
# gcc + make + nasm + bochs  is needed
# then run make all
#===================================================================================
# build directory
BUILD_DIR = ./build
# kernel entry point
ENTRY_POINT = 0xc0001500
#===================================================================================
# toolchain
AS = nasm
CC = gcc
LD = ld
#===================================================================================
# include directories
INC = include/aux_print.h include/error.h include/stdarg.h include/stdint.h \
include/stdio.h include/string.h include/types.h include/interrupt.h include/io.h\
include/global.h include/init.h include/timer.h  include/asmlinkage.h

LIB = -I lib/ -I lib/kernel/  -I kernel/ -I include/
#===================================================================================
# for *.S,*.asm  files
ASFLAGS = -f elf -o
# for *.c files
CFLAGS =  -fno-stack-protector -fno-builtin -Wno-builtin-declaration-mismatch -m32 $(LIB) -c -o
# for link the whole kernel
LDFLAGES=-m elf_i386 -Ttext $(ENTRY_POINT) -e main -o
#===================================================================================
# kernel img
DISK = ./hd60M.img
# kernel binary
TARGET_BIN= $(BUILD_DIR)/kernel.bin
# objects for linkage
OBJS =$(BUILD_DIR)/main.o  $(BUILD_DIR)/printf.o  \
		$(BUILD_DIR)/printfmt.o $(BUILD_DIR)/string.o $(BUILD_DIR)/print.o\
		$(BUILD_DIR)/sysinfo.o $(BUILD_DIR)/kernel.o $(BUILD_DIR)/interrupt.o \
		$(BUILD_DIR)/init.o   $(BUILD_DIR)/timer.o
#===================================================================================
# gcc -fno-stack-protector  -Wno-builtin-declaration-mismatch -m32 $(LIB) -c -o $obj $src
$(BUILD_DIR)/main.o: 	kernel/main.c
	$(CC) $(CFLAGS) $(BUILD_DIR)/main.o kernel/main.c

# printf
$(BUILD_DIR)/printf.o:	lib/kernel/printf.c 
	$(CC) $(CFLAGS) $(BUILD_DIR)/printf.o lib/kernel/printf.c
$(BUILD_DIR)/printfmt.o:lib/kernel/printfmt.c $(INC)
	$(CC) $(CFLAGS) $(BUILD_DIR)/printfmt.o lib/kernel/printfmt.c
# string
$(BUILD_DIR)/string.o:	lib/kernel/string.c $(INC)
	$(CC) $(CFLAGS) $(BUILD_DIR)/string.o    lib/kernel/string.c

# system setup related
$(BUILD_DIR)/sysinfo.o:	lib/kernel/sysinfo.c $(INC)
	$(CC) $(CFLAGS) $(BUILD_DIR)/sysinfo.o   lib/kernel/sysinfo.c

# interrupt related
$(BUILD_DIR)/interrupt.o:	lib/kernel/interrupt.c $(INC)
	$(CC) $(CFLAGS) $(BUILD_DIR)/interrupt.o	lib/kernel/interrupt.c
$(BUILD_DIR)/init.o:	kernel/init.c $(INC)
	$(CC) $(CFLAGS) $(BUILD_DIR)/init.o 	kernel/init.c

# timer related
$(BUILD_DIR)/timer.o:		device/timer.c 		$(INC)
	$(CC) $(CFLAGS) $(BUILD_DIR)/timer.o	  device/timer.c
#===================================================================================
$(BUILD_DIR)/print.o: lib/kernel/print.asm
	$(AS) $(ASFLAGS) $(BUILD_DIR)/print.o     lib/kernel/print.asm
$(BUILD_DIR)/kernel.o: kernel/kernel.S
	$(AS) $(ASFLAGS) $(BUILD_DIR)/kernel.o    kernel/kernel.S
#====================================================================================
# final stage for build this kernel
# ld -m elf_i386 -Ttext $(ENTRY_POINT) -e main -o kernel.bin $objs
$(BUILD_DIR)/kernel.bin: $(OBJS)
	$(LD) $(LDFLAGES) $(TARGET_BIN) $(OBJS)
#====================================================================================
# actions
# clean : remove all objects
# build : build all objects and get binary
# all   : same to build
# run   : get kernel.bin and write to disk then run bochs
# asm   : disassembly the *.bin file for trace when debugging
.PHONY : clean all run asm

clean:
	cd $(BUILD_DIR)     &&rm -f ./*.*
	cd $(BUILD_DIR)/asm &&rm -f ./*.*


build: $(BUILD_DIR)/kernel.bin

all:
	make build
	cp ./imgs/hd60M.img .
	nasm -I boot/include/ -o build/mbr.bin boot/mbr.S
	nasm -I boot/include/ -o build/loader.bin boot/loader.S
	dd if=build/mbr.bin of=./hd60M.img bs=512 count=1  conv=notrunc
	dd if=build/loader.bin  of=./hd60M.img bs=512 count=3 seek=2 conv=notrunc
	dd if=build/kernel.bin of=./hd60M.img bs=512 count=200 seek=9 conv=notrunc conv=notrunc

asm:
	make all
	objdump -D -S -h -r -z $(BUILD_DIR)/kernel.bin > $(BUILD_DIR)/asm/kernel.asm
	ndisasm -b32 $(BUILD_DIR)/mbr.bin              > $(BUILD_DIR)/asm/mbr.asm
	ndisasm -b32 $(BUILD_DIR)/loader.bin           > $(BUILD_DIR)/asm/loader.asm

run:
	make all
	bochs -f ./bochsrc.disk_nix




