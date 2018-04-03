
set "location=!sourcePre!\!proj_Num!"
set "wDir=!pathBefore!\!proj_Num!\!pathAfter!"
set "bDir=!batPre!\!proj_Num!\!batAfter!"
echo.
echo Source Location: !location!
echo Working Location: !wDir!
echo.

copy "%userprofile%\dropbox\zcore\cp7run.mac" "!wDir!\cp7run.mac"

if !append! equ 1 (
  echo.>> !bDir!\run-calc.bat
) else (
  echo.> !bDir!\run-calc.bat
)

set todayNow=On %date:~0,2%.%date:~3,2%.%date:~6,4% at %time:~0,2%:%time:~3,2%
echo *set,hostname,'!host!' > !wDir!\host.csv
echo *abbr,fin,!location!\ >> !wDir!\host.csv
echo REM ------------------- >> !bDir!\run-calc.bat
echo REM                          ___!todayNow!___ >> !bDir!\run-calc.bat
echo REM region New Analysis Cases >> !bDir!\run-calc.bat

set ans_consec=YES
set ansys_lock=on

for /l %%m in (!interval!) do (
  set par=%%m
  set num=4

  call add-zeroes.bat :addZero

  set job=!par!
  @echo on
  echo.
  echo JOB: !job!
  @echo off

  for /l %%n in (!interval2!) do (

    set par=%%n
    set num=3

    call add-zeroes.bat :addZero

    set lk=!par!

    (echo 0) > !wDir!\success-!nPrefix!!job!-!lk!.txt

    @echo on
    echo.
    echo ...
    echo ......
    echo New Job With
    echo JOB: !job!
    echo LK: !lk!
    echo __________Calling CALC.BAT__________ & echo. & echo.
    @echo off

    call calc-loop.bat :calc

    set /p succeed=<!wDir!\success-!nPrefix!!job!-!lk!.txt

    if !succeed! equ 1 (
      call delete-files.bat :delFiles
    )

    @echo on
    echo ____________________________________
    echo Job Finished.... ..... ............
    echo ____________________________________
    @echo off
  )
)

echo. >> !bDir!\run-calc.bat
echo REM endregion New Analysis Cases >> !bDir!\run-calc.bat
echo REM ------------------- >> !bDir!\run-calc.bat
