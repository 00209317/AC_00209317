;-------EJERCICIO 1
	org 100h


	mov	ax, 2d
	add	ax, 0d
	add	ax, 9d
	add	ax, 3d
	add	ax, 1d
	add	ax, 7d
	mov 	bx, 5d
	div 	bx

	cmp 	ax, 4d
	je  	lalupe

	int 	20h

lalupe: mov     cl, "M"
        mov     [200h], cl
        mov     cl, "e"
        mov     [201h], cl
        mov     cl, " "
        mov     [202h], cl
        mov     cl, "r"
        mov     [203h], cl
        mov     cl, "e"
        mov     [204h], cl
        mov     cl, "c"
        mov     [205h], cl
        mov     cl, "u"
        mov     [206h], cl
        mov     cl, "p"
        mov     [207h], cl
        mov     cl, "e"
        mov     [208h], cl
        mov     cl, "r"
        mov     [209h], cl
        mov     cl, "o"
        mov     [20Ah], cl



;-------EJERCICIO 2


section .text
	mov ax, 4h
	mov cx, 0h
	mov bx, 0h
	mov dx, 0d
	mov cx, 000bh
	mov bx,2h


lupi:	mov [di+210h],ax
		mul bx
		inc di
		loop lupi
section .data

;-------EJERCICIO 3
        org 100h

	    mov	ax, 1d 

	    mov	bx, 0d
	    mov	dx, 1d
	    mov	cx, 13d

        mov di, 0d

        mov [di+220h], bx
        inc di
        mov [di+220h], dx
        inc di

holi:	mov	ax, bx
	    add	ax, dx
        mov [di+220h], ax
        inc di
	    mov	bx, dx
	    mov	dx, ax

	    Loop holi

	    int	20h