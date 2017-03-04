    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; 
    Cls            ; очистка экрана
    mov bx, offset y
    mov si,2
    mov al,[bx][si]
    mov ah,0Eh
    int 10h
    pause          ; пауза
    stop           ; стоп
Y db "Привет"      ;
end Start