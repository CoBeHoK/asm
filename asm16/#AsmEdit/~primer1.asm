            ;== ������ ������ ==

  .model tiny        ;������ �����           
  .code              ;��砫� ᥣ���� ����    
   org 100h          ;���⮢� ����         
Start:               ;��⪠  - ��砫� �ணࠬ��

  mov AX, 0003h      ;���⪠ ��࠭�           
  int 10h            ; (���뢠��� 10h, �㭪�� 0, ०�� 3)

  mov DX, offset Y   ;���� ⥪�� � DX  (���:  "lea DX, Y" )
  mov AH, 9          ;�㭪�� 09 - ����� ⥪��
  int 21h            ;�맮� ���뢠��� ��� ���� ⥪��
                     ; (���� ⥪�� - �� DX, ����� �� ᨬ���� "$")

  mov AH, 10h        ;��㧠 (���뢠��� 21h, �㭪�� 01h)
  int 16h            ; (�������� ������ ᨬ����, ����頥��� � AL)

  mov AH, 4Ch        ;��室 (���뢠��� 21h, �㭪�� 4Ch)
  int 21h    

 Y db '�ਢ��', '$'  ;⥪�� � ��⪨ "Y"
end Start            ;����� �ணࠬ��
