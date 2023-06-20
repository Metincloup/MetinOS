
[org 0x7c00]	

     	mov ah, 0x0e		;;	enter 'tty' mode
	mov bx, Text		;; 	initilazing bx
	;push bx			;;	jump to printScreen
	call printText
	jmp loop

Text:

db 'Hello, World!',0		;;	defining text


loop:
	jmp loop		;;	endless loop
%include "print.asm"

times 510- ($ - $$) db 0	;;	fill 512 byte file size
dw 0xaa55


