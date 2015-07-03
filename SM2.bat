@echo off

setlocal EnableDelayedExpansion

REM anfang Selecting Licenses
		REM 1.	Structural 4 core
		REM 2.	Structura 2 core
		REM 3.	Prfnls
		REM 4.	Stba
		REM 6.	Prepost
	set startValue=2
	set endValue=!startValue!
	REM set endValue=3
REM ende

REM anfang select drive
	REM 1: x: ; 2: s:
	set d=2
REM ende

REM for /l %%z in (1 26 27) do (
for %%z in ( 25 ) do (

	REM anfang Projekte
	REM ==================================================================================================

	REM anfang 1 - 279914 - Vertikalstrebe ACS
	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=279914
		set interval=2000 10 2000
		set interval2=1 1 1
	)
	REM ende

	REM anfang 2 - 279914b - Vertikalstrebe ACS Druck
	REM if %%z equ 2 (
		REM REM goto :takeTime
		REM set proj_Num=279914b
		REM set interval=1 1000 4001
		REM set interval2=21 10 21
	REM )
	REM ende

	REM anfang 3 - 279914b - Vertikalstrebe ACS Zug
	if %%z equ 3 (
		REM goto :takeTime
		set proj_Num=279914b
		set interval=11 1000 4011
		set interval2=21 10 21
	)
	REM ende

	REM anfang 4 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume with TEMP
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1009 10 1009
		set interval2=21 1 22
	)
	REM ende

	REM anfang 5 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume with TEMP -ve Verformung
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1119 10 1199
		set interval2=21 1 22
	)
	REM ende

	REM anfang 6 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume
	if %%z equ 6 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1009 10 1099
		set interval2=1 1 2
	)
	REM ende

	REM anfang 7 - 287715a - S-978 Wuhan Line 8 Lot 3 -ver Verformung Volume
	if %%z equ 7 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1119 10 1199
		set interval2=1 1 2
	)
	REM ende

	REM anfang 8 - 281914a - B014 DrehmomentStutze
	if %%z equ 8 (
		REM goto :takeTime
		set proj_Num=281914a
		set interval=0 1000 0
		set interval2=1 1 1
	)
	REM ende

	REM anfang 9 - 287915 - S-972 Metro Lima
	if %%z equ 9 (
		REM goto :takeTime
		set proj_Num=287915
		set interval=1009 10 1099
		set interval2=1 2 3
	)
	REM ende

	REM anfang 10 - 287915 - S-972 Metro Lima -ver Verformung
	if %%z equ 10 (
		REM goto :takeTime
		set proj_Num=287915
		set interval=1119 10 1199
		set interval2=1 2 3
	)
	REM ende

	REM anfang 11 - 290215 - S991 Tragrahmen
	if %%z equ 11 (
		REM goto :takeTime
		set proj_Num=290215
		set interval=1000 1000 1000
		REM set interval2=91 1 91
		set interval2=51 1 52
		REM set interval2=1 1 1
	)
	REM ende

	REM anfang 12 - 290215 - S-991 Tragrahmen
	if %%z equ 12 (
		REM goto :takeTime
		set proj_Num=290215
		set interval=1000 10 1000
		set interval2=11 1 12
	)
	REM ende

	REM anfang 13 - 290515 - Eppenbergtunnel
	if %%z equ 13 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1009 10 1099
		set interval2=1 1 4
	)
	REM ende

	REM anfang 14 - 290515 - Eppenbergtunnel -ver Verformung
	if %%z equ 14 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1119 10 1199
		set interval2=1 1 4
	)
	REM ende

	REM anfang 18 - 288115 - BypassTunnel
	if %%z equ 18 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=1029 10 1029
		set interval2=1 1 5
	)
	REM ende

	REM anfang 19 - 288115 - BypassTunnel -ver Verformung
	if %%z equ 19 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=1119 10 1179
		set interval2=1 1 5
	)
	REM ende

	REM anfang 20 - 288115 - BypassTunnel 70 zusatz
	if %%z equ 20 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=1119 10 1119
		set interval2=51 10 51
	)
	REM ende

	REM anfang 21 - 288115 - BypassTunnel -ver Verformung 70 zusatz
	if %%z equ 21 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=1119 10 1199
		set interval2=31 10 51
	)
	REM ende

	REM anfang 22 - 281314a - B014 Tragrahm
	if %%z equ 22 (
		REM goto :takeTime
		set proj_Num=281314a
		set interval=1 1 1
		set interval2=1 1 2
	)
	REM ende

	REM anfang 23 - 285614 - S958 Schildschwanz
	if %%z equ 23 (
		REM goto :takeTime
		set proj_Num=285614
		set interval=1009 10 1099
		set interval2=1 1 5
	)
	REM ende

	REM anfang 24 - 285614 - S958 Schildschwanz
	if %%z equ 24 (
		REM goto :takeTime
		set proj_Num=285614
		set interval=5009 10 5009
		set interval2=23 1 23
	)
	REM ende

	REM anfang 25 - 289815 - D-778 Schneckenfoerderer
	if %%z equ 25 (
		REM goto :takeTime
		set proj_Num=289815
		set interval=1001 10 1001
		set interval2=1 1 1
	)
	REM ende

	REM anfang 29 - 288915 - S-970 Fahrträger
	if %%z equ 29 (
		REM goto :takeTime
		set proj_Num=288915
		set interval=1000 10 1020
		set interval2=11 1 11
	)
	REM ende

	REM anfang 32 - 289415a - S-979 Schildschwanz
	if %%z equ 32 (
		REM goto :takeTime
		set proj_Num=289415a
		set interval=1029 10 1099
		set interval2=10 1 10
	)
	REM ende

	REM anfang 33 - 289415a - S-979 Schildschwanz -ve
	if %%z equ 33 (
		REM goto :takeTime
		set proj_Num=289415a
		set interval=1129 10 1129
		set interval2=10 1 10
	)
	REM ende

	REM anfang 34 - 289415aa - S-979 Schildschwanz
	if %%z equ 34 (
		REM goto :takeTime
		set proj_Num=289415aa
		set interval=1009 10 1099
		set interval2=7 1 9
	)
	REM ende

	REM anfang 35 - 289415aa - S-979 Schildschwanz -ve
	if %%z equ 35 (
		REM goto :takeTime
		set proj_Num=289415aa
		set interval=1009 10 1009
		set interval2=9 1 9
	)
	REM ende

	REM anfang 36 - 289415z - S-974 Schildschwanz
	if %%z equ 36 (
		REM goto :takeTime
		set proj_Num=289415z
		set interval=1009 10 1099
		set interval2=7 1 8
	)
	REM ende

	REM anfang 37 - 289415z - S-974 Schildschwanz -ve
	if %%z equ 37 (
		REM goto :takeTime
		set proj_Num=289415z
		set interval=1179 10 1179
		set interval2=7 1 7
	)
	REM ende

	REM anfang 38 - 289415zz - S-974 Schildschwanz
	if %%z equ 38 (
		REM goto :takeTime
		set proj_Num=289415zz
		set interval=1009 10 1099
		set interval2=4 1 6
	)
	REM ende

	REM anfang 39 - 289415zz - S-974 Schildschwanz -ve
	if %%z equ 39 (
		REM goto :takeTime
		set proj_Num=289415zz
		set interval=1119 10 1199
		set interval2=4 1 6
	)
	REM ende


	REM 99 anfang TEMPORARY CALCULATIONS
	if %%z equ 99 (
		REM goto :takeTime
		set proj_Num=Test
		set interval=1019 10 1019
		set interval2=1 1 1
	)
	REM ende

	REM ==================================================================================================
	REM ende Projekte

