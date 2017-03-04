    .model tiny    ;  
    .code       
    org 100h       ; 
Start:             ; 
    mov AL,'A'
    mov CL,26
Metka:              
    mov AH,0Eh
    int 10h
    inc AL
    dec CL
    cmp CL,0
    jnz Metka      ;
    ret            ; 
end Start