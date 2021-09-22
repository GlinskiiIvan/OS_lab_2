@echo off

set /P usePath=""
set /P exp=""

for %%i in ("%usePath%\*.%exp%") do (	
	echo %%i>>D:\report.txt
	del /p %%i
)

start D:\report.txt

pause