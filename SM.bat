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

REM set appPath="C:\Program Files\ANSYS Inc\v192\ANSYS\bin\winx64\ansys192.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v193\ANSYS\bin\winx64\ansys2019R1.exe"
set appPath="C:\Program Files\ANSYS Inc\v194\ANSYS\bin\winx64\ansys2019R2.exe"

if !host! equ ansys2 (
  set appPath="D:\installations\ANSYS Inc\v194\ANSYS\bin\winx64\ansys2019R2.exe"
)

REM  1.Structural/ANSYS  2.Mech_2  3.Stba/MEBA  4.Prepost
  set startValue=2
  set endValue=!startValue!
  REM set endValue=4

REM Number of Processors
  set numPro=4
  if "!host!" equ "osmhrjn" (
    set numPro=4
  )

REM if 0: only write Batch files
  set execute=1

REM ==================================================================================================

  REM call 305216.bat

  REM call 314917.bat

  REM call 322218.bat

  REM call 332319.bat

  REM call 324618.bat
  REM call 324618sh.bat

  REM call 325918.bat
  REM call 325918ssw.bat

  REM call 327118.bat

  REM call 327418.bat
  REM call 327418br.bat

  REM call 329519.bat
  REM call 329519g.bat

  call 328519.bat

  REM call xxxxxx
  REM call xxxxxx
  REM call xxxxxx
  REM call xxxxxx
  REM call xxxxxx
  REM call xxxxxx
  REM call xxxxxx
  REM call xxxxxx
  REM call xxxxxx
  REM call xxxxxx

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
