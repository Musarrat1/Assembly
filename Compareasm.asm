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
    
    cmp bl,cl
    jg l1 
    jmp exit
    
    l1:
    cmp bl,bh
    jg l2
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    l2:
    mov ah,2
    mov dl,bl
    int 21h 
    jmp exit
    
    l3:
    cmp bh,cl
    jg l4 
    mov ah,2
    mov dl,bh
    int 21h 
    jmp exit
    
    l4:
    mov ah,2
    mov dl,cl
    int 21h  
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
  end main



