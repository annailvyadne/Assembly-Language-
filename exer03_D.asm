.model small
.stack
.data
	strg	db	'Deldacan$'
	row		db	12
	col		db	0
.code
main	proc
		mov ax, @data
		mov ds, ax
		
		mov cx,73

again:	push cx	
		mov ah,6
		mov al,0
		mov bh,01011000b
		mov ch,0
		mov cl,0
		mov dh,24
		mov dl,79
		int 10h

		mov bh,01000000b
		mov ch,0
		mov cl,40
		mov dh,12
		mov dl,79
		int 10h

		mov bh,01000000b
		mov ch,13
		mov cl,0
		mov dh,24
		mov dl,39
		int 10h

		mov ah,2
		mov bh,0
		mov dh,row	;row
		mov dl,col	;col
		int 10h 

		mov ah,9
		mov dx,offset strg
		int 21h
		
		inc col
		
		mov cx,10
y:		push cx
		mov cx,0ffffh
x:		loop x
		pop cx
		loop y
		
		pop cx
		loop again
		
		mov ah,4ch
		int 21h
main	endp
end		main