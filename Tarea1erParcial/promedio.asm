	org 100h

section .text
	mov	cx, 0
	mov	ax, 0
	mov bx, 10d
	mov	cx, [array]
	mov	[0200h], cx
	add	ax, cx
	mov	cx, [array+2]
	mov	[0201h], cx
	add	ax, cx
	mov	cx, [array+4]
	mov	[0202h], cx
	add	ax, cx
	mov	cx, [array+6]
	mov	[0203h], cx
	add	ax, cx
	mov	cx, [array+8]
	mov	[0204h], cx
	add	ax, cx
	mov	cx, [array+10]
	mov	[0205h], cx
	add	ax, cx
	mov	cx, [array+12]
	mov	[0206h], cx
	add	ax, cx
	mov	cx, [array+14]
	mov	[0207h], cx
	add	ax, cx
	mov	cx, [array+16]
	mov	[0208h], cx
	add	ax, cx
	mov	cx, [array+18]
	mov	[0209h], cx
	add	ax, cx

	div	bx

	mov	[210h], ax

	int 20h

section .data

array	dw	2, 10, 18, 22, 30, 38, 42, 48, 49, 50

