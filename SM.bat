@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

echo %cd%\%0
echo %~n0
echo %~n0%~x0
echo %~nx0
if exist %~n0.lock goto instanceRunning
echo %date%-%time% >> %~n0.lock

set appPath="C:\Program Files\ANSYS Inc\v190\ANSYS\bin\winx64\ansys190.exe"

REM  1.Structural/ANSYS  2.Mech_2  3.Stba/MEBA  4.Prepost
  set startValue=2
  set endValue=!startValue!
  REM set endValue=4

REM Number of Processors
  set numPro=8

REM if 0: only write Batch files
  set execute=1

REM ==================================================================================================

  REM call 319718.bat

  REM call 319218m.bat

  REM call 320218.bat

  REM call 314917.bat

  REM call 321018.bat

  REM call 321218.bat

  REM call 320018.bat

  REM call 300316.bat

  REM call 321918.bat

  REM call 322018.bat

  call 322218.bat

  REM call 322418.bat

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
call sound.bat
timeout /t 100
