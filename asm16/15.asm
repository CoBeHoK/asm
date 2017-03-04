    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; печатает сумму элементов массива
    Cls            ; очистка экрана
    mov bx, offset Y ; адрес массива
    mov cl,K         ; счетчик
    mov al,0         ; 
Metka:    
    add al,[bx]    ; al=al+число из ячейки, номер которой в BX
    inc bx         ;
    dec cl         ;
    jnz Metka
    call Decimal
    pause          ; пауза
    stop           ; стоп
   include _pp.txt
Y db 3,2,4,7       ;
K = $ - Y
end Start