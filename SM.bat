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
REM set appPath="C:\Program Files\ANSYS Inc\v192\ANSYS\bin\winx64\ansys192.exe"
REM set appPath="C:\Program Files\ANSYS Inc\v193\ANSYS\bin\winx64\ansys2019R1.exe"
set appPath="C:\Program Files\ANSYS Inc\v194\ANSYS\bin\winx64\ansys2019R2.exe"

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

  REM call 314917.bat

  REM call 322418.bat

  REM call 323018.bat

  REM call 323318.bat

  REM call 321918d.bat

  REM call 321918de.bat

  REM call 321918dt.bat

  REM call 321918df.bat

  REM call 321918fw.bat

  REM call 321918prll.bat

  REM call 323918.bat

  REM call 324618sh.bat
  REM call 324618.bat


  REM call 325518.bat
  REM call 325618.bat



  REM call 325918ssw.bat

  REM call 326318.bat

  REM call 329019Lasche.bat
  REM call 327118.bat

  REM call 327118sf.bat

  REM call 327118anlen.bat

  REM call 327118sup.bat

  REM call 321218.bat

  REM call 327418.bat

  REM call 327418br.bat

  REM call 328218.bat

  REM call 327818.bat

  REM call 328118.bat

  REM call 321918.bat

  call 328519.bat

  REM call 328519arm.bat

  REM call 328519slide.bat

  REM call 328519br.bat

  REM call 328519tr.bat

  REM call 329019.bat

  REM call 329219.bat

  REM call 329319.bat

  REM call 329319d.bat

  REM call 329319ro.bat

  REM call 329019.bat

  REM call 329519.bat

  REM call 329519g.bat

  REM call 329819.bat

  REM call 331419.bat
  REM call 331519.bat

  REM call 332319.bat
  REM call 325918.bat
  REM call 329019Lasche.bat

  REM call test.bat

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
