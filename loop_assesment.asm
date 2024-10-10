.model small
.stack
.data
msg db ?

.code
main proc
   mov ah, l
   int 21h
   mov bh,al
   
   int 21h
   mov bl,al
   
   subbl,bh
   addbl,l
   mov cl,bl
   mov ch,0
   mov ah,2
   
   level1:
   mov dl, bh
   int 21h
   inc bh
   loop level1
   exit:
   mov ah, 4ch
   main endp
end main
