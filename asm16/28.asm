    .model tiny    ;  
    .code       
    org 100h       ; ࠡ�稩
    include _macro.txt     
Start:             ; ���஢�� ���ᨢ�
    Cls            ; ���⪠ �࠭�
    call pr
    call sort
    call pr
    pause          ; ��㧠
    stop           ; �⮯
Y db 5,7,4,9,2 ;
K = $ - Y
include _pp.txt
pr:
    mov bx,0
    mov cx,k
Metka3:
    mov al,y[bx]
    call Decimal
    write ' '
    inc bx
    dec cx
    jnz Metka3
    WRITELN
    RET
sort:
    mov bx,0
    mov cx,K-1
    mov ah,y[bx]
    mov dx,1
Metka:
    mov al,y[bx]
    mov ah,y[bx+1]
    cmp al,ah
    jbe Metka2
    mov y[bx],ah
    mov y[bx+1],al
    mov dx,0
Metka2:
    inc bx
    dec cx
    cmp dx,0
    jz Metka
    ret
end Start