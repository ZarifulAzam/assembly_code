.model small
.stack
.data
;input db ?
msg1 db "positive $"
msg2 db "negative$"
.code
main proc
   mov ax,@data
   mov ds,ax
   
   ;mov ah,1
   ;int 21h
   ;mov bl,al
   mov bx,-10
   
   cmp bx,0
   jge l1
   jmp l2
   
   l1:
   mov ah,9
   lea dx,msg1
   int 21h
   jmp exit:
   
   l2:
   mov ah,9
   lea dx,msg2
   int 21h
   jmp exit:
   exit:
   mov ah,4ch
   int 21h
   main endp
end main