    .model tiny    ;  
    .code       
    org 100h       ; 
Start:             ; 
    mov AL,'A'
Metka:              
    mov AH,0Eh
    int 10h
    inc AL
    cmp AL,'Z'
    jc Metka       ;
    jz Metka
    ret            ; 
end Start