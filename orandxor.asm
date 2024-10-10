  .model small
  .stack 100h
  .data
  a db  'for and', 10,13, '$'
  b db   10,13, 'for or', 10,13, '$'
  c db   10,13, 'for x-or', 10,13, '$'  
  .code
  main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,9
   lea dx,a
   int 21h
   
   mov bl,100b
   and bl,111b
   add bl,48
   
   mov ah,2
   mov dl,bl
   int 21h
   
   OR1:
   mov ah,9
   lea dx,b
   int 21h
   
   mov bl,100b
   or bl,111b 
   add bl,48
   
   mov ah,2
   mov dl,bl
   int 21h
   
   XOR1:
   mov ah,9
   lea dx,c
   int 21h
   
   mov bl,100b
   xor bl,111b
   add bl,48
   
   mov ah,2
   mov dl,bl
   int 21h
   
   exit:
   mov ah,4ch
   int 21h
   
   main endp
  end main