    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; печатает сумму элементов массива
    Cls            ; очистка экрана
    mov bx,0       ; начальный индекс индекс массива
    mov cх,K         ; счетчик
    mov al,0         ; 
Metka:             
    add al,y[bx]   ; al=al+число из массива, индекс которого в bx
    inc bx         ;
    dec cх         ;
    jnz Metka
    call Decimal
    pause          ; пауза
    stop           ; стоп
   include _pp.txt
Y db 3,2,4,7       ;
K = $ - Y
end Start