	org 	100h

section 	.text

		call 	texto	
		call 	cursor
		call 	phrase
		call    phrase2
		call    phrase3
		call	kbwait

		int 	20h

texto:	mov 	ah, 00h
		mov		al, 03h
		int 	10h
		ret

cursor: mov	ah, 01h
		mov 	ch, 00000000b
		mov 	cl, 00001110b
				;   IRGB
		int 	10h
		ret

w_char:	mov 	ah, 09h
		mov 	al, cl
		mov 	bh, 0h
		mov 	bl, 00001111b
		mov 	cx, 1h
		int 	10h
		ret

kbwait: mov 	ax, 0000h
		int 	16h
		ret

m_cursr:mov 	ah, 02h
		mov 	dx, di  ; columna
		mov 	dh, 3d ; fila
		mov 	bh, 0h
		int 	10h
		ret

m_cursr2:mov 	ah, 02h
		mov 	dx, di  ; columna
		mov 	dh, 12d ; fila
		mov 	bh, 0h
		int 	10h
		ret
		
m_cursr3:mov 	ah, 02h
		mov 	dx, di  ; columna
		mov 	dh, 20d ; fila
		mov 	bh, 0h
		int 	10h
		ret

phrase:	mov 	di, 9d
lupi:	mov 	cl, [msg+di-9d]
		call    m_cursr
		call 	w_char
		inc		di
		cmp 	di, len
		jb		lupi
		ret

phrase2:mov 	di, 29d
lupi2:	mov 	cl, [msg2+di-29d]
		call    m_cursr2
		call 	w_char
		inc		di
		cmp 	di, len2
		jb		lupi2
		ret

phrase3:mov 	di, 15d
lupi3:	mov 	cl, [msg3+di-15d]
		call    m_cursr3
		call 	w_char
		inc		di
		cmp 	di, len3
		jb		lupi3
		ret

section .data
msg	    db 	"Van dos soldados en una moto... "
len 	equ	$-msg+9d
msg2	db 	"y no se cae ninguno porque van soldados"
len2 	equ	$-msg2+29d
msg3	db 	"jajaja xD que mal chiste la dvd "
len3 	equ	$-msg3+15d