@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

REM set appPath="C:\Program Files\ANSYS Inc\v162\ANSYS\bin\winx64\ansys162.exe"
set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"
REM	1.Structural/ANSYS	2.Mech_2	3.Stba/MEBA	4.Prepost
	set startValue=2
	REM set startValue=4
	set endValue=!startValue!
	REM set endValue=4
REM Number of Processors
	set numPro=2
	REM set numPro=4

REM for /l %%z in ( 41 1 48 ) do (
for %%z in ( 1 2 ) do (

	call initials.bat
	REM ==================================================================================================

	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=303416a
		set interval=1009 10 1009
		set interval2=12 1 12

		REM set append=1
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=303416a
		set interval=2009 10 2039
		set interval2=12 1 12

		REM set append=1
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)

	REM ==================================================================================================
	call calc.bat
)

endlocal
goto :takeTime
REM pause
:takeTime
timeout /t 100
REM ==================================================================================================
REM END OF FILE
REM ==================================================================================================

