org 100h
.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov cl,al
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    cmp bl,cl
    jg l1
    cmp cl,bh
    jg l3 
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    l1:
    cmp bl,bh
    jg l2
    jmp exit
    
    l2:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit 
    
    l3:
    mov ah,2
    mov dl,cl
    int 21h 
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main