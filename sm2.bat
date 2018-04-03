@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

if exist %~n0.lock goto instanceRunning
echo.>> %~n0.lock

set appPath="C:\Program Files\ANSYS Inc\v190\ANSYS\bin\winx64\ansys190.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v182\ANSYS\bin\winx64\ansys182.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v181\ANSYS\bin\winx64\ansys181.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v180\ANSYS\bin\winx64\ansys180.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"

REM  1.Structural/ANSYS  2.Mech_2  3.Stba/MEBA  4.Prepost
  set startValue=4
  set endValue=!startValue!
  REM set endValue=4

REM Number of Processors
  set numPro=2

REM if 0: only write Batch files
  set execute=1

REM ==================================================================================================

  REM call 314217.bat

  REM call 314417.bat

  REM call 314917.bat

  REM call 316917.bat

  REM call 314917fs.bat

  REM call 312017.bat

  REM call 316517.bat

  REM call 316617.bat

  REM call 319018a.bat
  REM call 319018.bat

  REM call 319118.bat

  call 316717.bat
  REM call 319218.bat
  REM call 319218m.bat

  REM call 319718.bat

REM ==================================================================================================

endlocal

REM timeout /t 100

del /f %~n0.lock
goto :takeTime
REM pause

:instanceRunning
echo.
echo ########## Instance of Batch File is Already Running ###########
echo.

:takeTime
timeout /t 100
