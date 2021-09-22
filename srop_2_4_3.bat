@echo off

set /P usePath="In which folder do you want to delete files ? : "
set /P exp="Which file extension do you want to delete ? : "

for %%i in ("%usePath%\*.%exp%") do (	
	echo %%i>>D:\report.txt
	del /p %%i
)

start D:\report.txt

pause