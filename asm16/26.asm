    .model tiny    ;  
    .code       
    org 100h       ; ࠡ�稩
    include _macro.txt     
Start:             ; ��宦����� ������⢠ ����⮢ � ���ᨢ� �� 2 �� 5
    Cls            ; ���⪠ �࠭�
    mov bx,offset Y
    mov cx,K
    mov al,0
Metka:
    mov ah,[bx]
    cmp ah,2
    jb Metka2
    cmp ah,5
    ja Metka2
    inc al
Metka2:
    inc bx
    dec cx
    jnz Metka
    call Decimal
    pause          ; ��㧠
    stop           ; �⮯
    ret
Y db 2,5,7,9,4,3,1 ;
K = $ - Y
include _pp.txt
end Start