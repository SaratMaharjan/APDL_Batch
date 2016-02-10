@echo off
set /a waitSec=3600*0/4
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

REM anfang Selecting Licenses and Processors
	REM set appPath="C:\Program Files\ANSYS Inc\v162\ANSYS\bin\winx64\ansys162.exe"
	set appPath="C:\Program Files\ANSYS Inc\v170\ANSYS\bin\winx64\ansys170.exe"
	REM	1.Structural/ANSYS	2.Prfnls	3.Stba/MEBA	4.Prepost
		set startValue=1
		set endValue=!startValue!
		REM set endValue=4
	REM Number of Processors
		set numPro=2
		REM set numPro=4
	REM Initial File Name: 1-file; 2-file2
		set d=1
		REM set d=2
REM ende

REM for /l %%z in ( 1 1 9 ) do (
for %%z in ( 99 ) do (
REM for %%z in ( 1 ) do (
REM for %%z in ( 31 ) do (

	call initials.bat
	REM anfang Projekte (Active: 1-50)
	REM ==================================================================================================

	REM REM anfang 1 - 293715 - --- Spreizeinheit
	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=293715
		set interval=7000 1 7000
		set interval2=1 10 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 2 - 293715 - --- Spreizeinheit
	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=293715
		set interval=5010 1 5011
		set interval2=1 10 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 4 - 294815 - S-1007 SSW
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=294815
		set interval=1090 10 1090
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 5 - 294815 - S-1007 SSW -ve
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=294815
		set interval=1110 10 1110
		set interval2=14 2 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 6 - 294815 - S-1007 SSW Param Study
	if %%z equ 6 (
		REM goto :takeTime
		set proj_Num=294815
		set interval=1111 1 1119
		set interval2=14 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 7 - 296316 - S-1012 Bözberg
	if %%z equ 7 (
		REM goto :takeTime
		set proj_Num=296316
		set interval=1000 10 1000
		REM set interval=1050 10 1090
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 8 - 296316 - S-1012 Bözberg -ve
	if %%z equ 8 (
		REM goto :takeTime
		set proj_Num=296316
		set interval=1110 10 1190
		REM set interval=1110 10 1150
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 9 - 296316 - S-1012 Bözberg Special
	if %%z equ 9 (
		REM goto :takeTime
		set proj_Num=296316
		set interval=1110 10 1110
		set interval2=12 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		set redirect=1
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

	REM REM anfang 15 - 294115 - S900 VOLU SSW
	if %%z equ 15 (
		REM goto :takeTime
		set proj_Num=294115
		set interval=9070 10 9070
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 16 - 294115 - S900 VOLU SSW -ve
	if %%z equ 16 (
		REM goto :takeTime
		set proj_Num=294115
		set interval=1180 10 1180
		set interval2=12 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 17 - 297116 - S977 SSW
	if %%z equ 17 (
		REM goto :takeTime
		set proj_Num=297116
		set interval=1000 10 1090
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 18 - 297116 - S977 SSW -ve
	if %%z equ 18 (
		REM goto :takeTime
		set proj_Num=297116
		set interval=1110 10 1190
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 19 - 297116 - S977 SSW
	if %%z equ 19 (
		REM goto :takeTime
		set proj_Num=297116
		set interval=4000 10 4090
		set interval2=13 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 20 - 297116 - S977 SSW -ve
	if %%z equ 20 (
		REM goto :takeTime
		set proj_Num=297116
		set interval=4110 10 4190
		set interval2=13 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 21 - 297616 - Tel Aviv
	if %%z equ 21 (
		REM goto :takeTime
		set proj_Num=297616
		set interval=1000 10 1090
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 22 - 297616 - Tel Aviv -ve
	if %%z equ 22 (
		REM goto :takeTime
		set proj_Num=297616
		set interval=1110 10 1110
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
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
		set interval2=11 1 12

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
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende


	REM 99 anfang TEMPORARY CALCULATIONS §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
	if %%z equ 99 (
		REM goto :takeTime
		set proj_Num=VoluSSW
		set interval=1000 1 1000
		set interval2=11 10 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=0
		REM set sourcePre=R:\maharjan
	)
	REM ende -----------------------------------------------------------

	REM anfang ################### PROJEKTE: not Active (ab 51) #################

	REM anfang 51 - D-768 - Haltevorrichtung
	if %%z equ 51 (
		REM goto :takeTime
		set proj_Num=293315
		set interval=1000 1 1001
		set interval2=51 40 51

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

		REM anfang 52 - 290915 - S990 Bohrkopf
		if %%z equ 52 (
			REM goto :takeTime
			set proj_Num=290915
			set interval=1001 1 1005
			set interval2=1 1 1

			REM set append=1
			REM set pathBefore=D:
			REM set pathAfter=ANSYS
			REM set redirect=0
			REM set execute=1
			REM set sourcePre=R:\maharjan
		)
		REM ende

		REM anfang 53 - 291915 - S985 Schneidrad
		if %%z equ 53 (
			REM goto :takeTime
			set proj_Num=291915
			set interval=1000 1 1000
			set interval2=1 1 2

			REM set append=1
			REM set pathBefore=D:
			REM set pathAfter=ANSYS
			REM set redirect=0
			REM set execute=1
			REM set sourcePre=R:\maharjan
		)
		REM ende

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

