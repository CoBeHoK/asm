    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; Программа обмена символов
    Cls            ; очистка экрана
    text Y
    mov ah,0Eh
    mov al,13      ;
    int 10h        ;
    mov al,10      ;
    int 10h        ;
    mov bx,0
    mov si,K-1
    mov cx,K/2
    mov bx,0
Cycle:
    mov al,y[bx]
    mov ah,y[si]
    mov y[bx],ah
    mov y[si],al
    inc bx
    dec si
    dec cx
    jnz Cycle
Metka:
    mov ah,0Eh
    mov al,y[bx]
    int 10h        ;
    dec bx
    jnz Metka
    mov al,13      ;
    int 10h        ;
    mov al,10      ;
    int 10h        ;
    text Y
    mov al,13      ;
    int 10h        ;
    mov al,10      ;
    int 10h        ;
    pause          ; пауза
    stop           ; стоп
Y db "Привет",'$'      ;
K = $ - Y - 1
end Start