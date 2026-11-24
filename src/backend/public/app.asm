printChar MACRO char
    mov AH,02h
    mov DL,char
    int 21h
ENDM

.MODEL small
.STACK
.DATA
.CODE
    ;description
    main PROC

        CFOR:
            cmp SI,5d
            je SALIRFOR

            printChar '1'

            inc SI
            jmp CFOR

        SALIRFOR:

        .EXIT
    main ENDP

end main