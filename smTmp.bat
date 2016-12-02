@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

REM anfang Selecting Licenses and Processors
	REM set appPath="C:\Program Files\ANSYS Inc\v162\ANSYS\bin\winx64\ansys162.exe"
	set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"
	REM	1.Structural/ANSYS	2.Mech_2	3.Stba/MEBA	4.Prepost
		set startValue=4
		REM set startValue=4
		set endValue=!startValue!
		REM set endValue=4
	REM Number of Processors
		set numPro=1
		REM set numPro=4
REM ende

REM for /l %%z in ( 41 1 48 ) do (
REM for %%z in ( 10 ) do (
for %%z in ( 4 ) do (
REM for %%z in ( 99 ) do (

	call initials.bat
	REM anfang Projekte (Active: 1-50)
	REM ==================================================================================================

	REM REM anfang 4 - 304516 - S-1053 Dubai Metro
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=304516
		set interval=2009 10 2009
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 5 - 304516 - S-1053 Dubai Metro -ve
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=304516
		set interval=2119 10 2199
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 6 - 304516 - S-1053 Dubai Metro
	if %%z equ 6 (
		REM goto :takeTime
		set proj_Num=304516
		set interval=2009 10 2099
		set interval2=21 1 22

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 7 - 304516 - S-1053 Dubai Metro -ve
	if %%z equ 7 (
		REM goto :takeTime
		set proj_Num=304516
		set interval=2119 10 2199
		set interval2=21 1 22

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 9 - 306416 - M-2141M
	if %%z equ 9 (
		REM goto :takeTime
		set proj_Num=306416
		set interval=2002 10 2002
		set interval2=11 10 51

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 10 - 306416 - M-2141M -ve
	if %%z equ 10 (
		REM goto :takeTime
		set proj_Num=306416
		set interval=2019 10 2019
		set interval2=11 10 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
		REM set sourceFile=s1resume.in
	)
	REM REM ende



	REM 99 anfang TEMPORARY CALCULATIONS §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
	if %%z equ 99 (
		REM goto :takeTime
		set proj_Num=xxxxx
		set interval=2119 10 2199
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=0
		REM set extVar=999999
		REM set sourcePre=R:\maharjan
	)
	REM ende -----------------------------------------------------------

	REM 100 anfang only Runs CP7 macro
	if %%z equ 100 (
		REM goto :takeTime
		set proj_Num=xxxxx
		set interval=2029 10 2099
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=0
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM ende -----------------------------------------------------------
	REM ==================================================================================================
	REM ende Projekte
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

