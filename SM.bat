@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat
call initials.bat

set appPath="C:\Program Files\ANSYS Inc\v180\ANSYS\bin\winx64\ansys180.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"
REM	1.Structural/ANSYS	2.Mech_2	3.Stba/MEBA	4.Prepost
	set startValue=2
	REM set startValue=4
	set endValue=!startValue!
	REM set endValue=4
REM Number of Processors
	set numPro=2
	REM set numPro=4

REM ==================================================================================================

	call 310917.bat
	call calc.bat

	REM call 310917a.bat
	REM call calc.bat

	REM call 306416.bat
	REM call calc.bat

	REM call 306416n.bat
	REM call calc.bat

	call 311017.bat
	call calc.bat

	call 311017n.bat
	call calc.bat

	REM call 306416n.bat
	REM call calc.bat

REM ==================================================================================================

endlocal
goto :takeTime
REM pause
:takeTime
timeout /t 100
