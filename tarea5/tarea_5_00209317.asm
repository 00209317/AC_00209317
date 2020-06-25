  
org 	100h

section .text

	call 	grafico	; Llamada a iniciar modo grafico 13h

	xor 	di, di   ; mov di, 0h
lupi:	mov 	cx, 100d ; Columna 
	add	cx, di	 ; Offset
	mov	dx, 150d ; Fila
	call 	pixel
	inc 	di
	cmp 	di, 100d
	jne 	lupi

	xor 	di, di   ; mov di, 0h
lupi2:	mov 	cx, 100d ; Columna 
	add	cx, di	 ; Offset
	mov	dx, 50d ; Fila
	call 	pixel
	inc 	di
	cmp 	di, 25d
	jne 	lupi2

	xor 	di, di   ; mov di, 0h
lupi_3:	mov 	cx, 100d ; Columna 
	mov	dx, 50d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 100d
	jne 	lupi_3

	xor 	di, di   ; mov di, 0h
lupi_4:	mov 	cx, 125d ; Columna 
	mov	dx, 50d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 75d
	jne 	lupi_4


	call 	kb	 ; Utilizamos espera de alguna tecla

	int 	20h

grafico:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1010b
	int 	10h
	ret

kb: 	mov	ah, 00h
	int 	16h
	ret

section .data