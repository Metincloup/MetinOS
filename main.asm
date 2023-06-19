[org 0x7c00]	

     	mov ah, 0x0e		;;	enter 'tty' mode
	mov bx, 0		;; 	initilazing bx
	jmp printScreen		;;	jump to printScreen
	jmp loop

Text:

db 'Hello, World!',0		;;	defining text

printScreen:
				;;	bx used as index here
	mov al,[Text+bx]	;;	moving Text[bx] to al 
	int 0x10		;; 	interrupt 0x10 to print char
	inc bx			;;	incrementing bx (index)
	cmp al , 0		;; 	compare if al equals to null byte char
	jne printScreen		;;	if it is not equal loop

loop:
	jmp loop		;;	endless loop


times 510- ($ - $$) db 0	;;	fill 512 byte file size
dw 0xaa55


