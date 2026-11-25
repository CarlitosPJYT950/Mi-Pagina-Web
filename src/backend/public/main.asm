.MODEL small
.STACK
.DATA
    msg db 'Hello World!',10,'$'
    Char db 'Ingrese el primer caracter:',10,'$'
    Char2 db 10,'Ingrese el segundo caracter:',10,' $'
    resultado db 10,'Los datos ingresados son:',10,'$'
    fin db 'FIN DEL PROGRAMA $'
.CODE
    ;description
    main PROC
        mov DX,@data
        mov DS,DX
        xor DX,DX

        mov DX,offset msg
        mov AH,9h
        int 21h

        mov DX,offset Char
        mov AH,9h
        int 21h

        mov AH,1h
        int 21h

        mov DX,offset Char2
        mov AH,9h
        int 21h

        mov AH,1h
        int 21h

        mov DX,offset resultado
        mov AH,9h
        int 21h

        mov AH,2h
        mov DL,'a'
        int 21h

        mov AH,2h
        mov DL,'b'
        int 21h

        mov DX,offset fin
        mov AH,9h
        int 21h

        .EXIT 
    main ENDP

end main