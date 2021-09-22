@echo off
:while
set /P var="What do you want to open? (Word, Excel, Access): "
if %var% == Word (
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs 
Word.lnk
)
if %var% == Excel (
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs 
Excel.lnk
)
if %var% == Access (
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs 
Access.lnk
)

goto while