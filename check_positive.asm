.model small
.stack
.data
msg db "the greater number is  $"
.code
main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,1
   int 21h
   mov bl,al
   
   mov ah,1
   int 21h
   mov bh,al
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   mov ah,9
   lea dx,msg
   int 21h
   
   
   cmp bl,bh
   jge l1
   jmp l2
   
   
   
   l1:
   mov ah,2
   mov dl,bl
   int 21h
   jmp exit:
   
   l2:
   mov ah,2
   mov dl,bh
   int 21h
   jmp exit:
    
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
   