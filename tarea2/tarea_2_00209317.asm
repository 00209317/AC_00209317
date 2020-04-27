;-------EJERCICIO 1
	org 100h


	add	ax, 0d
	add	ax, 9d
	add	ax, 3d
	add	ax, 1d
	add	ax, 7d
	mov 	bx, 5d
	div 	bx

	cmp 	ax, 4d
	je  	lalupe


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
        mov ax, 2d
        mov cx, 2d
        
xd:  
        mul cx
        mov [si+210h], ax
        inc si ; 
        cmp ax, 256d 
        jb xd

equisde:  
        mul cx
        inc si
        mov [si+210h], ax
        inc si
        cmp si, 14d 
        jb equisde

;-------EJERCICIO 3
	mov	bx, 0d
	mov	dx, 1d
        mov	cx, 13d

        mov     di, 0d

        mov     [di+220h], bx
        inc     di
        mov     [di+220h], dx
        inc     di

holi:	mov	ax, bx
	add	ax, dx
        mov     [di+220h], ax
        inc     di
	mov	bx, dx
	mov	dx, ax

	Loop holi

	int	20h