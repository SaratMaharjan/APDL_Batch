@echo off
setlocal EnableDelayedExpansion

set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"
@REM set ansj=ansys
set ansj=mech_2
@REM set ansj=stba
@REM set ansj=meba
@REM set ansj=preppost

set numPro=2

set bob=1000

set interval=1009 10 1019
set interval2=11 1 12

for /l %%m in (!interval!) do (
  set job=%%m
  for /l %%n in (!interval2!) do (
    set lk=%%n

    set copy1=copy b!bob!-!lk!.db  f!job!-!lk!.db
    echo !copy1!
    echo !copy1!>> apdl-list.bat
    !copy1!

    set copy2=copy b!bob!-!lk!.rst f!job!-!lk!.rst
    echo !copy2!
    echo !copy2!>> apdl-list.bat
    !copy2!

    set copy3=copy b!bob!-!lk!.s01 f!job!-!lk!.s01
    echo !copy3!
    echo !copy3!>> apdl-list.bat
    !copy3!

    set copy4=copy b!bob!-!lk!.s02 f!job!-!lk!.s02
    echo !copy4!
    echo !copy4!>> apdl-list.bat
    !copy4!

    set copy5=copy b!bob!-!lk!.s03 f!job!-!lk!.s03
    echo !copy5!
    echo !copy5!>> apdl-list.bat
    !copy5!

    set apdlCMD=!appPath! -db 8192 -np !numPro! -b -p !ansj! -jobstg !job!  -jobt !lk! -i "s.in" -o "f!job!-!lk!.out" -j "f!job!-!lk!"
    echo.>> apdl-list.bat
    echo !apdlCMD!>> apdl-list.bat
    echo.>> apdl-list.bat
      echo.
      echo !apdlCMD!
      echo.
      !apdlCMD!

    echo.
    echo Deleting Temporary Files ..
    del !wDir!\f!job!-!lk!.bcs >nul 2>&1
    del !wDir!\f!job!-!lk!.dbb >nul 2>&1
    del !wDir!\f!job!-!lk!.do3 >nul 2>&1
    del !wDir!\f!job!-!lk!.dsp >nul 2>&1
    del !wDir!\f!job!-!lk!.dspmatk >nul 2>&1
    del !wDir!\f!job!-!lk!.dspstack >nul 2>&1
    del !wDir!\f!job!-!lk!.dspsymb >nul 2>&1
    del !wDir!\f!job!-!lk!.dsptri >nul 2>&1
    del !wDir!\f!job!-!lk!.dsptriu >nul 2>&1
    del !wDir!\f!job!-!lk!.ema >nul 2>&1
    del !wDir!\f!job!-!lk!.emat >nul 2>&1
    del !wDir!\f!job!-!lk!.esa >nul 2>&1
    del !wDir!\f!job!-!lk!.esav >nul 2>&1
    del !wDir!\f!job!-!lk!.ful >nul 2>&1
    del !wDir!\f!job!-!lk!.full >nul 2>&1
    del !wDir!\f!job!-!lk!.ldh >nul 2>&1
    del !wDir!\f!job!-!lk!.ldhi >nul 2>&1
    del !wDir!\f!job!-!lk!.lock >nul 2>&1
    del !wDir!\f!job!-!lk!.mnt >nul 2>&1
    del !wDir!\f!job!-!lk!.mntr >nul 2>&1
    del !wDir!\f!job!-!lk!.mod >nul 2>&1
    del !wDir!\f!job!-!lk!.mode >nul 2>&1
    del !wDir!\f!job!-!lk!.osa >nul 2>&1
    del !wDir!\f!job!-!lk!.osav >nul 2>&1
    del !wDir!\f!job!-!lk!.pcs >nul 2>&1
    del !wDir!\f!job!-!lk!.pvt >nul 2>&1
    del !wDir!\f!job!-!lk!.r00 >nul 2>&1
    del !wDir!\f!job!-!lk!.r001 >nul 2>&1
    del !wDir!\f!job!-!lk!.r002 >nul 2>&1
    del !wDir!\f!job!-!lk!.r003 >nul 2>&1
    del !wDir!\f!job!-!lk!.r004 >nul 2>&1
    del !wDir!\f!job!-!lk!.r005 >nul 2>&1
    del !wDir!\f!job!-!lk!.r006 >nul 2>&1
    del !wDir!\f!job!-!lk!.r007 >nul 2>&1
    del !wDir!\f!job!-!lk!.r008 >nul 2>&1
    del !wDir!\f!job!-!lk!.r009 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr001 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr002 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr003 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr004 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr005 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr006 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr007 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr008 >nul 2>&1
    del !wDir!\f!job!-!lk!.nr009 >nul 2>&1
    del !wDir!\f!job!-!lk!.rdb >nul 2>&1
    del !wDir!\f!job!-!lk!.sta >nul 2>&1
    del !wDir!\f!job!-!lk!.stat >nul 2>&1
    del !wDir!\f!job!-!lk!.tri >nul 2>&1

    echo .............................
    echo ....... File Deletion Completed
    echo.
  )
)
timeout /t 100

