cp /media/sf_nix_share/EOS_SETUP/hd60M.img . && nasm -I boot/include/ -o mbr.bin kernel/mbr.S && dd if=./mbr.bin of=./hd60M.img bs=512 count=1  conv=notrunc && nasm -I boot/include/ -o loader.bin boot/loader.S && dd if=./loader.bin  of=./hd60M.img bs=512 count=3 seek=2 conv=notrunc &&gcc -c -o kernel/main.o  kernel/main.c &&  ld kernel/main.o -Ttext 0xc0001500 -e main -o kernel/kernel.bin && dd if=kernel/kernel.bin of=./hd60M.img bs=512 count=200 seek=9 conv=notrunc conv=notrunc
