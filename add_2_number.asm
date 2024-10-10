.model small
.stack
.data
msg db "enter any two number$"
msg2 db "total = $"
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
   
   mov ah,1
   int 21h
   mov cl,al
   
   
   add bl,bh
   sub bl,48
   add bl,cl
   sub bl,48
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   mov ah,9
   lea dx,msg2
   int 21h
   
   mov ah,2
   mov dl,bl
   int 21h
   
   
   
   
   exit:
   mov ah,4ch
   main endp
end main