cls
@echo   ���������������������������������������������������������������������
@echo   �������� COM-䠩��. 
@echo   ���������������������������������������������������������������������
@echo        ����� ����� "PRIMER" ���⠢�� ��� ᢮��� ASM-䠩��
@echo   ���������������������������������������������������������������������

pause

#tasm    PRIMER.asm
#tlink   PRIMER.obj
#exe2bin PRIMER.exe PRIMER.com

@del PRIMER.map 
@del PRIMER.obj 
@del PRIMER.exe



