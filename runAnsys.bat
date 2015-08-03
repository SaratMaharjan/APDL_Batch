@echo off

echo Launch dir: "%~dp0"
echo Current dir: "%CD%"
cd /D "%~dp0"
echo Changed to Current dir: "%CD%"
echo .
echo ..&

setlocal EnableDelayedExpansion	

set /p proj_Num=Enter The Project Num (Folder):%=%
set /p r=Enter License to Use (1-3, default: prepost):%=%
set /p disp=Enter The Display Device Num (1-3):%=%

if not "%proj_Num%" == "" (
	echo Project : %proj_Num%
) else (
	set proj_Num=288115
	echo Default Project  : !proj_Num!
)

set ansj=preppost
if "%r%" equ "2" (
	set ansj=struct
)
if "%r%" equ "3" (
	set ansj=prfnls
)
echo License: !ansj!
		
if not "%disp%" == "" (
	echo Display Num: %disp%
) else (
	set disp=1
	echo Default Display Num  : !disp!
)
	
set dispName=3D
if "%disp%" == "2" (
	set dispName=win32c
) 
if "%disp%" == "3" (
	set dispName=win32
)
echo Display Device: %dispName%

echo License: !ansj!
echo Project: %proj_Num%
echo Display Device: %dispName%	

call Timer.bat :StartTimer

set apdlCMD="C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe"  -g -p !ansj! ^
 -dir "D:\%proj_Num%\ANSYS" -j "file1" -s read -l en-us -t -d %dispName%

echo.
echo !apdlCMD! 	 
echo.

REM goto :takeTime
!apdlCMD!

call Timer.bat :StopTimer	
call Timer.bat :DisplayTimerResult	
echo Time Used: !elTime!

if !tCalc! geq 5 (
	echo --------Complete----------
	goto :eof
)
endlocal

:takeTime
timeout /t 1	 

:eof

