              ;�ணࠬ�� ��� ...
 .model tiny
 .code
  org 100h
  include _macro.txt  ;������
START:
  CLS                 ;���⪠ �࠭�
  VIDEO               ;����ன�� ���������

  mov DX, offset ZZ   ;�������
  mov AH,9
  int 21h

  PAUSE               ;��㧠
  STOP                ;��室

 ZZ db  '�ணࠬ�� ',13,10,10,'$'  ;��६����

  include _pp.txt     ;����ணࠬ��
end START
