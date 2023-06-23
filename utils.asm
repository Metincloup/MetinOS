%define enterKey 0xD
%define escKey 0x1B
%define backspaceKey 0x8

printText: 
	mov ah, 0x0e
	mov al, [bx]
	int 0x10
	inc bx
	cmp al, 0
	jne printText

	ret

readChar:
	mov ah, 0x01	
	int 0x16		
	jz loop	
	xor ah, ah
	int 0x16
	ret

printChar:
	call checkChar
	mov ah, 0x0e
	int 0x10
	ret
	
readAndPrintChar:
	call readChar
	call printChar
	ret

checkChar:
	cmp al, enterKey
	je entr
	cmp al, backspaceKey
	je backSpace
	ret
entr:
	
	call getCursor
	inc dh
	call setCursor
	ret
backSpace:
	mov al, 0
	call printCharToCursor
	call getCursor
	dec dl
	dec dl
	call setCursor
	
	ret
getCursor:
	mov ah, 0x03
	mov bh, 0
	int 0x10
	ret
setCursor:
	
	mov ah, 0x02
	mov bh, 0
	int 10h
	ret

clearScreen:
	mov ah, 0x00
	mov ax, 3
	int 0x10
	ret
printCharToCursor:
	mov ah, 0xA
	mov bx, 0
	mov cx,1
	ret



