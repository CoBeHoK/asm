              ;программа для ...
 .model tiny
 .code
  org 100h
  include _macro.txt  ;макросы
START:
  mov ax,3
  int 10h
  mov ax,0b800h
  mov es,ax
  mov ax,4E23h
  mov cx,25*80
  mov bx,0
metka:
  mov es:[bx],ax
  add bx,2
  dec cx
  jnz metka
  pause
  include _pp.txt     ;подпрограммы
end START
