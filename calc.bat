
set "location=!sourcePre!\!proj_Num!"
set "wDir=!pathBefore!\!proj_Num!\!pathAfter!"
set "bDir=!batPre!\!proj_Num!\!batAfter!"
echo.
echo Source Location: !location!
echo Working Location: !wDir!
echo.

if !startValue! equ 1 (
  @REM set ansj=struct
  set ansj=ansys
) else if !startValue! equ 2 (
  set ansj=mech_2
) else if !startValue! equ 3 (
  @REM set ansj=stba
  set ansj=meba
) else if !startValue! equ 4 (
  set ansj=preppost
) else (
  set ansj=ansys
)

copy "z:\cp7run.mac" "!wDir!\cp7run.mac"
@REM copy "%userprofile%\dropbox\zcore\cp7run.mac" "!wDir!\cp7run.mac"
copy "z:\.delImages.bat" "!wDir!\.delImages.bat"
@REM copy "%userprofile%\dropbox\zcore\.delImages.bat" "!wDir!\.delImages.bat"

if !append! equ 1 (
  echo.>> !bDir!\run-calc-!host!.bat
) else (
  echo.> !bDir!\run-calc-!host!.bat
)

set todayNow=On %date:~0,2%.%date:~3,2%.%date:~6,4% at %time:~0,2%:%time:~3,2%
echo *set,hostname,'!host!' > !wDir!\host.csv
echo *abbr,fin,!location!\>> !wDir!\host.csv
echo @REM #######________________________________________________________________________________________________________##########>> !bDir!\run-calc-!host!.bat
echo @REM #######________________________________________________________________________________________________________##########>> !bDir!\run-calc-!host!.bat
echo @REM #######________________________________________________________________________________________________________##########>> !bDir!\run-calc-!host!.bat
echo @REM #######________________________________________!todayNow!____________________________________________##########>> !bDir!\run-calc-!host!.bat
echo @REM region New Analysis Cases>> !bDir!\run-calc-!host!.bat
echo @echo off>> !bDir!\run-calc-!host!.bat
echo setlocal EnableDelayedExpansion>> !bDir!\run-calc-!host!.bat
echo set ans_consec=yes>> !bDir!\run-calc-!host!.bat
echo set ansys_lock=on>> !bDir!\run-calc-!host!.bat
echo del *.lock>> !bDir!\run-calc-!host!.bat
echo.>> !bDir!\run-calc-!host!.bat
echo set appPath=!appPath!>> !bDir!\run-calc-!host!.bat
echo set numpro=!numPro!>> !bDir!\run-calc-!host!.bat
echo set ansj=!ansj!>> !bDir!\run-calc-!host!.bat
echo set location=!location!>> !bDir!\run-calc-!host!.bat
echo set sourceFile=!sourceFile!>> !bDir!\run-calc-!host!.bat
echo set wDir=!wDir!>> !bDir!\run-calc-!host!.bat
echo.>> !bDir!\run-calc-!host!.bat

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

    echo set job=!job!>> !bDir!\run-calc-!host!.bat
    echo set lk=!lk!>> !bDir!\run-calc-!host!.bat
    echo set nPrefix=!nPrefix!>> !bDir!\run-calc-!host!.bat
    echo set redirect=!redirect!>> !bDir!\run-calc-!host!.bat
    echo set extVar=!extVar!>> !bDir!\run-calc-!host!.bat

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

echo @REM endregion New Analysis Cases>> !bDir!\run-calc-!host!.bat
echo @REM #######________________________________________________________________________________________________________##########>> !bDir!\run-calc-!host!.bat
echo @REM #######________________________________________________________________________________________________________##########>> !bDir!\run-calc-!host!.bat
echo @REM #######________________________________________________________________________________________________________##########>> !bDir!\run-calc-!host!.bat
