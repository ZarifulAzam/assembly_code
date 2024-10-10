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
   mov ch.al 
   int 21h
   mov cx,5
   mov ch,msg
   
   mov ah,2
   
   level1:
   mov dl,ch
   int 21h
   inc ch
   mov ah,2
   int 21h
   loop level1
   exit:
   mov ah, 4ch
   int 21h
   main endp
end main
   
