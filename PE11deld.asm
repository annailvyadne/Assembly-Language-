.model small
.stack
.code

main proc
        
    mov cx,10
    mov ah,2
    mov dl,'0'
    
L1:    int 21h
    push cx
    inc dl
    loop L1
    mov dl,10
    mov ah,2
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    
    mov dh,8
    mov cx,9
    mov ah,2
    mov dl,'0'
    
L2:    int 21h
    push cx
    inc dl
    loop L2
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    int 21h
    
    mov cx,8
    mov ah,2
    mov dl,'0'
    
L3:    int 21h
    push cx
    inc dl
    loop L3
    mov ah,2
    mov dl,0ah
    int 21h

    mov ah,2
    mov dl,32
    int 21h
    int 21h
    int 21h
    
    mov cx,7
    mov ah,2
    mov dl,'0'
    
L4:    int 21h
    push cx
    inc dl
    loop L4
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov cx,6
    mov ah,2
    mov dl,'0'
    
L5:    int 21h
    push cx
    inc dl
    loop L5
    mov ah,2
    mov dl,0ah
    int 21h

    mov ah,2
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov cx,5
    mov ah,2
    mov dl,'0'
    
L6:    int 21h
    push cx
    inc dl
    loop L6
    mov ah,2
    mov dl,0ah
    int 21h

    mov ah,2
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov cx,4
    mov ah,2
    mov dl,'0'
    
L7:    int 21h
    push cx
    inc dl
    loop L7
    mov ah,2
    mov dl,0ah
    int 21h

    mov ah,2
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov cx,3
    mov ah,2
    mov dl,'0'
    
L8:    int 21h
    push cx
    inc dl
    loop L8
    mov ah,2
    mov dl,0ah
    int 21h

    mov ah,2
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov cx,2
    mov ah,2
    mov dl,'0'
    
L9:    int 21h
    push cx
    inc dl
    loop L9
    mov ah,2
    mov dl,0ah
    int 21h

    mov ah,2
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov cx,1
    mov ah,2
    mov dl,'0'
    
L10:int 21h
    push cx
    inc dl
    loop L10
    mov ah,2
    mov dl,0ah
    int 21h

    mov ah,2
    mov dl,32
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
        
    mov ah,4ch
    int 21h
    
main endp
end main