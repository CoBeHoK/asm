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
  mov ax,2423h
  mov es:[bx],ax
  pause
  include _pp.txt     ;подпрограммы
end START
