@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

REM anfang Selecting Licenses and Processors
	REM set appPath="C:\Program Files\ANSYS Inc\v162\ANSYS\bin\winx64\ansys162.exe"
	set appPath="C:\Program Files\ANSYS Inc\v170\ANSYS\bin\winx64\ansys170.exe"
	REM	1.Structural/ANSYS	2.Prfnls	3.Stba/MEBA	4.Prepost
		set startValue=2
		REM set startValue=4
		set endValue=!startValue!
		REM set endValue=4
	REM Number of Processors
		set numPro=2
		REM set numPro=4
REM ende

REM for /l %%z in ( 41 1 48 ) do (
for %%z in ( 16 ) do (
REM for %%z in ( 100 ) do (
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
		set interval=2119 10 2199
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

	REM REM anfang 3 - 303416 - South Hartford
	if %%z equ 3 (
		REM goto :takeTime
		set proj_Num=303416
		set interval=2009 10 2099
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

	REM REM anfang 4 - 303416 - South Hartford -ve
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=303416
		set interval=2119 10 2199
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

	REM REM anfang 5 - 299616 - S-1026 Machine
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=299616
		set interval=2069 10 2099
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 6 - 299616 - S-1026 Machine
	if %%z equ 6 (
		REM goto :takeTime
		set proj_Num=299616
		set interval=2119 10 2199
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=F:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 7 - 299616 - S-1026 Machine
	if %%z equ 7 (
		REM goto :takeTime
		set proj_Num=299616
		set interval=2009 10 2099
		set interval2=21 1 23

		REM set append=1
		set pathBefore=F:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 8 - 299616 - S-1026 Machine
	if %%z equ 8 (
		REM goto :takeTime
		set proj_Num=299616
		set interval=2119 10 2199
		set interval2=21 1 23

		REM set append=1
		set pathBefore=F:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 9 - 300016 S-1012 Spreizeinheit
	if %%z equ 9 (
		REM goto :takeTime
		set proj_Num=300016
		set interval=1001 1000 1001
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 10 - 300016a S-1012 Spreizeinheit - ARM
	if %%z equ 10 (
		REM goto :takeTime
		set proj_Num=300016a
		set interval=1002 1000 1002
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 11 - 303816 MI-003 Saugkasten
	if %%z equ 11 (
		REM goto :takeTime
		set proj_Num=303816
		set interval=2000 1000 2000
		set interval2=1 1 6

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 13 - 304216 - S-1068 Sutong
	if %%z equ 13 (
		REM goto :takeTime
		set proj_Num=304216
		set interval=1018 10 1098
		set interval2=15 1 15

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 14 - 304216 - S-1068 Sutong
	if %%z equ 14 (
		REM goto :takeTime
		set proj_Num=304216
		set interval=1118 10 1198
		set interval2=15 1 15

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 16 - 303916 - S-1020 Bohrkopf
	if %%z equ 16 (
		REM goto :takeTime
		set proj_Num=303916
		set interval=1000 10 1000
		set interval2=1 1 5

		REM set append=1
		REM set pathBefore=D:
		set pathAfter=ANSYS_
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 21 - 301316 - S-1042
	if %%z equ 21 (
		REM goto :takeTime
		set proj_Num=301316
		set interval=1068 10 1098
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 22 - 301316 - S-1042 -ve
	if %%z equ 22 (
		REM goto :takeTime
		set proj_Num=301316
		set interval=1118 10 1198
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 26 - 303116 - Shantou SSW
	if %%z equ 26 (
		REM goto :takeTime
		set proj_Num=303116
		set interval=1096 10 1096
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 27 - 303116 - Shantou SSW -ve
	if %%z equ 27 (
		REM goto :takeTime
		set proj_Num=303116
		set interval=2176 10 2196
		set interval2=11 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 28 - 303216 - Beijing
	if %%z equ 28 (
		REM goto :takeTime
		set proj_Num=303216
		set interval=1016 10 1196
		set interval2=11 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 29 - 303216 - Beijing
	if %%z equ 29 (
		REM goto :takeTime
		set proj_Num=303216
		set interval=2016 10 2196
		set interval2=11 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 32 - 296816 - S1018-19
	if %%z equ 32 (
		REM goto :takeTime
		set proj_Num=296816
		set interval=1012 10 1092
		set interval2=14 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 33 - 296816 - S1018-19 -ve
	if %%z equ 33 (
		REM goto :takeTime
		set proj_Num=296816
		set interval=1112 10 1192
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 34 - 296816a - S295
	if %%z equ 34 (
		REM goto :takeTime
		set proj_Num=296816a
		set interval=1000 10 1090 
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 35 - 296816a - s295 -ve
	if %%z equ 35 (
		REM goto :takeTime
		set proj_Num=296816a
		set interval=1110 10 1190
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 41 - 302716 - D-827 SSW
	if %%z equ 41 (
		REM goto :takeTime
		set proj_Num=302716
		set interval=1098 10 1098
		set interval2=16 1 16

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set extVar=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 42 - 302716 - D-827 SSW -ve
	if %%z equ 42 (
		REM gouo :takeTime
		set proj_Num=302716
		set interval=1198 10 1198
		set interval2=16 1 16

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 43 - 302716a - D-827 SSW
	if %%z equ 43 (
		REM goto :takeTime
		set proj_Num=302716a
		set interval=1098 10 1098
		set interval2=16 1 16

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set extVar=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 44 - 302716a - D-827 SSW -ve
	if %%z equ 44 (
		REM goto :takeTime
		set proj_Num=302716a
		set interval=1198 10 1198
		set interval2=16 1 16

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set extVar=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 45 - 302716b - D-827 SSW
	if %%z equ 45 (
		REM goto :takeTime
		set proj_Num=302716b
		set interval=1098 10 1098
		set interval2=16 1 16

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		set extVar=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 46 - 302716b - D-827 SSW -ve
	if %%z equ 46 (
		REM goto :takeTime
		set proj_Num=302716b
		set interval=1198 10 1198
		set interval2=16 1 16

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		set extVar=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 47 - 302716i - D-827 SSW
	if %%z equ 47 (
		REM goto :takeTime
		set proj_Num=302716i
		set interval=1018 10 1018
		set interval2=16 1 16

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 48 - 302716i - D-827 SSW -ve
	if %%z equ 48 (
		REM goto :takeTime
		set proj_Num=302716i
		set interval=1098 10 1098
		set interval2=16 1 16

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende



	REM REM anfang 56 - 299816 - S-764 Maschine
	if %%z equ 56 (
		REM goto :takeTime
		set proj_Num=299816
		set interval=9411 100 9411
		set interval2=12 1 12

		REM set append=1
		set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set extVar=9
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 57 - 299816 - S-764 Maschine
	if %%z equ 57 (
		REM goto :takeTime
		set proj_Num=299816
		set interval=9311 100 9311
		set interval2=13 1 13

		REM set append=1
		set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
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
		set proj_Num=7777
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

