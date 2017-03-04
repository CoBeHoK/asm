    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; 
    Cls
    mov bx, offset y
    add bx,2
    mov al,[bx]    ; очистка экрана
    mov ah,0Eh
    int 10h
    pause          ; пауза
    stop           ; стоп
Y db "Privet"      ;
end Start