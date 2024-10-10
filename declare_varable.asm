.model small
.stack
.data ;variable declaration 
string db "input$"
message1 db 2
message2 db ?

.code
main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,9
   lea dx,string
   int 21h
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
            
            
   mov ah,1
   int 21h
   mov message2,al
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   
   mov ah,2
   mov dl,message1
   add dl,48
   int 21h
   
   mov ah,2
   mov dl,message2
   int 21h
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main