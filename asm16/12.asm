    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; 
    Cls            ; ���⪠ �࠭�
    mov bx, offset y
    mov si,2
    mov al,[bx][si]
    mov ah,0Eh
    int 10h
    pause          ; ��㧠
    stop           ; �⮯
Y db "�ਢ��"      ;
end Start