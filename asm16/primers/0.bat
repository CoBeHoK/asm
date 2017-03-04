  cls                        
  @echo        Нужно указать имя ASM-файла (без расширения)
  @echo        --------------------------------------------
  @if %1.==. goto No         
  #tasm.exe  %1.asm          
  #tlink.exe %1.obj          
  #exe2bin   %1.exe %1.com   
  del %1.map, %1.obj, %1.exe   
  @goto End                  
:No                          
  @echo  ОШИБКА ! Не указано имя ASM-файла 
:End   
  @echo -----------------------------------------------
  @pause
