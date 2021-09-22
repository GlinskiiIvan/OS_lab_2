@echo off
:while
set /P usePath="Where will we look for the file? (enter - to search in the current directory) : "
set /P var="What file do you want to find ? : "

set curFolder=%cd%



if %usePath% == - (
	if exist = %curFolder%\%var% (
		start %curFolder%\%var%
	) else (
		echo file not found!
	)
) else (
	if exist = %usePath%\%var% (
		start %usePath%\%var%
	) else (
		echo file not found!
	)
)

pause

goto while