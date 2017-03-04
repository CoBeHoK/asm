    .model tiny    ;  
    .code       
    org 100h       ;
Start:             ; 
    mov DX,offset Y
    mov AH,9
    int 21h
    ret
Y db "Privet",'$'  ;
end Start