    .model tiny    ;  
    .code       
    org 100h       ; 
PRINT macro        ; ����� ���� ᨬ���� �� AL
    mov AH,0Eh
    int 10h
endm 
Start:             ; 
    mov BX,0       ; � ॣ���� BX ��室���� ������ ����� ���ᨢ�
Metka:              
    mov AL,Y[BX]   ; 
    PRINT
    inc BX         ;
    cmp AL,0       ;
    jnz Metka      ;
    ret            ; 
Y db "Privet",0    ;
end Start