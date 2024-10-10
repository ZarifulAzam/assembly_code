.model smal
.stack
.data
number1 db ?
number2 db ?

.code
main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,1
   int 21h
   mov number1,al
   
   mov ah,1
   int 21h
   mov number2,al
   
   mov al,number1
   add al,number2
   sub al,48
   
   mov ah,2
   mov dl,al
   int 21h
   
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main