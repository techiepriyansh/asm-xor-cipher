ASM = asm_xor

all:
	nasm -f elf $(ASM).asm
	ld -m elf_i386 $(ASM).o -o $(ASM)

clean:
	rm -f $(ASM)
	rm -f $(ASM).o