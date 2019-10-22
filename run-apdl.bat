
REM read Argument
set drive=%1
set fname=%2

setlocal EnableDelayedExpansion
  hostname.exe>hostname.txt
  set /p host=<hostname.txt
  echo Hostname: !host!

if exist last-run-!host!.txt (
  echo "last run exists."
) else (
  echo "test"> last-run-!host!.txt
)
if exist last-lic-!host!.txt (
  echo "last license exists."
) else (
  echo "preppost"> last-lic-!host!.txt
)

if exist last-drive-!host!.txt (
  echo "last drive exists."
) else (
  echo "D:"> last-drive-!host!.txt
)

  REM if "!host!" neq "ansys2" (
  REM   if %drive% equ 1 (
  REM     REM set pathBefore=u:
  REM     set /p pathBefore=Enter Drive: %=%
  REM     set pathAfter=ansys
  REM   ) else (
  REM     set pathBefore=E:\maharjan
  REM     set pathAfter=ansys
  REM   )
  REM ) else (
  REM   if %drive% equ 1 (
  REM     set pathBefore=D:
  REM     set pathAfter=ansys
  REM   ) else (
  REM     set pathBefore=E:
  REM     set pathAfter=ansys
  REM   )
  REM )
  REM if %drive% equ 3 (
  REM   set pathBefore=\\ansys2\maharjan
  REM   set pathAfter=ansys
  REM )

REM set ansj=preppost
set /p ansj=<last-lic-!host!.txt
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

(echo %ansj%) > last-lic-!host!.txt

REM set proj_Num="test"
set /p proj_Num=<last-run-!host!.txt
set /p proj_Num2=Enter The Project Num (Folder, default: %proj_Num%):%=%
if not "%proj_Num2%" == "" (
  REM echo Project : %proj_Num%
  (echo %proj_Num2%) > last-run-!host!.txt
  set proj_Num=%proj_Num2%
) else (
  REM set proj_Num="test"
  REM echo Default Project  : !proj_Num!
)
echo.

set /p pathBefore=<last-drive-!host!.txt
set /p bdrive=Enter Drive (Drive Letter, default: %pathBefore%):%=%
if not "%bdrive%" == "" (
  (echo %bdrive%) > last-drive-!host!.txt
  set pathBefore=%bdrive%
)

set pathAfter=ansys
set /p proj_sub=Enter The SubFolder (Folder, default: %pathAfter%):%=%
if not "%proj_sub%" == "" (
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
set filNam="interactive-%runNum%"

echo License: !ansj!
echo Project: %proj_Num%
echo Display Device: %dispName%

call timer.bat :startTimer

set appPath="C:\Program Files\ANSYS Inc\v195\ANSYS\bin\winx64\ansys2019R3.exe"

REM if !host! equ ansys2 (
REM   set appPath="D:\installations\ANSYS Inc\v195\ANSYS\bin\winx64\ansys2019R3.exe"
REM )

set apdlCMD=!appPath!  -g -p !ansj! ^
 -dir "!pathBefore!\%proj_Num%\!pathAfter!" -j %filNam% -s read -l en-us -t -d %dispName%

echo.
echo !apdlCMD!
echo.

REM goto :takeTime
REM start "" /b !apdlCMD!
!apdlCMD!

call timer.bat :stopTimer
call timer.bat :displayTimerResult
echo Time Used: !elTime!

endlocal
timeout /t 5
