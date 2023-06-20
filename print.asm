printText:

	;pop bx 
	mov al, [bx]
	int 0x10
	inc bx
	cmp al, 0
	jne printText
	ret

