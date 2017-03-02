@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

REM anfang Selecting Licenses and Processors
	set appPath="C:\Program Files\ANSYS Inc\v180\ANSYS\bin\winx64\ansys180.exe"
	REM set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"
	REM	1.Structural/ANSYS	2.Mech_2	3.Stba/MEBA	4.Prepost
		set startValue=2
		REM set startValue=4
		set endValue=!startValue!
		REM set endValue=4
	REM Number of Processors
		set numPro=2
		REM set numPro=4
REM ende

for %%z in ( 1 ) do (
REM for %%z in ( 100 ) do (

	call initials.bat
	REM anfang Projekte (Active: 1-50)
	REM ==================================================================================================

	REM REM anfang 1 - 310117 - Forderschnecke
	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=310117
		set interval=2 10 2
		set interval2=8 1 8

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 2 - 310117 - Forderschnecke
	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=310117
		set interval=0 10 0
		set interval2=1 1 7

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 3 - 308817 - BBM1500 Vortriebsrohr
	if %%z equ 3 (
		REM goto :takeTime
		set proj_Num=308817
		set interval=1000 10 1000
		set interval2=2 1 2

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 7 - 303416 - S-1052
	if %%z equ 7 (
		REM goto :takeTime
		set proj_Num=303416
		set interval=2089 10 2089
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 8 - 303416 - S-1052 -ve
	if %%z equ 8 (
		REM goto :takeTime
		set proj_Num=303416
		set interval=2039 10 2039
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 9 - 309317 - S-1078 Schneckenförderer
	if %%z equ 9 (
		REM goto :takeTime
		set proj_Num=309317
		set interval=1000 10 1000
		set interval2=4 1 4

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 11 - 309717 - Hinkley 1088
	if %%z equ 11 (
		REM goto :takeTime
		set proj_Num=309717
		set interval=1006 10 1096
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 12 - 309717 - Hinkley 1088 -ve
	if %%z equ 12 (
		REM goto :takeTime
		set proj_Num=309717
		set interval=1116 10 1196
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 13 - 309817 - S-1071 Fahrträger
	if %%z equ 13 (
		REM goto :takeTime
		set proj_Num=309817
		set interval=1000 10 1000
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
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
		set interval=2149 10 2149
		set interval2=12 10 12

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

