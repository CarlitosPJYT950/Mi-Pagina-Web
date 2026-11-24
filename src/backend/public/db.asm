.MODEL small
.STACK
.DATA
    char db ?
.CODE
    ;description
    main PROC
        mov AH,1h
        int 21h
        
        mov char,al
        
        mov ah,2h
        mov dl,char
        int 21h
        
        .EXIT
    main ENDP

end main