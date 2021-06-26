@REM NOTE: something

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
echo %date%-%time%>> %~n0.lock

@REM set appPath="C:\Program Files\ANSYS Inc\v201\ANSYS\bin\winx64\ansys2020R1.exe"
@REM set appPath="C:\Program Files\ANSYS Inc\v202\ANSYS\bin\winx64\ansys2020R2.exe"
set appPath="C:\Program Files\ANSYS Inc\v211\ANSYS\bin\winx64\ansys2021R1.exe"
echo %appPath%

@REM if !host! equ ansys2 (
@REM   set appPath="D:\installations\ANSYS Inc\v194\ANSYS\bin\winx64\ansys2019R3.exe"
@REM )

@REM  1.Structural/ANSYS  2.Mech_2  3.Stba/MEBA  4.Prepost
  set startValue=3
  set endValue=!startValue!
  @REM set endValue=2

@REM Number of Processors
  set numPro=4
  if "!host!" equ "osmhrjn" (
    @REM set numPro=2
  )

@REM if 0: only write Batch files
  set execute=1

@REM ==================================================================================================

  @REM call 355921.bat
  @REM call 354221.bat


  @REM call 356021.bat
  @REM call 356021d.bat

  @REM call 356221.bat

  @REM call 354821.bat

  call 357321.bat

  @REM call xxxxxx.xxx
  @REM call xxxxxx.xxx
  @REM call xxxxxx.xxx

  call extra_cmd_0.bat

@REM ==================================================================================================

endlocal

@REM timeout /t 100

del /f %~n0.lock
goto :takeTime
@REM pause

:instanceRunning
echo.
echo ########## Instance of Batch File is Already Running (sm.lock exists) ###########
echo.

:takeTime
call sound.bat
timeout /t 100
