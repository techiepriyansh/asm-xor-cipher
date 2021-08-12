%include 'utils.asm'

SECTION .bss
input_bytes: resb 255
key_value: resb 255
output: resb 255

SECTION .text
global _start

_start:
	readinput input_bytes, 255
	readinput key_value, 255

	call singlechar_xor

	writeoutput output, 255
	call writeLF

	call quit

singlechar_xor:
	push edx
	push ecx
	push ebx
	push eax

	mov eax, 100          ; eax contains the number of bytes left to process; max bytes processed will be 100
	mov ebx, input_bytes  ; ebx contains input_bytes pointer
	mov ecx, output       ; ecx contains output pointer

loopStart:
	cmp byte [ebx], 0x00  ; compare the value at input_bytes pointer with null byte
	jz loopEnd            ; break if equal

	cmp byte [ebx], 0x0A  ; compare the value at output pointer with '\n'
	jz loopEnd            ; break if equal

	cmp eax, 0            ; compare the value of number of bytes left to process with 0
	jz loopEnd            ; break if equal

	mov edx, [ebx]        ; store the (ascii) value at input_bytes pointer into edx
	xor edx, [key_value]  ; xor it with the (ascii) value at key_value pointer
	mov [ecx], edx        ; store the result in address pointed by output pointer

	dec eax               ; decrement the number of bytes left to process
	inc ebx               ; increase the input_bytes pointer
	inc ecx               ; increase the output pointer

	jmp loopStart

loopEnd:
	pop eax
	pop ebx
	pop ecx
	pop edx
	ret
