    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; 
    Cls
    mov bx, 2
    mov al,y[bx]    ; ���⪠ �࠭�
    mov ah,0Eh
    int 10h
    pause          ; ��㧠
    stop           ; �⮯
Y db "�ਢ��"      ;
end Start