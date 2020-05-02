	org 100

	mov ax, 0h
	mov ax, [0200h]
	mov cx, 0h
	mov cx, [0210h]

	div cx

	mov [220h], ax

	int 20h



