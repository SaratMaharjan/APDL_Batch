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

REM for /l %%z in ( 21 1 26 ) do (
REM for %%z in ( 17 ) do (
for %%z in ( 19 ) do (
REM for %%z in ( 17 18 ) do (
REM for %%z in ( 47 48 49 50 ) do (
REM for %%z in ( 38 39 40 41 ) do (
REM for %%z in ( 15 16 ) do (
REM for %%z in ( 2 ) do (
REM for %%z in ( 4 5 ) do (
REM for %%z in ( 21 ) do (
REM for %%z in ( 99 ) do (

	call initials.bat
	REM anfang Projekte (Active: 1-50)
	REM ==================================================================================================

	REM REM anfang 2 - 299616 - S-1026 Machine
	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=299616
		set interval=2009 10 2009
		set interval2=11 1 11

		REM set append=1
		set pathBefore=F:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 3 - 299616 - S-1026 Machine
	if %%z equ 3 (
		REM goto :takeTime
		set proj_Num=299616
		set interval=2119 10 2199
		set interval2=11 1 13

		REM set append=1
		set pathBefore=F:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 4 - 299616 - S-1026 Machine
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=299616
		set interval=2049 10 2099
		set interval2=21 1 23

		REM set append=1
		set pathBefore=F:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 5 - 299616 - S-1026 Machine
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=299616
		set interval=2119 10 2199
		set interval2=21 1 23

		REM set append=1
		set pathBefore=F:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 7 - 300016 S-1012 Spreizeinheit
	if %%z equ 7 (
		REM goto :takeTime
		set proj_Num=300016
		set interval=1001 1 1001
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 8 - 300016a S-1012 Spreizeinheit LOAD ARM
	if %%z equ 8 (
		REM goto :takeTime
		set proj_Num=300016a
		set interval=1003 1 1003
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 10 - 295815 - S-738 Förderschnecke
	if %%z equ 10 (
		REM goto :takeTime
		set proj_Num=295815
		set interval=3 1000 3
		set interval2=31 10 31

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 11 - 296516 - Gubristtunnel SSW
	if %%z equ 11 (
		REM goto :takeTime
		set proj_Num=296516
		set interval=1000 10 1090
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 12 - 296516 - Gubristtunnel SSW -ve
	if %%z equ 12 (
		REM goto :takeTime
		set proj_Num=296516
		set interval=1110 10 1190
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 13 - 301016 - S-1058 Machine Xiamen
	if %%z equ 13 (
		REM goto :takeTime
		set proj_Num=301016
		set interval=2059 10 2099
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=E:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 14 - 301016 - S-1058 Machine Xiamen
	if %%z equ 14 (
		REM goto :takeTime
		set proj_Num=301016
		set interval=2189 10 2199
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 15 - 301016 - S-1058 Machine Xiamen
	if %%z equ 15 (
		REM goto :takeTime
		set proj_Num=301016
		set interval=2089 10 2099
		set interval2=21 1 23

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 16 - 301016 - S-1058 Machine Xiamen
	if %%z equ 16 (
		REM goto :takeTime
		set proj_Num=301016
		set interval=2119 10 2199
		set interval2=21 1 23

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 17 - 301616 - D-768 Vortriebsrohr
	if %%z equ 17 (
		REM goto :takeTime
		set proj_Num=301616
		set interval=1000 10 1030
		set interval2=1 1 2

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 18 - 301616 - D-768 Vortriebsrohr
	if %%z equ 18 (
		REM goto :takeTime
		set proj_Num=301616
		set interval=1110 10 1130
		set interval2=1 1 2

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 19 - 301616 - D-768 Vortriebsrohr
	if %%z equ 19 (
		REM goto :takeTime
		set proj_Num=301616
		set interval=1000 10 1000
		set interval2=5 1 5

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 20 - 301616a - D-768 Vortriebsrohr-Tür
	if %%z equ 20 (
		REM goto :takeTime
		set proj_Num=301616a
		set interval=6000 10 6000
		set interval2=1 1 1

		REM set append=1
		set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 21 - 301316 - S-1042
	if %%z equ 21 (
		REM goto :takeTime
		set proj_Num=301316
		set interval=1118 10 1118
		set interval2=14 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 22 - 301316 - S-1042 -ve
	if %%z equ 22 (
		REM goto :takeTime
		set proj_Num=301316
		set interval=1128 10 1128
		set interval2=14 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 31 - 296816 - S1018-19
	if %%z equ 31 (
		REM goto :takeTime
		set proj_Num=296816
		set interval=1012 10 1092
		set interval2=14 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 32 - 296816 - S1018-19 -ve
	if %%z equ 32 (
		REM goto :takeTime
		set proj_Num=296816
		set interval=1112 10 1192
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 33 - 296816a - S295
	if %%z equ 33 (
		REM goto :takeTime
		set proj_Num=296816a
		set interval=1000 10 1090 
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 34 - 296816a - s295 -ve
	if %%z equ 34 (
		REM goto :takeTime
		set proj_Num=296816a
		set interval=1110 10 1190
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 38 - 300516 - S1034
	if %%z equ 38 (
		REM goto :takeTime
		set proj_Num=300516
		set interval=2009 10 2099
		set interval2=11 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 39 - 300516 - S1034 -ve
	if %%z equ 39 (
		REM goto :takeTime
		set proj_Num=300516
		set interval=2119 10 2199
		set interval2=11 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 40 - 300516 - S1034
	if %%z equ 40 (
		REM goto :takeTime
		set proj_Num=300516
		set interval=2009 10 2099
		set interval2=21 1 24

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 41 - 300516 - S1034
	if %%z equ 41 (
		REM goto :takeTime
		set proj_Num=300516
		set interval=2199 10 2199
		set interval2=21 1 24

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 42 - 300516a - S1034ssw
	if %%z equ 42 (
		REM goto :takeTime
		set proj_Num=300516a
		set interval=1017 10 1037
		set interval2=23 2 23

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 43 - 300516a - S1034ssw
	if %%z equ 43 (
		REM goto :takeTime
		set proj_Num=300516a
		set interval=1117 10 1197
		set interval2=22 2 24

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 46 - 299416 - S-979 Schneckenförderer
	if %%z equ 46 (
		REM goto :takeTime
		set proj_Num=299416
		set interval=1000 10 1000
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=E:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
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

