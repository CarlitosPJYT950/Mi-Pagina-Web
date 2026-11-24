.MODEL small
.STACK
.DATA
msg db 'Hello World!$'
.CODE
    ;description
    main PROC
        mov DX,@data
        mov DS,DX
        xor DX,DX

        mov DX,offset msg
        mov AH,9h
        int 21h

        .EXIT
        
    main ENDP

end main