    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; 
    Cls            ; ���⪠ �࠭�
    N = 2
    mov al,y+N
    mov ah,0Eh
    int 10h
    pause          ; ��㧠
    stop           ; �⮯
Y db "�ਢ��"      ;
end Start