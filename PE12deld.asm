.model small
.stack
.code
main proc
    mov ax, @data
    mov ds, ax

    ; clears the screen 
    mov ah, 00h 
    mov al, 03h 
    int 10h   

    ; makes the square background
    mov ah,6
    mov al,0
    mov bh,01000000b
    mov ch,0
    mov cl,0
    mov dh,24
    mov dl,79
    int 10h

    mov bh,00010000b
    mov ch,0
    mov cl,40
    mov dh,12
    mov dl,79
    int 10h

    mov bh,00010000b
    mov ch,13
    mov cl,0
    mov dh,24
    mov dl,39
    int 10h

    mov bh,01000000b
    mov ch,13
    mov cl,0
    mov dh,12
    mov dl,39
    int 10h

    ; end of code
    mov ah,4ch
    int 21h
    main endp
end main