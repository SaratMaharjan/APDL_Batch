@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

REM shutdown computer
  REM shutdown.exe /s /t 00
REM restart computer
  REM shutdown.exe /r

echo %cd%\%0
echo %~n0
echo %~n0%~x0
echo %~nx0
if exist %~n0.lock goto instanceRunning
echo %date%-%time% >> %~n0.lock

REM set appPath="C:\Program Files\ANSYS Inc\v190\ANSYS\bin\winx64\ansys190.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v191\ANSYS\bin\winx64\ansys191.exe"
set appPath="C:\Program Files\ANSYS Inc\v192\ANSYS\bin\winx64\ansys192.exe"

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

  REM call 314917.bat

  REM call 320018.bat

  REM call 320218.bat

  REM call 300316.bat

  REM call 322018.bat

  REM call 322218.bat

  REM call 322418.bat

  REM call 323018.bat

  REM call 323318.bat

  REM call 321918.bat

  REM call 321918d.bat

  REM call 321918de.bat

  REM call 321918dt.bat

  REM call 321918df.bat

  REM call 321918fw.bat

  REM call 321918prll.bat

  REM call 323918.bat

  REM call 324618.bat

  REM call 324618sh.bat

  REM call 325518.bat

  REM call 325618.bat

  call 325618.bat

  REM call 325918ssw.bat

  REM call 326318.bat

  REM call 326318a.bat

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
