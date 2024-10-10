.model small
.stack
.data

msg db 'greater than$'
.code

main proc
   mov ax, @data
   mov ax,@data
   mov ah,1
   int 21h
   mov bl,ah
   
   cmp bh,bl
   jg printg
   jl printl
   
   printl:
   
   mov ah,2
   mov dl,2
   int 21h
   mov dl,13
   int 21h
   
   mov ah,9
   lea dx,msg
   int 21h
   jmp end
    main endp
end main