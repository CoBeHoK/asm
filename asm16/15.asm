    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; ���⠥� �㬬� ����⮢ ���ᨢ�
    Cls            ; ���⪠ �࠭�
    mov bx, offset Y ; ���� ���ᨢ�
    mov cl,K         ; ���稪
    mov al,0         ; 
Metka:    
    add al,[bx]    ; al=al+�᫮ �� �祩��, ����� ���ன � BX
    inc bx         ;
    dec cl         ;
    jnz Metka
    call Decimal
    pause          ; ��㧠
    stop           ; �⮯
   include _pp.txt
Y db 3,2,4,7       ;
K = $ - Y
end Start