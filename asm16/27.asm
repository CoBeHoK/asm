    .model tiny    ;  
    .code       
    org 100h       ; ࠡ�稩
    include _macro.txt     
Start:             ; ���� � �������� ���ᨬ���� ����� ��ਠ�� ���
    Cls            ; ���⪠ �࠭�
    mov bx,0
    mov cx,K
    mov ah,y[bx]
Metka:
    cmp al,y[bx]
    jnc Metka2
    mov al,y[bx]
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