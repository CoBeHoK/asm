          ;== ���������� ������� ==

 .model tiny
 .code    
  org 100h  
  include _macro.txt ;������祭�� ����ᮢ
Start:                  

  CLS          ;����� ���⪨ �࠭�
  TEXT T1      ;������騩 ⥪��
  call MASS    ;����� ���ᨢ� �� ���஢��

Metka3:                 
  mov BX,offset Y ;���� ���ᨢ�
  mov CX, K-1  ;横� - �� 1 ࠧ ����� ������⢠
  mov DL, 0    ;䫠�: �।����蠥�, �� ������ �� �㤥�

Metka2:                 
        ;-�ࠢ����� �祥� [BX] � [BX+1]
  mov AX,[BX]  ;����� �� ���� �祥� � AH � AL
  cmp AH,AL
  ja Metka1    ;�᫨ ���� �ࠢ��쭮, � �� ������ �����
               ; (�� �����⠭��: JA, �뢠���:  JB )


        ;-����� �祥� [BX] � [BX+1]

; mov AX,[BX]  ;����� �� ���� �祥� (�� ��易⥫쭮 -㦥 ����)
  xchg AH,AL   ;�������� �����
  mov [BX],AX  ;������� � ��� �祩��
  mov DL, 1    ;䫠�: ����� ��

Metka1:                 
  inc BX       ;�� ���ᨢ� ����
  dec CX    
  jnz Metka2   ;�த������ ��ᬮ�� ���ᨢ�
  cmp DL, 1 
  jz Metka3    ;�� 䠪� ������, ������� ��室 �� ��ᨢ�

  TEXT T2      ;������騩 ⥪��
  call MASS    ;����� ���ᨢ� ��᫥ ���஢��

  PAUSE        ;����� ����
  STOP         ;����� ��室� �� �ணࠬ��

 include _pp.txt ;������祭�� ����ணࠬ�


       ;==����ணࠬ�� ���� ���ᨢ�
Mass:                 
  mov BX,0      ;���.������
  mov CX,K      ;���-�� ����⮢
M1:                     
  mov AL,Y[BX]  ;�����
  call PRINT_AL ;�/� ���� ����
  WRITE ' '     ;����� ���� �஡���
  inc BX    
  dec CX    
  jnz M1    
  WRITELN       ;����� ��ॢ��� �����
  ret           ;������ �� ����ணࠬ��

 Y db 3,5,2,4,1 ;���ᨢ �ᥫ
 K =  $ - Y     ;��।������ ����� ���ᨢ�
 T1 db "���ᨢ ��    ���஢��: ",'$'
 T2 db "���ᨢ ��᫥ ���஢��: ",'$'
end Start
