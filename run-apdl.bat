
REM read Argument
set drive=%1
set fname=%2
if exist last-run.txt (
  echo "last run exists."
) else (
  echo "test"> last-run.txt
)
if exist last-lic.txt (
  echo "last license exists."
) else (
  echo "test"> last-lic.txt
)

setlocal EnableDelayedExpansion
    hostname.exe>hostname.txt
    set /p host=<hostname.txt
    echo Hostname: !host!

    if "!host!" equ "ansys2" (
      if %drive% equ 1 (
        set pathBefore=D:\maharjan
        set pathAfter=ANSYS
      ) else (
        set pathBefore=E:\maharjan
        set pathAfter=ANSYS
      )
    ) else (
      if %drive% equ 1 (
        set pathBefore=D:
        set pathAfter=ANSYS
      ) else (
        set pathBefore=E:
        set pathAfter=ANSYS
      )
    )
    if %drive% equ 3 (
      set pathBefore=\\ansys2\maharjan
      set pathAfter=ANSYS
    )

REM set ansj=preppost
set /p ansj=<last-lic.txt
set /p r=Enter License to Use (1: struct, 2: mech_2, 4: prepost; default: %ansj%):%=%
if "%r%" equ "1" (
  REM set ansj=struct
  set ansj=ansys
)
if "%r%" equ "2" (
  set ansj=mech_2
)
if "%r%" equ "3" (
  set ansj=preppost
)
if "%r%" equ "4" (
  set ansj=preppost
)

(echo %ansj%) > last-lic.txt

REM set proj_Num="test"
set /p proj_Num=<last-run.txt

set /p proj_Num2=Enter The Project Num (Folder, default: %proj_Num%):%=%
if not "%proj_Num2%" == "" (
  REM echo Project : %proj_Num%
  (echo %proj_Num2%) > last-run.txt
  set proj_Num=%proj_Num2%
  echo.
) else (
  REM set proj_Num="test"
  REM echo Default Project  : !proj_Num!
)

set /p proj_sub=Enter The SubFolder (Folder, default: %pathAfter%):%=%
if not "%proj_sub%" == "" (
  REM echo Project : %proj_sub%
  set pathAfter=%proj_sub%
  echo.
)

REM set /p disp=Enter The Display Device Num (1 (default): 3d, 2: win32c, 3: win32):%=%
REM if not "%disp%" == "" (
  REM echo Display Num: %disp%
REM ) else (
  REM set disp=1
  REM REM echo Default Display Num  : !disp!
REM )
set dispName=3D
REM if "%disp%" == "2" (
  REM set dispName=win32c
REM )
REM if "%disp%" == "3" (
  REM set dispName=win32
)

set runNum=0
if exist !pathBefore!\%proj_Num%\!pathAfter!\running.txt (
  set /p runNum=<!pathBefore!\%proj_Num%\!pathAfter!\running.txt
)
if "%runNum%" geq "1" (
  set /a runNum=%runNum%+1
) else (
  set runNum=1
)
(echo %runNum%) > !pathBefore!\%proj_Num%\!pathAfter!\running.txt
    REM if %fname% equ 1 (
      set filNam="file%runNum%GUI"
    REM ) else (
      REM set filNam="file2gui"
    REM )

echo License: !ansj!
echo Project: %proj_Num%
echo Display Device: %dispName%

call timer.bat :startTimer

set apdlCMD="C:\Program Files\ANSYS Inc\v181\ansys\bin\winx64\ansys181.exe"  -g -p !ansj! ^
 -dir "!pathBefore!\%proj_Num%\!pathAfter!" -j %filNam% -s read -m 8192 -db 4096 -l en-us -t -d %dispName%

echo.
echo !apdlCMD!
echo.

REM goto :takeTime
REM start "" /B !apdlCMD!
!apdlCMD!

call timer.bat :stopTimer
call timer.bat :displayTimerResult
echo Time Used: !elTime!

endlocal
timeout /t 5

