	org 100h

	mov ax, 0d
	mov ax, [0200h]
	mov bx, 0d
	mov bx, [0210h]

	div bx

	mov [0220h], ax

	int 20h