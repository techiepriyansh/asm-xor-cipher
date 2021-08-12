ASM = asm_xor
C = main

all:
	nasm -f elf $(ASM).asm
	ar rcs bin/lib$(ASM).a $(ASM).o

	gcc -m32 -c $(C).c -o $(C).o

	gcc -m32 $(C).o -Lbin -l$(ASM) -o $(C) 
# 	gcc -m32 $(C).o -Lbin -l:lib$(ASM).a -o $(C) # if need to use the fully quantified name of the library

	rm -f *.o

clean:
	rm -f bin/lib$(ASM).a
	rm -f $(C)
