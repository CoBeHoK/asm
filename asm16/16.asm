    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; ���⠥� �㬬� ����⮢ ���ᨢ�
    Cls            ; ���⪠ �࠭�
    mov bx,0       ; ��砫�� ������ ������ ���ᨢ�
    mov c�,K         ; ���稪
    mov al,0         ; 
Metka:             
    add al,y[bx]   ; al=al+�᫮ �� ���ᨢ�, ������ ���ண� � bx
    inc bx         ;
    dec c�         ;
    jnz Metka
    call Decimal
    pause          ; ��㧠
    stop           ; �⮯
   include _pp.txt
Y db 3,2,4,7       ;
K = $ - Y
end Start