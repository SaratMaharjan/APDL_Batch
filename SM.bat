@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

REM anfang Selecting Licenses and Processors
	set appPath="C:\Program Files\ANSYS Inc\v180\ANSYS\bin\winx64\ansys180.exe"
	REM	1.Structural/ANSYS	2.Mech_2	3.Stba/MEBA	4.Prepost
		set startValue=3
		REM set startValue=4
		set endValue=!startValue!
		REM set endValue=4
	REM Number of Processors
		set numPro=1
		REM set numPro=4
REM ende

REM for /l %%z in ( 41 1 48 ) do (
REM for %%z in ( 3 ) do (
for %%z in ( 4 5 3 6 ) do (
REM for %%z in ( 100 ) do (

	call initials.bat
	REM anfang Projekte (Active: 1-50)
	REM ==================================================================================================

	REM REM anfang 1 - 308917 - S-1087 Hinkley
	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=308917
		set interval=2006 10 2096
		set interval2=13 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 2 - 308917 - S-1087 Hinkley -ve
	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=308917
		set interval=2116 10 2196
		set interval2=13 1 13

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
		set interval2=1 2 3

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 4 - 309017 - Brenner Basis Baulos
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=309017
		set interval=2009 10 2099
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 5 - 309017 - Brenner Basis Baulos -ve
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=309017
		set interval=2119 10 2199
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 6 - 308817 - BBM1500 Vortriebsrohr
	if %%z equ 6 (
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

