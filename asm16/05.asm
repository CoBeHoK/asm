    .model tiny    ;  
    .code       
    org 100h       ; 
    include abc.txt
Start:             ; 
    mov BX,0       ; в регистре BX находится индекс элемента массива
Metka:              
    mov AL,Y[BX]   ; 
    PRINT
    inc BX         ;
    cmp AL,0       ;
    jnz Metka      ;
    ret            ; 
Y db "Privet",0    ;
end Start