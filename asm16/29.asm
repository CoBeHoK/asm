              ;�ணࠬ�� ��� ...
 .model tiny
 .code
  org 100h
  include _macro.txt  ;������
START:
  mov ax,3
  int 10h
  mov ax,0b800h
  mov es,ax
  mov ax,2423h
  mov es:[bx],ax
  pause
  include _pp.txt     ;����ணࠬ��
end START
