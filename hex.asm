org 100h
.model small
.stack 100h
.data
m db "enter a character: $"
.code
main proc 
    mov ax, @data
    mov dx,ax
    
    mov ah,9
    lea dx, m
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al 
    sub bl,17
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h 
    
    mov dl,49
    mov ah,2
    int 21h 
    
  
    
    mov dl,bl
    mov ah,2
    int 21h
    
   main endp
end main
    




