@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

set appPath="C:\Program Files\ANSYS Inc\v182\ANSYS\bin\winx64\ansys182.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v181\ANSYS\bin\winx64\ansys181.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v180\ANSYS\bin\winx64\ansys180.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"

REM  1.Structural/ANSYS  2.Mech_2  3.Stba/MEBA  4.Prepost
  set startValue=2
  set endValue=!startValue!
  REM set endValue=4

REM Number of Processors
  set numPro=4

REM if 0: only write Batch files
  set execute=1

REM ==================================================================================================

  REM call 314217.bat

  REM call 314417.bat

  call 314917.bat

  REM call 316917.bat

  REM call 314917fs.bat

  REM call 315017.bat

REM ==================================================================================================

endlocal
goto :takeTime
REM pause
:takeTime
timeout /t 100
