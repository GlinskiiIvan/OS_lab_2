@echo off

set /P usePath="from which directory are we copying ? : "

if not exist = "d:\Temp" (
	mkdir d:\Temp
)
copy %usePath%\*.* d:\Temp\

pause

echo rename...
for %%i in (d:\Temp\*) do ren "%%i" "!%%~nxi"

pause

Set count=0

For /r C:\ %%i In (.) Do Set /a count+=1
echo All folders=%count%

pause
