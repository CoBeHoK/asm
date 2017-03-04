    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; Программа печати строки без пробелов каждое слово с новой строки
    Cls            ; очистка экрана
    mov bx, offset Y
    mov ah,0Eh
Metka:
    mov al,[bx]
    inc bx
    cmp al,'$'
    jz Metka3
    cmp al,' '
    jnz Metka2
    mov al,13
    int 10h
    mov al,10
Metka2:
    int 10h
    jmp Metka
Metka3:
    pause          ; пауза
    stop           ; стоп
Y db "Привет Вася из Москвы",'$'      ;
end Start