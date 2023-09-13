binary:
	nasm -f bin src/bootloader.asm -o bin/bootloader.bin
	nasm -f bin src/main.asm -o bin/kernel.bin
	cat bin/bootloader.bin bin/kernel.bin > bin/neimenovanios.bin

floppy:
	nasm -f bin src/bootloader.asm -o bin/bootloader.bin
	nasm -f bin src/main.asm -o bin/kernel.bin
	cat bin/bootloader.bin bin/kernel.bin > bin/neimenovanios.bin
	dd if=/dev/zero of=bin/floppy.img bs=512 count=2880
	dd if=bin/neimenovanios.bin of=bin/floppy.img conv=notrunc

usb:
	nasm -f bin src/bootloader.asm -o bin/bootloader.bin
	nasm -f bin src/main.asm -o bin/kernel.bin
	cat bin/bootloader.bin bin/kernel.bin > bin/neimenovanios.bin
	dd if=bin/neimenovanios.bin of=/dev/sdb bs=512
