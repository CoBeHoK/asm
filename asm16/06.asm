    .model tiny    ;  
    .code       
    org 100h       ; 
Start:             ; 
    mov BX,offset Y; в регистре BX находится индекс элемента массива
    mov CL,LEN
Metka:              
    mov AL,[BX]   ; 
    mov AH,0Eh
    int 10h
    inc BX         ;
    dec CL
    jnz Metka      ;
    ret            ; 
Y db "Privet"      ;
LEN = $ - Y        ;  $ - текущее состояние счетчика команда
end Start