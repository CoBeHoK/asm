    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; 
    Cls            ; очистка экрана
    N = 2
    mov al,y+N
    mov ah,0Eh
    int 10h
    pause          ; пауза
    stop           ; стоп
Y db "Привет"      ;
end Start