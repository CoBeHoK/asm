  cls                        
  @echo        �㦭� 㪠���� ��� ASM-䠩�� (��� ���७��)
  @echo        --------------------------------------------
  @if %1.==. goto No         
  #tasm.exe  %1.asm          
  #tlink.exe %1.obj          
  #exe2bin   %1.exe %1.com   
  del %1.map, %1.obj, %1.exe   
  @goto End                  
:No                          
  @echo  ������ ! �� 㪠���� ��� ASM-䠩�� 
:End   
  @echo -----------------------------------------------
  @pause
