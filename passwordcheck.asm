.model small
.stack 100h
.data

a db 'enter your pass',10,13, '$'
pass db 'zarif$'
pass1 dw 5

b db 'correct pass', 10,13, '$'
c db 'wrong pass', 10,13, '$'
.code
main proc
   mov ax,@data
   mov ds,ax
   
   mov bx,offset pass
   mov cx,pass1
   
   mov ah,9
   lea dx,a
   int 21h
   
   level1:
   mov ah,8
   int 21h
   
   cmp al,[bx]
   jne level2
   inc bx
   loop level1
   
   mov ah,9
   lea dx,b
   int 21h
   
   jmp exit
   
   
   level2:
   mov ah,9
   lea dx,c
   int 21h 
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
   
   
   
   
   
   