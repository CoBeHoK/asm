    .model tiny    ;  
    .code       
    org 100h       ;
    include _macro.txt     
Start:             ; �ணࠬ�� ��஢���� ��ப�
    Cls            ; ���⪠ �࠭�
    call printy
    call chiphr
    call printy
    call chiphr
    call printy
    pause          ; ��㧠
    stop           ; �⮯
printy:
    mov dx,offset y
    mov ah,9
    int 21h
    ret
Chiphr:
    mov bx,offset y
    mov cx,K
    mov al,56
MetkaC:
    xor [bx],al
    inc bx
    dec cx
    jnz MetkaC
    ret
Y db "�ਢ�� ���� �� ��᪢�",13,10,'$'      ;
K = $ - Y - 3
end Start