REM anfang NO NEED to CHANGE BELOW

	echo Launch dir: "%~dp0"
	echo Current dir: "%CD%"
	cd /D "%~dp0"
	echo Changed to Current dir: "%CD%"
	echo ....

	del D:\!proj_Num!\ANSYS\*.abt
	del D:\!proj_Num!\ANSYS\*.lock

	set ans_consec=YES
	set ansys_lock=on

	if %d% equ 1 (
		net use x: /dele /y
		net use x: \\SERVER\server_lw_d\Maharjan\!proj_Num! /y
		set "location=x:"
	)
	if %d% equ 2 (
		net use s: /dele /y
		net use s: \\SERVER\server_lw_d\Maharjan\!proj_Num! /y
		set "location=s:"
	)
	echo Source Location: !location!

	REM goto :takeTime

	for /l %%m in (!interval!) do (
		set par=%%m
		set num=4
		call addZeros.bat :addZero
		set job=!par!
		@echo on
		echo JOB: !job!
		@echo off
		for /l %%n in (!interval2!) do (
			set par=%%n
			set num=2
			call addZeros.bat :addZero
			set lk=!par!
			@echo on
			echo ...
			echo ......
			echo New Job With
			echo JOB: !job!
			echo LK: !lk!
			echo __________Calling CALC.BAT__________ & echo. & echo.
			@echo off
			call CalcLoop.bat :calc
			REM timeout /t 10
			call Delete.bat :delFiles
			@echo on
			echo ____________________________________
			echo Job Finished.... ..... ............
			echo ____________________________________
			@echo off
		)
	)
REM ende NOT Needed TO CHANGE
 )
endlocal
goto :takeTime
pause
:takeTime
timeout /t 100
REM ==================================================================================================
REM END OF FILE
REM ==================================================================================================
