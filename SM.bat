@echo off

setlocal EnableDelayedExpansion

REM anfang Selecting Licenses
	set appPath="C:\Program Files\ANSYS Inc\v161\ANSYS\bin\winx64\ansys161.exe"
		REM	1.	Structural4core		2.	Structural2core		3.	Prfnls		4.	Stba		6.	Prepost
	set startValue=3
	set endValue=!startValue!
	REM set endValue=6
REM ende

REM anfang select drive and Initial Values
	REM 1: x: and file; 2: s: and file2
	set d=1
	REM set d=2

	REM path after and before Project Name + append to BAT
		hostname.exe>hostname.txt
		set /p host=<hostname.txt
		echo Hostname: !host!

		set append=1
		if "!host!" equ "ansys2" (
			set sourcePre=R:\maharjan
			set pathBefore=D:\maharjan
			set pathAfter=ANSYS
		) else (
			set sourcePre=R:\maharjan
			set pathBefore=D:
			set pathAfter=ANSYS
		)
REM ende

REM anfang Redirect/execute or NOT
	set redirect=0
	set execute=1
REM ende

REM for /l %%z in ( 28 41 42 ) do (
REM for %%z in ( 31 32 33 34 ) do (
for %%z in ( 32 34 ) do (
REM for %%z in ( 28 29 30 ) do (

	REM anfang Projekte
	REM ==================================================================================================

	REM anfang 4 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume with TEMP
	if %%z equ 4 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1009 10 1009
		set interval2=21 1 22

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 5 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume with TEMP -ve Verformung
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1119 10 1199
		set interval2=21 1 22

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 6 - 287715a - S-978 Wuhan Line 8 Lot 3 Volume
	if %%z equ 6 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1009 10 1099
		set interval2=1 1 2

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 7 - 287715a - S-978 Wuhan Line 8 Lot 3 -ver Verformung Volume
	if %%z equ 7 (
		REM goto :takeTime
		set proj_Num=287715a
		set interval=1119 10 1199
		set interval2=1 1 2

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 8 - 281914a - B014 DrehmomentStutze
	if %%z equ 8 (
		REM goto :takeTime
		set proj_Num=281914a
		set interval=0 1000 0
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 9 - 287915 - S-972 Metro Lima
	if %%z equ 9 (
		REM goto :takeTime
		set proj_Num=287915
		set interval=1009 10 1099
		set interval2=1 2 3

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 10 - 287915 - S-972 Metro Lima -ver Verformung
	if %%z equ 10 (
		REM goto :takeTime
		set proj_Num=287915
		set interval=1119 10 1199
		set interval2=1 2 3

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 13 - 290515 - Eppenbergtunnel
	if %%z equ 13 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1009 10 1099
		set interval2=1 1 4

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 14 - 290515 - Eppenbergtunnel -ver Verformung
	if %%z equ 14 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1119 10 1199
		set interval2=1 1 4

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 15 - 288115 - BypassTunnel
	if %%z equ 15 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=4009 10 4099
		set interval2=5 1 5

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 16 - 288115 - BypassTunnel -ver Verformung
	if %%z equ 16 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=2119 10 2119
		set interval2=15 1 15

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 17 - 288115 - BypassTunnel
	if %%z equ 17 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=6019 10 6099
		set interval2=5 1 5

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 18 - 288115 - BypassTunnel -ver Verformung
	if %%z equ 18 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=6119 10 6199
		set interval2=5 1 5

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 19 - 288115 - BypassTunnel 70 zusatz
	if %%z equ 19 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=2119 1000 3119
		set interval2=15 10 95

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 20 - 288115 - BypassTunnel -ver Verformung 70 zusatz
	if %%z equ 20 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=2019 1000 3019
		set interval2=15 10 95

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 21 - 288115 - BypassTunnel -ver Verformung 70 zusatz
	if %%z equ 21 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=1019 1000 1019
		set interval2=15 10 95

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 22 - 288115 - BypassTunnel -ver Verformung 70 zusatz
	if %%z equ 22 (
		REM goto :takeTime
		set proj_Num=288115
		set interval=1119 1000 1119
		set interval2=15 10 95

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 23 - 281314a - B014 Tragrahm
	if %%z equ 23 (
		REM goto :takeTime
		set proj_Num=281314a
		set interval=1 1 1
		set interval2=1 1 2

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 24 - 285614 - S958 Schildschwanz
	if %%z equ 24 (
		REM goto :takeTime
		set proj_Num=285614
		set interval=1009 10 1099
		set interval2=1 1 5

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 25 - 285614 - S958 Schildschwanz
	if %%z equ 25 (
		REM goto :takeTime
		set proj_Num=285614
		set interval=5009 10 5009
		set interval2=23 1 23

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 26 - 289815 - D-778 Schneckenfoerderer
	if %%z equ 26 (
		REM goto :takeTime
		set proj_Num=289815
		set interval=2111 1000 3111
		set interval2=21 10 21

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 27 - 289815 - D-778 Schneckenfoerderer
	if %%z equ 27 (
		REM goto :takeTime
		set proj_Num=289815
		set interval=2101 1000 3101
		set interval2=21 10 21

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 28 - 289815 - D-778 Schneckenfoerderer
	if %%z equ 28 (
		REM goto :takeTime
		set proj_Num=289815
		set interval=3101 1000 3101
		set interval2=11 10 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 29 - 289815a - D-778 Spülsystem
	if %%z equ 29 (
		REM goto :takeTime
		set proj_Num=289815a
		set interval=1000 10 1000
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 31 - 289415a - S-979 Schildschwanz
	if %%z equ 31 (
		REM goto :takeTime
		set proj_Num=289415a
		set interval=1009 10 1099
		set interval2=1 1 4

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 32 - 289415a - S-979 Schildschwanz -ve
	if %%z equ 32 (
		REM goto :takeTime
		set proj_Num=289415a
		set interval=1119 10 1199
		set interval2=1 1 4

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 33 - 289415z - S-974 Schildschwanz
	if %%z equ 33 (
		REM goto :takeTime
		set proj_Num=289415z
		set interval=1009 10 1099
		set interval2=1 1 3

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 34 - 289415z - S-974 Schildschwanz -ve
	if %%z equ 34 (
		REM goto :takeTime
		set proj_Num=289415z
		set interval=1119 10 1199
		set interval2=1 1 3

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 36 - 281314 - Sattelauflieger
	if %%z equ 36 (
		REM goto :takeTime
		set proj_Num=281314
		set interval=200 10 200
		set interval2=21 1 22

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 37 - 291115 - S991 / 992 SSW
	if %%z equ 37 (
		REM goto :takeTime
		set proj_Num=291115
		set interval=1011 18 1011
		set interval2=11 10 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 38 - 291115 - S991 / 992 SSW -ve
	if %%z equ 38 (
		REM goto :takeTime
		set proj_Num=291115
		set interval=1011 18 1011
		set interval2=22 10 22

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 39 - 291115 - S991 / 992 SSW -ve
	if %%z equ 39 (
		REM goto :takeTime
		set proj_Num=291115
		set interval=1129 118 1129
		set interval2=13 10 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 40 - 291115 - S991 / 992 SSW -ve
	if %%z equ 40 (
		REM goto :takeTime
		set proj_Num=291115
		set interval=1011 118 1011
		set interval2=24 10 24

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 43 - 290515 - S994
	if %%z equ 43 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1129 10 1129
		set interval2=4 1 4

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 44 - 290915 - S990 Bohrkopf
	if %%z equ 44 (
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

	REM anfang 45 - 291415 - S881 Saugplatte
	if %%z equ 45 (
		REM goto :takeTime
		set proj_Num=291415
		set interval=1003 1 1003
		set interval2=2 1 2

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 46 - 291915 - S985 Schneidrad
	if %%z equ 46 (
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

	REM 99 anfang TEMPORARY CALCULATIONS
	if %%z equ 99 (
		REM goto :takeTime
		set proj_Num=Test
		set interval=1010 10 1010
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
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

	set "location=!sourcePre!\!proj_Num!"
	set "wDir=!pathBefore!\!proj_Num!\!pathAfter!"
	echo.
	echo Source Location: !location!
	echo Working Location: !wDir!
	echo.

	REM goto :takeTime

	del !wDir!\*.abt
	del !wDir!\*.lock

	if !append! equ 1 (
		echo.>> !wDir!\smAPDL.bat
	) else (
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
			REM call Delete.bat :delFiles
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

