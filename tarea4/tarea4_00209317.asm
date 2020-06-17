org 	100h

section .text

        call    texto
        mov     dx, msg
        call    w_strng

        xor 	si, si 	
lupi:	call 	kb
        mov     cl, 30h
        sub     al, cl
        mov	[200h+si], al
        inc 	si
        cmp 	si, 5h
        je	show
        jmp 	lupi
        int     20h

show:	call    texto
        call    calificacion
        call 	w_strng
        call    res
        call 	kb	
        int 	20h


texto:	mov 	ah, 00h
        mov	    al, 03h
        int 	10h
        ret

res:    cmp     al, 1d
        je      word1
        cmp     al, 2d
        je      word2
        cmp     al, 3d
        je      word3
        cmp     al, 4d
        je      word4
        cmp     al, 5d
        je      word5
        cmp     al, 6d
        je      word6
        cmp     al, 7d
        je      word7
        cmp     al, 8d
        je      word8
        cmp     al, 9d
        je      word9
        cmp     al, 10d
        je      word10
        ret

word1:mov     dx, msg1
        call    w_strng
        int     20h

word2:mov     dx, msg2
        call    w_strng
        int     20h

word3:mov     dx, msg3
        call    w_strng
        int     20h

word4:mov     dx, msg4
        call    w_strng
        int     20h

word5:mov     dx, msg5
        call    w_strng
        int     20h

word6:mov     dx, msg6
        call    w_strng
        int     20h

word7:mov     dx, msg7
        call    w_strng
        int     20h

word8:mov     dx, msg8
        call    w_strng
        int     20h

word9:mov     dx, msg9
        call    w_strng
        int     20h

word10:mov    dx, msg10
        call    w_strng
        int     20h


calificacion:mov     al, [200h]
        add     al, [201h]
        add     al, [202h]
        add     al, [203h]
        add     al, [204h]
        mov     cl, 5h
        mov     [210h], al
        mov     [211h], cl
        div     cl
        mov     [212h], al
        ret

w_strng:mov	ah, 09h
	int 	21h
	ret

kb: 	mov     ah, 1h
        int 	21h
        ret

section .data
msg 	db 	"Ingrese los ultimos 5 digitos de su carnet.  $"
msg1    db      "Solo necesito el 0, dame una F$"
msg2    db      "Aun se pasa (crees xD)$"
msg3    db      "Hay salud (sin COVID hay vida)$"
msg4    db      "Me recupero (del dano que me hizo ella)$"
msg5    db      "En el segundo (siempre la dejas XD)$"
msg6    db      "Peor es nada (soy nada sin ella </3)$"
msg7    db      "Muy bien (la soka)$"
msg8    db      "Colocho (los tiene xDDD)$"
msg9    db      "Siempre me esfuerzo (pero siempre la dejo)$"
msg10   db      "Perfecto solo Dios (Amen hermanos Dios bendiga)$"