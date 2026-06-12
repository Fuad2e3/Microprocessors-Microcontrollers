.DATA
    ms1 DB 'Enter 1st number: $'
    ms2 DB 'Enter 2nd number: $'
    result DB 'The result: $'

.CODE

START:
    mov ax, @DATA
    mov ds, ax

    ; Show prompt 1
    mov dx, offset ms1
    mov ah, 09h
    int 21h

    ; Input first character
    mov ah, 01h
    int 21h
    sub al, 48    ; Convert ASCII to integer
    mov bl, al    ; Store in BL

    CALL newLine

    ; Show prompt 2
    mov dx, offset ms2
    mov ah, 09h
    int 21h

    ; Input second character
    mov ah, 01h
    int 21h
    sub al, 48    ; Convert ASCII to integer

    ; Multiplication
    mul bl        ; AL = AL * BL (Result in AX)
    add al, 48    ; Convert result to ASCII
    mov bl, al    ; Store result in BL

    CALL newLine

    ; Show result message
    mov dx, offset result
    mov ah, 09h
    int 21h

    ; Show value of BL
    mov ah, 02h
    mov dl, bl
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h

newLine:
    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h
    ret

END START
