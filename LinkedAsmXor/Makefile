ASM = asm_xor
C = main

all:
	nasm -f elf $(ASM).asm
	gcc -m32 $(C).c $(ASM).o -o $(C)

clean:
	rm $(ASM).o
	rm $(C)