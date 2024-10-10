.model small
.stack
.data
msg db "enter any two number$"

.code
main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,9
   lea dx,msg
   int 21h
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    sub bl,bh
    add bl,48
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
   