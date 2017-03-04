    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; Программа печати слова в обратном порядке
    Cls            ; очистка экрана
    mov bx, offset Y+K-1
    mov cx,K
Metka:
    mov al,[bx]
    mov ah,0Eh
    int 10h        ;
    dec bx
    dec cx
    jnz Metka
    pause          ; пауза
    stop           ; стоп
Y db "Привет"      ;
K = $ - Y
end Start