.model small
.stack
.data
msg db ?
.code

main proc
   mov ax,@data
   mov ds, ax
   
   mov ah,1
   int 21h
   mov bh,al
   mov msg,bh
   
   int 21h
   mov ch,al
   
   add ch,msg
   sub ch,48
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   mov dl,ch
   int 21h
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main