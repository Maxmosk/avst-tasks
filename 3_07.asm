global _start


section .data
;(--------------------------------------
        resA    db      "Yes", 10
        resNA   db      "No", 10
        charBuf dw      0
;)--------------------------------------


section .text


; return : ah
;(--------------------------------------
getchar:
        mov     eax,    3
        mov     ebx,    1
        mov     ecx,    charBuf
        mov     edx,    2
        int     80h

        mov     ah,     [charBuf]
        ret
;)--------------------------------------


;(--------------------------------------
_start:
        call    getchar
        

        ; if condtion
        cmp     ah,     'A'
        jne     else

        ; if
        mov     eax,    resA
        mov     edx,    4
        jmp     endif

        ; else
else:   mov     eax,    resNA
        mov     edx,    3

        ; endif
endif: 
        mov     ecx,    eax

        mov     eax,    4
        mov     ebx,    1
        int     80h

	mov	eax,	1
        xor     ebx,    ebx
        int     80h
;)--------------------------------------

