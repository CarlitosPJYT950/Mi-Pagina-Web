printChar MACRO char
    mov AH,02h
    mov DL,char
    int 21h
ENDM

.MODEL
.STACK
.DATA
.CODE
    ;description
    main PROC

        WHILE:
            inc SI

            cmp SI,3d
            je SIES
            jmp NOES

            SIES:
                printChar 'a'

                jmp WHILE
            NOES:
                printChar 'z'

                cmp SI,4d
                je SIES2
                jmp NOES2
            SIES2:
                jmp EXITWHILE
            NOES2:
                jmp WHILE
        EXITWHILE:

        .EXIT
    main ENDP

end main