    .model tiny    ;  
    .code       
    org 100h       ; 
Start:             ; 
    mov BX,offset Y; � ॣ���� BX ��室���� ������ ����� ���ᨢ�
    mov CL,LEN
Metka:              
    mov AL,[BX]   ; 
    mov AH,0Eh
    int 10h
    inc BX         ;
    dec CL
    jnz Metka      ;
    ret            ; 
Y db "Privet"      ;
LEN = $ - Y        ;  $ - ⥪�饥 ���ﭨ� ���稪� �������
end Start