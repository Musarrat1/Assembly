include "emu8086.inc"

.model small
.stack 100h
.data 
.code

main proc  
    
    print "enter your 1st digit:"
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    sub bl,48
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h  
    
    print "enter your 2nd digit:" 
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl
    mov cl,al
    add cl,48
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    
    main endp
end main
    
    




