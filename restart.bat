@echo off
call %~dp0%l2cur.bat

setlocal EnableDelayedExpansion
	hostname.exe>hostname.txt
	set /p host=<hostname.txt
	echo Hostname: !host!

	if "!host!" equ "ansys2" (
		set pathBefore=E:\maharjan
		set pathAfter=ANSYS
	) else (
		set pathBefore=D:
		set pathAfter=ANSYS
	)

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

echo.
set /p jobname=Enter Jobname:%=%
set /p resuStep=Enter Step to Resume:%=%
set /p resuSub=Enter Last Substep:%=%

REM set ansj=preppost
set /p ansj=<last-res-lic.txt
set /p r=Enter License to Use (1: struct, 2: mech_2, 3: meba; default: %ansj%):%=%
if "%r%" equ "1" (
	REM set ansj=struct
	set ansj=ansys
)
if "%r%" equ "2" (
	set ansj=mech_2
)
if "%r%" equ "3" (
	set ansj=meba
)
(echo %ansj%) > last-res-lic.txt

echo License: !ansj!
echo Project: %proj_Num%
echo Jobname: !jobname!

call timer.bat :startTimer

			set apdlCMD="C:\Program Files\ANSYS Inc\v170\ANSYS\bin\winx64\ansys170.exe" -s read -m 4096 -db 8192 -np 2 -b -p !ansj! -dir "!pathBefore!\%proj_Num%\!pathAfter!"^
 -j !jobname! -i "R:\maharjan\%proj_Num%\restart.in" -o "!pathBefore!\%proj_Num%\!pathAfter!\!jobname!res.out" -resuStep !resuStep! -resuSub !resuSub!

echo.
echo !apdlCMD!
echo.

!apdlCMD!

call timer.bat :stopTimer
call timer.bat :displayTimerResult
echo Time Used: !elTime!

endlocal
timeout /t 5
