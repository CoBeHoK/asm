    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; ���⠥� �㬬� ����⮢ ���ᨢ�
    Cls            ; ���⪠ �࠭�
    mov bx,0       ; ��砫�� ������ ������ ���ᨢ�
    mov c�,K         ; ���稪
    mov ax,0         ; 
Metka:             
    add ax,y[bx]   ; al=al+�᫮ �� ���ᨢ�, ������ ���ண� � bx
    add bx,2       ;
    dec c�         ;
    jnz Metka
    call Decimal
    pause          ; ��㧠
    stop           ; �⮯
   include _pp.txt
Y dw 3,2,4,7       ;
N = 2
K = ($ - Y)/N
end Start