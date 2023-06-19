[org 0x7c00]	
	mov ah, 0x0e
	mov bx, 0
	jmp printhello
	
	jmp loop

		

	

hello:
db 'Hello, World!',0

printhello:


	
	mov al,[hello+bx]
	int 0x10
	inc bx
	cmp al , 0
	jne printhello

loop:
	jmp loop


times 510- ($ - $$) db 0 
dw 0xaa55


