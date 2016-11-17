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
		set startValue=2
		REM set startValue=4
		set endValue=!startValue!
		REM set endValue=4
	REM Number of Processors
		set numPro=2
		REM set numPro=4
REM ende

REM for /l %%z in ( 41 1 48 ) do (
for %%z in ( 9 10 ) do (
REM for %%z in ( 12 ) do (
REM for %%z in ( 99 ) do (

	call initials.bat
	REM anfang Projekte (Active: 1-50)
	REM ==================================================================================================

	REM REM anfang 1 - 303416 - South Hartford
	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=303416
		set interval=2009 10 2009
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 2 - 303416 - South Hartford -ve
	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=303416
		set interval=2009 10 2039
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 3 - 306116 S-1068 Zentrumstopf
	if %%z equ 3 (
		REM goto :takeTime
		set proj_Num=306116
		set interval=2000 10 2000
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 4 - 304516 - S-1053 Dubai Metro
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=304516
		set interval=2009 10 2009
		set interval2=11 10 21

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
		set interval=1119 10 1199
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
		set interval=1009 10 1099
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
		set interval=1119 10 1199
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

	REM REM anfang 8 - 304516 - S-1053 Dubai Metro Montage
	if %%z equ 8 (
		REM goto :takeTime
		set proj_Num=304516a
		set interval=1000 10 1000
		set interval2=1 1 1

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
		set interval=1009 10 1009
		set interval2=21 10 21

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
		set interval=2009 10 2009
		set interval2=21 1 21

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende



	REM 99 anfang TEMPORARY CALCULATIONS §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
	if %%z equ 99 (
		REM goto :takeTime
		set proj_Num=Test
		set interval=1000 1 1000
		set interval2=1 10 1

		REM set append=1
		set pathBefore=D:
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
		set proj_Num=xxxxxx
		set interval=1000 1 1000
		set interval2=1 10 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=0
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM ende -----------------------------------------------------------

	REM anfang ################### PROJEKTE: not Active (ab 51) #################
	REM REM anfang 51 - D-768 - Haltevorrichtung
	REM if %%z equ 51 (
		REM REM goto :takeTime
		REM set proj_Num=293315
		REM set interval=1000 1 1001
		REM set interval2=51 40 51

		REM REM set append=1
		REM REM set pathBefore=D:
		REM REM set pathAfter=ANSYS
		REM REM set redirect=0
		REM REM set execute=1
		REM set extVar=9
		REM REM set sourcePre=R:\maharjan
	REM )
	REM REM ende

		REM REM anfang 52 - 290915 - S990 Bohrkopf
		REM if %%z equ 52 (
			REM REM goto :takeTime
			REM set proj_Num=290915
			REM set interval=1001 1 1005
			REM set interval2=1 1 1

			REM REM set append=1
			REM REM set pathBefore=D:
			REM REM set pathAfter=ANSYS
			REM REM set redirect=0
			REM REM set execute=1
			REM set extVar=9
			REM REM set sourcePre=R:\maharjan
		REM )
		REM REM ende

		REM REM anfang 53 - 291915 - S985 Schneidrad
		REM if %%z equ 53 (
			REM REM goto :takeTime
			REM set proj_Num=291915
			REM set interval=1000 1 1000
			REM set interval2=1 1 2

			REM REM set append=1
			REM REM set pathBefore=D:
			REM REM set pathAfter=ANSYS
			REM REM set redirect=0
			REM REM set execute=1
			REM set extVar=9
			REM REM set sourcePre=R:\maharjan
		REM )
		REM REM ende
	REM ende ################### PROJEKTE: not Active #################

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

