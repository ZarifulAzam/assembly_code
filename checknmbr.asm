.model small
.stack 100h
.data
msg db 10,13,'Number $'
msg1 db 10,13,'Not Number $'
.code

main proc
   mov ax,@data
   mov ds,ax
   int 21h
   
   mov ah,1
   int 21h
   mov bl,al
   int 21h
   
   sub bl,48
   cmp bl,0
   
   jge number:
   jl not_number:
   
   number:
   cmp bl,9
   jle print:
   jg not_number:
   
   print:
   mov ah,9
   lea dx,msg
   int 21h
   
   not_number:
   mov ah,9
   lea dx,msg1
   int 21h
   
   
    
    end:
    mov ah,4ch
    int 21h
    main endp
end main