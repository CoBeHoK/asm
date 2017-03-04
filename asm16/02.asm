    .model tiny    ;  
    .code       
    org 100h       ; 
Start:             ; 
    mov BX,0       ; в регистре BX находится индекс элемента массива
Metka:              
    mov AL,Y[BX]   ; 
    mov AH,0Eh     ;
    int 10h        ;
    inc BX         ;
    cmp AL,0       ;
    jnz Metka      ;
    ret            ; 
Y db "Privet",0    ;
end Start