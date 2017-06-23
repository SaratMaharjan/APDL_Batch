@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

set appPath="C:\Program Files\ANSYS Inc\v181\ANSYS\bin\winx64\ansys181.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v180\ANSYS\bin\winx64\ansys180.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"

REM	1.Structural/ANSYS	2.Mech_2	3.Stba/MEBA	4.Prepost
	set startValue=2
	REM set startValue=4
	set endValue=!startValue!
	REM set endValue=4

REM Number of Processors
	set numPro=2
	REM set numPro=4

REM if 0: only write Batch files
	REM set execute=0
	set execute=1

REM ==================================================================================================

	REM call 311017a.bat

	call 312017.bat

	REM call 311017.bat

	REM call 308817.bat

	REM call 310117.bat

	REM call 310117.bat

	REM call 310117.bat

REM ==================================================================================================

endlocal
goto :takeTime
REM pause
:takeTime
timeout /t 100
