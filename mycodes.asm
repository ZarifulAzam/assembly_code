.model small
.stack
.data
msg db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; Read a character from input
    mov ah, 1
    int 21h
    mov msg, al   ; Store the input character in 'msg'
    
    ; Set up for printing the sequence
    mov cx, 5     ; We need to print 5 characters
    mov ch, msg   ; Initialize ch with the first character to print
    mov ah, 2     ; DOS function to print character
    
level1:
    mov dl, ch    ; Load the character to print into dl
    int 21h       ; Print the character
    inc ch        ; Move to the next character in the ASCII sequence
    loop level1   ; Loop until cx reaches 0
    
    ; Exit program
    mov ah, 4Ch
    int 21h

main endp
end main
