    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; печатает сумму элементов массива
    Cls            ; очистка экрана
    mov bx,0       ; начальный индекс индекс массива
    mov cх,K         ; счетчик
    mov ax,0         ; 
Metka:             
    add ax,y[bx]   ; al=al+число из массива, индекс которого в bx
    add bx,2       ;
    dec cх         ;
    jnz Metka
    call Decimal
    pause          ; пауза
    stop           ; стоп
   include _pp.txt
Y dw 3,2,4,7       ;
N = 2
K = ($ - Y)/N
end Start