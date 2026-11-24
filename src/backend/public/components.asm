printChar MACRO char
    mov AH,02h
    mov DL,char
    int 21h
ENDM

.MODEL small
.STACK
.DATA
    COND db 10d
    COND2 db 10B
.CODE
    ;description
    main PROC
        mov DX,@data
        mov DS,DX
        xor DX,DX

        mov COND,1B
        mov COND2,1B

        CWHILE:
            cmp COND,1B
            jne EXITCWHILE

            printChar '1'

            cmp SI,5d
            je SIES
            jmp NOES

            SIES:
                mov COND,0B
            NOES:
                inc SI
                jmp CWHILE
        EXITCWHILE:

            xor SI,SI

            WHILE:
                cmp COND2,1B
                jne EXITWHILE2

                printChar '0'

                cmp SI,5d
                je SI2
                jmp NOES2

                SI2:
                    mov COND2,0B
                NOES2:
                    inc SI
                    jmp WHILE
            EXITWHILE2:
        .EXIT
    main ENDP

end main