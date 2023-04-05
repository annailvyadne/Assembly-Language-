.model small
.stack
.code
main	proc
	mov cx,3
	mov ah,2
	mov dl,'A'
let:	int 21h
	push dx
	push cx
	mov cx,3
	mov dl,'1'
num:	int 21h
	inc dl
	loop num	
	mov dx,'*'
	int 21h
	pop cx
	pop dx
	add dl,1
	loop let
	mov cx,5
	mov dl,0ah
	int 21h
	mov dl,0ah
	mov dl,'X'
	mov bl,1
spa:	push cx
	push dx
	mov cx,bx
	mov dl,0ah
	int 21h
	mov dl,0dh
	pop dx
xxx:	int 21h
	loop xxx
	pop cx
	add bl,1
	loop spa
	mov ah,4ch
	int 21h
main	endp
end	main