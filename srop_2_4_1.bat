@echo off

set MyDir=d:\Temp\MyFont

if not exist = "%MyDir%" (
	mkdir d:\Temp\MyFont
) else (
	echo Folder exists
)


pause


set c=
 
if exist "%MyDir%\*.ttf" (
 echo Fonts exist
 )
 
echo Copying...
 
setlocal enabledelayedexpansion
for %%i in ("C:\Windows\Fonts\*.ttf") do (
 set /a c+=1
 copy "%%i" "%MyDir%"
 if !c! equ 3 (
  goto label2
  )
 )
 
:label2
 
endlocal


pause


if exist "%MyDir%\*.ttf" (
	rmdir /s /q d:\Temp
	echo Folder deleted
) else (
	echo Folder is empty
)

pause