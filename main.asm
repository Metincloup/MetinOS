[bits 16]
[org 0x7c00]


     	call init
	mov bx, Text		;; 	initilazing bx	
	call printText 		;;	call prinText function
	jmp loop

Text:

db 'Hello, World!',0		;;	defining text

init:
	call clearScreen
	ret

loop:
	hlt
	
	call readAndPrintChar
	
	jmp loop		;;	endless loop

%include "utils.asm"

times 510- ($ - $$) db 0	;;	fill 512 byte file size
dw 0xaa55


