
set "location=!sourcePre!\!proj_Num!"
set "wDir=!pathBefore!\!proj_Num!\!pathAfter!"
set "bDir=!batPre!\!proj_Num!\!batAfter!"
echo.
echo Source Location: !location!
echo Working Location: !wDir!
echo.

if !startValue! equ 1 (
  rem set ansj=struct
  set ansj=ansys
) else if !startValue! equ 2 (
  set ansj=mech_2
) else if !startValue! equ 3 (
  rem set ansj=stba
  set ansj=meba
) else if !startValue! equ 4 (
  set ansj=preppost
) else (
  set ansj=ansys
)

copy "%userprofile%\dropbox\zcore\cp7run.mac" "!wDir!\cp7run.mac"

if !append! equ 1 (
  echo.>> !bDir!\run-calc.bat
) else (
  echo.> !bDir!\run-calc.bat
)

set todayNow=On %date:~0,2%.%date:~3,2%.%date:~6,4% at %time:~0,2%:%time:~3,2%
echo *set,hostname,'!host!' > !wDir!\host.csv
echo *abbr,fin,!location!\ >> !wDir!\host.csv
echo rem #######________________________________________________________________________________________________________########## >> !bDir!\run-calc.bat
echo rem #######________________________________________________________________________________________________________########## >> !bDir!\run-calc.bat
echo rem #######________________________________________________________________________________________________________########## >> !bDir!\run-calc.bat
echo rem #######________________________________________!todayNow!____________________________________________########## >> !bDir!\run-calc.bat
echo rem region New Analysis Cases >> !bDir!\run-calc.bat
echo setlocal EnableDelayedExpansion >> !bDir!\run-calc.bat
echo set ans_consec=yes >> !bDir!\run-calc.bat
echo set ansys_lock=on >> !bDir!\run-calc.bat
echo del *.lock >> !bDir!\run-calc.bat
echo. >> !bDir!\run-calc.bat
echo set appPath=!appPath! >> !bDir!\run-calc.bat
echo set numpro=!numPro! >> !bDir!\run-calc.bat
echo set ansj=!ansj! >> !bDir!\run-calc.bat
echo set location=!location! >> !bDir!\run-calc.bat
echo set sourceFile=!sourceFile! >> !bDir!\run-calc.bat
echo set wDir=!wDir! >> !bDir!\run-calc.bat
echo. >> !bDir!\run-calc.bat

set ans_consec=yes
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

    echo set job=!job! >> !bDir!\run-calc.bat
    echo set lk=!lk! >> !bDir!\run-calc.bat
    echo set nPrefix=!nPrefix! >> !bDir!\run-calc.bat
    echo set redirect=!redirect! >> !bDir!\run-calc.bat
    echo set extVar=!extVar! >> !bDir!\run-calc.bat

    echo __________calling calc-loop.bat__________ & echo. & echo.
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

echo rem endregion New Analysis Cases >> !bDir!\run-calc.bat
echo rem #######________________________________________________________________________________________________________########## >> !bDir!\run-calc.bat
echo rem #######________________________________________________________________________________________________________########## >> !bDir!\run-calc.bat
echo rem #######________________________________________________________________________________________________________########## >> !bDir!\run-calc.bat
