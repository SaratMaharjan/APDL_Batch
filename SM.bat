@echo off

setlocal EnableDelayedExpansion

REM anfang Selecting Licenses
	set appPath="C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe"
		REM	1.	Structural4core		2.	Structural2core		3.	Prfnls		4.	Stba		6.	Prepost
	set startValue=3
	set endValue=!startValue!
	REM set endValue=6
REM ende

REM anfang select drive
	REM 1: x: and file; 2: s: and file2
	set d=1
	REM set d=2
REM ende

REM anfang Redirect/execute or NOT
	set redirect=0
	set execute=1
REM ende

REM for /l %%z in ( 28 41 42 ) do (
REM for %%z in ( 61 ) do (
for %%z in ( 43 44 45 46  ) do (

	REM anfang Projekte
	REM ==================================================================================================

	REM anfang 1 - 279914 - Vertikalstrebe ACS
	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=279914
		set interval=1000 1000 1000
		set interval2=2 1 2
		set append=1
	)
	REM ende

	REM anfang 2 - 279914 - Vertikalstrebe ACS EW Druck ohne 2T
	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=279914
		set interval=1001 1 1001
		set interval2=1 1 1
		set append=1
	)
	REM ende

	REM anfang 3 - 279914 - Vertikalstrebe ACS EW mit 2T
	if %%z equ 3 (
		REM goto :takeTime
		set proj_Num=279914
		set interval=2000 1 2000
		set interval2=1 1 1
		set append=1
	)
	REM ende

	REM REM anfang 2 - 279914b - Vertikalstrebe ACS Druck
	REM REM if %%z equ 2 (
		REM REM REM goto :takeTime
		REM REM set proj_Num=279914b
		REM REM set interval=1 1000 4001
		REM REM set interval2=21 10 21
		REM set append=1
	REM REM )
	REM REM ende

	REM REM anfang 3 - 279914b - Vertikalstrebe ACS Zug
	REM if %%z equ 3 (
		REM REM goto :takeTime
		REM set proj_Num=279914b
		REM set interval=11 1000 4011
		REM set interval2=21 10 21
		REM set append=1
	REM )
	REM REM ende

	REM anfang 4 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume with TEMP
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1009 10 1009
		set interval2=21 1 22
		set append=1
	)
	REM ende

	REM anfang 5 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume with TEMP -ve Verformung
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1119 10 1199
		set interval2=21 1 22
		set append=1
	)
	REM ende

	REM anfang 6 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume
	if %%z equ 6 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1009 10 1099
		set interval2=1 1 2
		set append=1
	)
	REM ende

	REM anfang 7 - 287715a - S-978 Wuhan Line 8 Lot 3 -ver Verformung Volume
	if %%z equ 7 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1119 10 1199
		set interval2=1 1 2
		set append=1
	)
	REM ende

	REM anfang 8 - 281914a - B014 DrehmomentStutze
	if %%z equ 8 (
		REM goto :takeTime
		set proj_Num=281914a
		set interval=0 1000 0
		set interval2=11 1 12
		set append=1
	)
	REM ende

	REM anfang 9 - 287915 - S-972 Metro Lima
	if %%z equ 9 (
		REM goto :takeTime
		set proj_Num=287915
		set interval=1009 10 1099
		set interval2=1 2 3
		set append=1
	)
	REM ende

	REM anfang 10 - 287915 - S-972 Metro Lima -ver Verformung
	if %%z equ 10 (
		REM goto :takeTime
		set proj_Num=287915
		set interval=1119 10 1199
		set interval2=1 2 3
		set append=1
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
		set append=1
	)
	REM ende

	REM anfang 12 - 290215 - S-991 Tragrahmen
	if %%z equ 12 (
		REM goto :takeTime
		set proj_Num=290215
		set interval=1000 10 1000
		set interval2=11 1 12
		set append=1
	)
	REM ende

	REM anfang 13 - 290515 - Eppenbergtunnel
	if %%z equ 13 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1009 10 1099
		set interval2=1 1 4
		set append=1
	)
	REM ende

	REM anfang 14 - 290515 - Eppenbergtunnel -ver Verformung
	if %%z equ 14 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1119 10 1199
		set interval2=1 1 4
		set append=1
	)
	REM ende

	REM anfang 15 - 288115 - BypassTunnel
	if %%z equ 15 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=4009 10 4099
		set interval2=5 1 5
		set append=1
	)
	REM ende

	REM anfang 16 - 288115 - BypassTunnel -ver Verformung
	if %%z equ 16 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=2119 10 2119
		set interval2=15 1 15
		set append=1
	)
	REM ende

	REM anfang 17 - 288115 - BypassTunnel
	if %%z equ 17 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=6019 10 6099
		set interval2=5 1 5
		set append=1
	)
	REM ende

	REM anfang 18 - 288115 - BypassTunnel -ver Verformung
	if %%z equ 18 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=6119 10 6199
		set interval2=5 1 5
		set append=1
	)
	REM ende

	REM anfang 19 - 288115 - BypassTunnel 70 zusatz
	if %%z equ 19 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=2119 1000 3119
		set interval2=15 10 95
		set append=1
	)
	REM ende

	REM anfang 20 - 288115 - BypassTunnel -ver Verformung 70 zusatz
	if %%z equ 20 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=2019 1000 3019
		set interval2=15 10 95
		set append=1
	)
	REM ende

	REM anfang 21 - 288115 - BypassTunnel -ver Verformung 70 zusatz
	if %%z equ 21 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=1019 1000 1019
		set interval2=15 10 95
		set append=1
	)
	REM ende

	REM anfang 22 - 288115 - BypassTunnel -ver Verformung 70 zusatz
	if %%z equ 22 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=1119 1000 1119
		set interval2=15 10 95
		set append=1
	)
	REM ende

	REM anfang 25 - 281314a - B014 Tragrahm
	if %%z equ 25 (
		REM goto :takeTime
		set proj_Num=281314a
		set interval=1 1 1
		set interval2=1 1 2
		set append=1
	)
	REM ende

	REM anfang 26 - 285614 - S958 Schildschwanz
	if %%z equ 26 (
		REM goto :takeTime
		set proj_Num=285614
		set interval=1009 10 1099
		set interval2=1 1 5
		set append=1
	)
	REM ende

	REM anfang 27 - 285614 - S958 Schildschwanz
	if %%z equ 27 (
		REM goto :takeTime
		set proj_Num=285614
		set interval=5009 10 5009
		set interval2=23 1 23
		set append=1
	)
	REM ende

	REM anfang 28 - 289815 - D-778 Schneckenfoerderer
	if %%z equ 28 (
		REM goto :takeTime
		set proj_Num=289815
		set interval=1100 10 1110
		set interval2=11 10 21
		set append=1
	)
	REM ende

	REM anfang 29 - 289815 - D-778 Schneckenfoerderer
	if %%z equ 29 (
		REM goto :takeTime
		set proj_Num=289815
		set interval=1101 10 1111
		set interval2=11 10 21
		set append=1
	)
	REM ende

	REM anfang 30 - 288915 - S-970 Fahrträger
	if %%z equ 30 (
		REM goto :takeTime
		set proj_Num=288915
		set interval=1000 10 1020
		set interval2=11 1 11
		set append=1
	)
	REM ende

	REM anfang 32 - 289415a - S-979 Schildschwanz
	if %%z equ 32 (
		REM goto :takeTime
		set proj_Num=289415a
		set interval=1029 10 1099
		set interval2=10 1 10
		set append=1
	)
	REM ende

	REM anfang 33 - 289415a - S-979 Schildschwanz -ve
	if %%z equ 33 (
		REM goto :takeTime
		set proj_Num=289415a
		set interval=1129 10 1129
		set interval2=10 1 10
		set append=1
	)
	REM ende

	REM anfang 34 - 289415aa - S-979 Schildschwanz
	if %%z equ 34 (
		REM goto :takeTime
		set proj_Num=289415aa
		set interval=1009 10 1099
		set interval2=7 1 9
		set append=1
	)
	REM ende

	REM anfang 35 - 289415aa - S-979 Schildschwanz -ve
	if %%z equ 35 (
		REM goto :takeTime
		set proj_Num=289415aa
		set interval=1009 10 1009
		set interval2=9 1 9
		set append=1
	)
	REM ende

	REM anfang 36 - 289415z - S-974 Schildschwanz
	if %%z equ 36 (
		REM goto :takeTime
		set proj_Num=289415z
		set interval=1009 10 1099
		set interval2=7 1 8
		set append=1
	)
	REM ende

	REM anfang 37 - 289415z - S-974 Schildschwanz -ve
	if %%z equ 37 (
		REM goto :takeTime
		set proj_Num=289415z
		set interval=1179 10 1179
		set interval2=7 1 7
		set append=1
	)
	REM ende

	REM anfang 38 - 289415zz - S-974 Schildschwanz
	if %%z equ 38 (
		REM goto :takeTime
		set proj_Num=289415zz
		set interval=1009 10 1099
		set interval2=4 1 6
		set append=1
	)
	REM ende

	REM anfang 39 - 289415zz - S-974 Schildschwanz -ve
	if %%z equ 39 (
		REM goto :takeTime
		set proj_Num=289415zz
		set interval=1119 10 1199
		set interval2=4 1 6
		set append=1
	)
	REM ende

	REM anfang 41 - 289815a - D-778 Spülsystem
	if %%z equ 41 (
		REM goto :takeTime
		set proj_Num=289815a
		set interval=1000 10 1000
		set interval2=1 1 1
		set append=1
	)
	REM ende

	REM anfang 42 - 281314 - Sattelauflieger
	if %%z equ 42 (
		REM goto :takeTime
		set proj_Num=281314
		set interval=200 10 200
		set interval2=21 1 22
		set append=1
	)
	REM ende

	REM anfang 43 - 291115 - S991 / 992 SSW
	if %%z equ 43 (
		REM goto :takeTime
		set proj_Num=291115
		set interval=1011 18 1011
		set interval2=11 10 11
		set append=1
	)
	REM ende

	REM anfang 44 - 291115 - S991 / 992 SSW -ve
	if %%z equ 44 (
		REM goto :takeTime
		set proj_Num=291115
		set interval=1011 18 1011
		set interval2=22 10 22
		set append=1
	)
	REM ende

	REM anfang 45 - 291115 - S991 / 992 SSW -ve
	if %%z equ 45 (
		REM goto :takeTime
		set proj_Num=291115
		set interval=1129 118 1129
		set interval2=13 10 13
		set append=1
	)
	REM ende

	REM anfang 46 - 291115 - S991 / 992 SSW -ve
	if %%z equ 46 (
		REM goto :takeTime
		set proj_Num=291115
		set interval=1011 118 1011
		set interval2=24 10 24
		set append=1
	)
	REM ende

	REM anfang 52 - 291115s - S991 / 992 SSW ONLY
	if %%z equ 52 (
		REM goto :takeTime
		set proj_Num=291115a
		set interval=1030 1 1030
		set interval2=13 1 13
		set append=1
	)
	REM ende

	REM anfang 53 - 291115s - S991 / 992 SSW -ve SSW ONLY
	if %%z equ 53 (
		REM goto :takeTime
		set proj_Num=291115a
		set interval=1121 1 1130
		set interval2=11 1 14
		set append=1
	)
	REM ende

	REM anfang 54 - 290515 - S994
	if %%z equ 54 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1129 10 1129
		set interval2=4 1 4
		set append=1
	)
	REM ende

	REM anfang 56 - 290915 - S990 Bohrkopf
	if %%z equ 56 (
		REM goto :takeTime
		set proj_Num=290915
		set interval=1001 1 1005
		set interval2=1 1 1
		set append=1
	)
	REM ende

	REM anfang 60 - 291415 - S881 Saugplatte
	if %%z equ 60 (
		REM goto :takeTime
		set proj_Num=291415
		set interval=1000 1 1000
		set interval2=5 1 5
		set append=1
	)
	REM ende

	REM anfang 61 - 291915 - S985 Schneidrad
	if %%z equ 61 (
		REM goto :takeTime
		set proj_Num=291915
		set interval=1000 1 1000
		set interval2=1 1 2
		set append=1
	)
	REM ende

	REM 99 anfang TEMPORARY CALCULATIONS
	if %%z equ 99 (
		REM goto :takeTime
		set proj_Num=Test
		set interval=1010 10 1010
		set interval2=1 1 1
		set append=1
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

	REM if %d% equ 1 (
		REM net use x: /dele /y
		REM net use x: \\SERVER\server_lw_d\Maharjan\!proj_Num! /y
		REM set "location=x:"
	REM )
	REM if %d% equ 2 (
		REM net use s: /dele /y
		REM net use s: \\SERVER\server_lw_d\Maharjan\!proj_Num! /y
		REM set "location=s:"
	REM )

	set "location=R:\Maharjan\!proj_Num!"
	set "wDir=D:\!proj_Num!\ANSYS"
	echo.
	echo Source Location: !location!
	echo Working Location: !wDir!
	echo.

	REM goto :takeTime

	del !wDir!\*.abt
	del !wDir!\*.lock

	if !append! equ 1 (
		echo.>> !wDir!\smAPDL.bat
	)
	if !append! equ 0 (
		echo.> !wDir!\smAPDL.bat
	)

	echo REM ------------------- >> !wDir!\smAPDL.bat
	echo REM anfang New Analysis Cases >> !wDir!\smAPDL.bat

	set ans_consec=YES
	set ansys_lock=on

	for /l %%m in (!interval!) do (
		set par=%%m
		set num=4
		call addZeros.bat :addZero
		set job=!par!
		@echo on
		echo.
		echo JOB: !job!
		@echo off
		for /l %%n in (!interval2!) do (
			set par=%%n
			set num=2
			call addZeros.bat :addZero
			set lk=!par!
			@echo on
			echo.
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
	echo. >> !wDir!\smAPDL.bat
	echo REM ende New Analysis Cases >> !wDir!\smAPDL.bat
	echo REM ------------------- >> !wDir!\smAPDL.bat

REM ende NOT Needed TO CHANGE
 )
endlocal
goto :takeTime
REM pause
:takeTime
timeout /t 100
REM ==================================================================================================
REM END OF FILE
REM ==================================================================================================


