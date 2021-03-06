         ;==  ��� � ����� ==
 .model tiny
 .code    
  org 100h
START:                  
  mov AX, 0003h                ;����祭�� ०��� � ���⪠ ��࠭�
  int 10h    

  mov AX, 0B800h
  mov ES, AX                   ;���� ���������

  mov DX, offset Y             ;�뢮� ��஢��� ����
  mov AH, 9
  int 21h

  mov BX, 10*160+38*2          ;���.���न��� � ����: Y=10, X=38 (��� � 0)
  mov SI, 160                  ;蠣 �� Y: "160" -����   "-160" -�����
  mov DI,   4                  ;蠣 �� X:   "4" -��ࠢ�   "-4" -�����
Begin:                  
  mov ES:[BX], byte ptr 'O'    ;--���ᮢ��� ᨬ��� ���

  mov AH, 11h                  ;����� ������ ? (�᫨ �� �����, � 䫠� ZF=1)
  int 16h    
  jnz  Stop                    ;�᫨ ����� ��-�����, � ��室 �� �ணࠬ��
  call Delay                   ;����প�

  mov ES:[BX], byte ptr '�'    ;--���ᮢ��� ᨬ��� ᫥�� ("����� ���")

  mov AH, '#'                  ;ᨬ��� �࠭���

  push BX                      ;��࠭��� ����
  add BX, SI                   ;���� ����:  蠣 dY
  add BX, DI                   ;              蠣 dX
  cmp ES:[BX], AH              ;ᨬ��� � ����� ���� - �࠭�� ? (�� � AH)
  pop BX                       ;����⠭����� �०��� ����
  jnz Cont                     ;�� ������ ����� - �� �࠭��, �� �த�������

  mov CH, 0                    ;䫠� �ᥤ��:  00 -�����   01 -ᢥ���/᭨��
                               ;               11 -㣮�     10 -�ࠢ�/᫥��

                               ;--�஢�ઠ ᭨��
  push BX                      ;��࠭��� ����
  add BX, SI                   ;蠣 ����
  cmp ES:[BX], AH              ;ᢥ��� �࠭��?
  pop BX                       ;����⠭����� ����
  jnz Metka1                   ;�᫨ ��
  or  CH, 00000001b            ;�࠭�� ��ਧ��⠫쭠� ("1" � ��.��� 䫠�� �ᥤ��)

Metka1:                        ;--�஢�ઠ ᢥ���
  push BX
  sub BX, SI                   ;蠣 �����
  cmp ES:[BX], AH              ;ᢥ��� �࠭��?
  pop BX
  jnz Metka2                   ;�᫨ ��
  or  CH, 00000001b            ;�࠭�� ��ਧ��⠫쭠� ("1" � ��.��� 䫠�� �ᥤ��)

Metka2:                        ;--�஢�ઠ �ࠢ�
  push BX
  add BX, DI                   ;蠣 ��ࠢ�
  cmp ES:[BX], AH              ;�ࠢ� �࠭��?
  pop BX
  jnz Metka3                   ;�᫨ ��
  or  CH, 00000010b            ;�࠭�� ���⨪��쭠� ("1" �� ��஬ ��� 䫠�� �ᥤ��)

Metka3:                        ;--�஢�ઠ ᫥��
  push BX
  sub BX, DI                   ;蠣 �����
  cmp ES:[BX], AH              ;᫥�� �࠭��?
  pop BX
  jnz Metka4                   ;�᫨ ��
  or  CH, 00000010b            ;�࠭�� ���⨪��쭠� ("1" �� ��஬ ��� 䫠�� �ᥤ��)

Metka4:                        ;--������� ���ࠢ�����
  neg SI                       ;�।��������, �� 䫠� �ᥤ�� "00" ��� "11" (����� ��� 㣮�)
  neg DI 

  cmp CH, 00000000b            ;�᫨ ����� ("00")
  jz  Cont                     ;���ࠢ����� ��⠭���� ������஢���묨, �� �த������� 

  cmp CH, 00000011b            ;�᫨ 㣮�   ("11")
  jz  Cont                     ;���ࠢ����� ��⠭���� ������஢���묨, �� �த�������

  cmp CH, 00000001b            ;�᫨ �࠭�� ��ਧ��⠫쭠� ("01")
  jnz Metka5                   
  neg DI                       ;��� ��᪮�� �� ��ਧ��⠫� 蠣 dX �� ������� 
                               ;(� �� �ந�����஢��, ���⮬� �������㥬 dX ���⭮)
Metka5:                 
  cmp CH, 00000010b            ;�᫨ �࠭�� ���⨪��쭠� ("10")
  jnz Cont
  neg SI                       ;��� ��᪮�� �� ���⨪��� 蠣 dY �� �������
                               ;(� �� �ந�����஢��, ���⮬� �������㥬 dY ���⭮)

Cont:                          ;--��������
  add BX, SI                   ;������ ���� (���� = ���� + dY + dX )
  add BX, DI
  jmp Begin

Stop:                   
  mov AH, 1                    ;��㧠
  int 21h          
  mov AH, 4Ch                  ;�⮯
  int 21h

         ;== ����ணࠬ�� ����প� (����稭� ����প� �������� ����� ��⥬)
Delay:                  
        push CX
        mov  CX, 5000          ;���譨� ���稪 (��������!) 
Delay1: push CX                ;���譨� ���稪 � �⥪
        mov  CX, 0FFFFh        ;����७��� ���稪 -���ᨬ��쭮 �������� (65535 ࠧ)
Delay2: dec  CX
        jnz  Delay2            ;����७��� 横� (����প�)
        pop  CX                ;����⠭����� ���譨� ���稪
        dec  CX
        jnz  Delay1            ;���譨� 横�
        pop  CX
        ret      
               ;== ��㭮� ��஢��� ����
               ;����.�⥭�� �� 2 ᨬ����, �⮡� �� 蠣� 2 ��砫쭮� ����� ���� ���

Y  db "################################################              ", 13, 10
   db "##                                            ##              ", 13, 10
   db "##                                            ##              ", 13, 10
   db "##                                            ##              ", 13, 10
   db "######                                        ##              ", 13, 10
   db "    ##                                        ##              ", 13, 10
   db "    ##                                        ################", 13, 10
   db "    ##                                                      ##", 13, 10
   db "    ##                                                      ##", 13, 10
   db "    ##                                                      ##", 13, 10
   db "    ##                                                      ##", 13, 10
   db "    ##                                                      ##", 13, 10
   db "    ##                  ################                    ##", 13, 10
   db "    ##                  ##            ##                    ##", 13, 10
   db "    ##                  ##            ##                    ##", 13, 10
   db "    ##                  ##            ##                    ##", 13, 10
   db "    ######################            ########################", '$'

end START