    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; �ணࠬ�� ���� ᫮�� � ���⭮� ���浪�
    Cls            ; ���⪠ �࠭�
    mov bx, offset Y+K-1
    mov cx,K
Metka:
    mov al,[bx]
    mov ah,0Eh
    int 10h        ;
    dec bx
    dec cx
    jnz Metka
    pause          ; ��㧠
    stop           ; �⮯
Y db "�ਢ��"      ;
K = $ - Y
end Start