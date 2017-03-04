    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; 
    Cls            ; очистка экрана
    mov bx, offset Y
    mov cx,K
Metka:
    mov al,[bx]
    mov ah,0Eh
    int 10h        ;
    mov al,13      ;
    int 10h        ;
    mov al,10      ;
    int 10h        ;
    inc bx
    dec cx
    jnz Metka
    pause          ; пауза
    stop           ; стоп
Y db "Привет"      ;
K = $ - Y
end Start