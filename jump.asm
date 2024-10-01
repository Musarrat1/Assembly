org 100h
.model small
.stack 100h
.data
a equ "5"
b db 4
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,a
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
     mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    mov b,al
    
     mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
      
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main



    




