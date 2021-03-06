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

@REM set appPath="C:\Program Files\ANSYS Inc\v192\ANSYS\bin\winx64\ansys192.exe"
@REM set appPath="C:\Program Files\ANSYS Inc\v193\ANSYS\bin\winx64\ansys2019R1.exe"
@REM set appPath="C:\Program Files\ANSYS Inc\v194\ANSYS\bin\winx64\ansys2019R2.exe"
@REM set appPath="C:\Program Files\ANSYS Inc\v195\ANSYS\bin\winx64\ansys2019R3.exe"
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

  @REM call 314917.bat
  @REM call 324618sh.bat
  @REM call 324618.bat
  @REM call 327418.bat
  @REM call 327418br.bat
  @REM call 335419.bat
  @REM call 335519.bat

  @REM call 329519.bat
  @REM call 329519g.bat

  @REM call 335719.bat

  @REM call 337319.bat

  @REM call 338820.bat
  @REM call 338820a.bat
  @REM call 338820k.bat

  @REM call 338920.bat

  @REM call 339220.bat
  @REM call 339220s.bat
  @REM call 339220a.bat
  @REM call 339220f.bat

  @REM call 338920.bat

  @REM call 339920.bat

  @REM call 340620.bat

  @REM call 340720.bat

  @REM call 340820.bat

  @REM call 341220.bat

  @REM call 341720.bat
  @REM call 341720a.bat
  @REM call 340620.bat

  @REM call 342820.bat
  @REM call 342820c.bat

  @REM call 343120.bat
  @REM call 343120z.bat

  @REM call 343920.bat

  @REM call 345720.bat
  @REM call 345820.bat
  @REM call 345920.bat

  @REM call 346120.bat
  @REM call 346120L.bat

  @REM call 346720.bat
  @REM call 346920.bat

  @REM call 347520.bat
  @REM call 347520L.bat

  @REM call 348820.bat
  @REM call 348820p.bat
  @REM call 348920.bat

  @REM call 349120.bat
  @REM call 349621.bat

  @REM call 350221.bat

  @REM call 351321.bat
  @REM call 351421.bat
  @REM call 351521.bat

  @REM call 352721.bat
  @REM call 350221d.bat

  @REM call 352121.bat

  @REM call 999921.bat

  call 353221b.bat
  @REM call 353421.bat

  @REM call 352921.bat

  @REM call xxxxxx.xxx
  @REM call xxxxxx.xxx
  @REM call xxxxxx.xxx
  @REM call xxxxxx.xxx
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
