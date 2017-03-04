    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; нахождение количества элементов в массиве от 2 до 5
    Cls            ; очистка экрана
    mov bx,offset Y
    mov cx,K
    mov al,0
Metka:
    cmp cx,0
    jz Metka2
    inc bx
    cmp ah,2
    jb Metka
    mov ah,[bx]
    cmp ah,5
    ja Metka
    inc al
    jmp Metka
Metka2:
    call Decimal
    pause          ; пауза
    stop           ; стоп
    ret
Y db 2,5,7,9,4,3,1 ;
K = $ - Y
include _pp.txt
end Start