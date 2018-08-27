rem call:%*

:calc
echo rem ++++++++++++++++++++++++++++++++++++++++++++++++ starting calculation ++++++++++++++++++++++++++++++++++++++++++++++++ >> !bDir!\run-calc.bat
del !wDir!\*.lock >nul 2>&1
del !wDir!\*.abt >nul 2>&1

for /l %%c in ( 1 1 1 ) do (
  echo.
  echo. starting license loop
  echo.

  set retry=%%c

  for /l %%r in ( !startValue! 1 !endValue! ) do (
    rem licenses region
      set numPro=!numPro!

      if %%r equ 1 (
        rem set ansj=struct
        set ansj=ansys
      ) else if %%r equ 2 (
        set ansj=mech_2
      ) else if %%r equ 3 (
        rem set ansj=stba
        set ansj=meba
      ) else if %%r equ 4 (
        set ansj=preppost
      ) else (
        set ansj=ansys
      )

      echo License: !ansj!
      echo Processors: !numPro!
      echo Project: %proj_Num%
      echo source %d% : !location!
    rem licenses endregion

    call timer.bat startTimer
    (echo 0) > !wDir!\license-!nPrefix!!job!-!lk!.txt

    rem region Call ANSYS
    del "!wDir!\f!job!-!lk!.err" >nul 2>&1

    set apdlCMD=!appPath! -db 8192 -np !numPro! -b -p !ansj! -dis -mpi INTELMPI -jobstg !job! -jobt !lk! -verz !location!^
 -redirect !redirect! -i "!location!\!sourceFile!" -o "!wDir!\!nPrefix!!job!-!lk!.out" -dir "!wDir!"^
 -j "!nPrefix!!job!-!lk!" -extVar !extVar! -nPrefix "!nPrefix!"

    set apdlCMDtext=^^!appPath^^! -db 8192 -np ^^!numPro^^! -b -p ^^!ansj^^! -dis -mpi INTELMPI -jobstg ^^!job^^! -jobt ^^!lk^^! -verz ^^!location^^!^
 -redirect ^^!redirect^^! -i ^^!location^^!\^^!sourceFile^^! -o ^^!wDir^^!\^^!nPrefix^^!^^!job^^!-^^!lk^^!.out -dir ^^!wDir^^!^
 -j ^^!nPrefix^^!^^!job^^!-^^!lk^^! -extVar ^^!extVar^^! -nPrefix ^^!nPrefix^^!

    echo.
    echo !apdlCMD!

    rem region write to batch file in project folder
      rem echo !apdlCMD! >> !bDir!\run-calc.bat
      echo !apdlCMDtext! >> !bDir!\run-calc.bat
    rem endregion write to batch file in project folder
    echo.

    if %execute% equ 1 (
      !apdlCMD!
    )
    rem endregion Call ANSYS

    call timer.bat stopTimer
    call timer.bat displayTimerResult
    set /a mins=!tCalc!/60
    echo rem +++++++++++++++++++++++++++++++++++ Time Required: !tCalc! Minutes OR !mins! Hours +++++++++++++++++++++++++++++++++++ >> !bDir!\run-calc.bat
    echo rem ++++++++++++++++++++++++++++++++++++++++++++++++++ end of calculation ++++++++++++++++++++++++++++++++++++++++++++++++ >> !bDir!\run-calc.bat
    echo del *.lock >> !bDir!\run-calc.bat
    echo del *.ema >> !bDir!\run-calc.bat
    echo del *.esa >> !bDir!\run-calc.bat
    echo del *.osa >> !bDir!\run-calc.bat
    echo del *.pcs >> !bDir!\run-calc.bat
    echo del *.mnt >> !bDir!\run-calc.bat
    echo del *.sta >> !bDir!\run-calc.bat
    echo del *.tri >> !bDir!\run-calc.bat
    echo del *.r00 >> !bDir!\run-calc.bat
    echo del *.rdb >> !bDir!\run-calc.bat
    echo del *.ldh >> !bDir!\run-calc.bat
    echo del *.full >> !bDir!\run-calc.bat
    echo del *.DO3 >> !bDir!\run-calc.bat
    echo del *.dbb >> !bDir!\run-calc.bat
    echo del *.BCS >> !bDir!\run-calc.bat
    echo del *.PVTS >> !bDir!\run-calc.bat
    echo del *.mode >> !bDir!\run-calc.bat
    echo del *.abt >> !bDir!\run-calc.bat
    echo del *.gst >> !bDir!\run-calc.bat
    echo. >> !bDir!\run-calc.bat

    if %execute% equ 1 (
      set /p inPrep=<!wDir!\license-!nPrefix!!job!-!lk!.txt
    ) else (
      set inPrep=1
    )

    echo.
    echo isLicenseAvailable: !inPrep!
    echo.

    rem if !tCalc! geq 5 (
    if !inPrep! equ 1 (
      echo.
      echo --------calculated with License: !ansj! --- Processors: !numPro!----------
      echo.
      goto :checkOuter
    )
    rem print message region
    echo.
    echo  ------------ coudldn't calculate ------------- & echo.
    echo probable reasons:
    echo       1. License may not be available.
    echo       2. Solution Request from WB not removed.
    echo       3. Error in Input File "check file.err".
    echo       4. Early eof in Input Files. & echo.
    echo  ------------ ----------------- ------------- & echo.
    copy "!wDir!\f!job!-!lk!.out" "!wDir!\f!job!-!lk!-lic-!ansj!.out"

    echo.
    echo. !ansj! try failed
    echo.
    rem print message endregion
   )

  :checkOuter
  echo. license loop finished
  echo.

  if !inPrep! equ 1 (
    echo.
    echo ------------------ calculated after retry: !retry! -----------------
    echo.
    goto :eof
  )

  echo.
  echo ---------- could not calculate - try: !retry! ----------
  echo.
  rem timeout /t 60
)

goto :eof
