              ;программа для ...
 .model tiny
 .code
  org 100h
  include _macro.txt  ;макросы
START:
  CLS                 ;очистка экрана
  VIDEO               ;настройка видеобуфера

  mov DX, offset ZZ   ;команды
  mov AH,9
  int 21h

  PAUSE               ;пауза
  STOP                ;выход

 ZZ db  'Программа ',13,10,10,'$'  ;переменные

  include _pp.txt     ;подпрограммы
end START
