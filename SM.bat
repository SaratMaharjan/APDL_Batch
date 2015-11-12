@echo off
set /a waitSec=3600*0/4
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion

REM anfang Selecting Licenses
	set appPath="C:\Program Files\ANSYS Inc\v162\ANSYS\bin\winx64\ansys162.exe"
		REM	1.	Structural4core		2.	Structural2core		3.	Prfnls		4.	Stba		6.	Prepost
	set startValue=3
	set endValue=!startValue!
	REM set endValue=4
REM ende

REM anfang select drive and Initial Values
	REM 1: x: and file; 2: s: and file2
	REM set d=1
	set d=2

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

REM for /l %%z in ( 1 1 9 ) do (
REM for %%z in ( 99 ) do (
for %%z in ( 20 ) do (
REM for %%z in ( 12 13 14 15 16 17 ) do (

	REM anfang Projekte
	REM ==================================================================================================

	REM anfang 1 - 289815 - D-778 Schneckenfoerderer
	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=289815
		set interval=6101 1000 6101
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 2 - ------ - Rollengehäuse
	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=292715
		set interval=4001 1 4001
		set interval2=21 1 27

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM anfang 3 - ------ - Rollengehäuse
	if %%z equ 3 (
		REM goto :takeTime
		set proj_Num=292715
		set interval=4011 1 4011
		set interval2=21 1 27

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM ende

	REM REM anfang 4 - ------ - Rollengehäuse
	REM if %%z equ 4 (
		REM REM goto :takeTime
		REM set proj_Num=292715
		REM set interval=4101 1 4101
		REM set interval2=21 1 27

		REM REM set append=1
		REM REM set pathBefore=D:
		REM REM set pathAfter=ANSYS
		REM REM set redirect=0
		REM REM set execute=1
		REM REM set sourcePre=R:\maharjan
	REM )
	REM REM ende

	REM REM anfang 5 - ------ - Rollengehäuse
	REM if %%z equ 5 (
		REM REM goto :takeTime
		REM set proj_Num=292715
		REM set interval=4111 1 4111
		REM set interval2=21 1 27

		REM REM set append=1
		REM REM set pathBefore=D:
		REM REM set pathAfter=ANSYS
		REM REM set redirect=0
		REM REM set execute=1
		REM REM set sourcePre=R:\maharjan
	REM )
	REM REM ende

	REM REM anfang 6 - ------ - Rollengehäuse
	REM if %%z equ 6 (
		REM REM goto :takeTime
		REM set proj_Num=292715
		REM set interval=4001 1 4001
		REM set interval2=51 1 57

		REM REM set append=1
		REM REM set pathBefore=D:
		REM REM set pathAfter=ANSYS
		REM REM set redirect=0
		REM REM set execute=1
		REM REM set sourcePre=R:\maharjan
	REM )
	REM REM ende

	REM REM anfang 7 - ------ - Rollengehäuse
	REM if %%z equ 7 (
		REM REM goto :takeTime
		REM set proj_Num=292715
		REM set interval=4011 1 4011
		REM set interval2=51 1 57

		REM REM set append=1
		REM REM set pathBefore=D:
		REM REM set pathAfter=ANSYS
		REM REM set redirect=0
		REM REM set execute=1
		REM REM set sourcePre=R:\maharjan
	REM )
	REM REM ende

	REM REM anfang 8 - ------ - Rollengehäuse
	REM if %%z equ 8 (
		REM REM goto :takeTime
		REM set proj_Num=292715
		REM set interval=4101 1 4101
		REM set interval2=51 1 57

		REM REM set append=1
		REM REM set pathBefore=D:
		REM REM set pathAfter=ANSYS
		REM REM set redirect=0
		REM REM set execute=1
		REM REM set sourcePre=R:\maharjan
	REM )
	REM REM ende

	REM REM anfang 9 - ------ - Rollengehäuse
	REM if %%z equ 9 (
		REM REM goto :takeTime
		REM set proj_Num=292715
		REM set interval=4111 1 4111
		REM set interval2=51 1 57

		REM REM set append=1
		REM REM set pathBefore=D:
		REM REM set pathAfter=ANSYS
		REM REM set redirect=0
		REM REM set execute=1
		REM REM set sourcePre=R:\maharjan
	REM )
	REM REM ende

	REM anfang 10 - D-768 - Haltevorrichtung
	if %%z equ 10 (
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

	REM REM anfang 11 - 289815a - D-778 Spülsystem
	if %%z equ 11 (
		REM goto :takeTime
		set proj_Num=289815a
		set interval=1000 1 1000
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 12 - 290515 - S-994 SSW Volume
	if %%z equ 12 (
		REM goto :takeTime
		set proj_Num=290515

		set interval=1000 1 1009
		set interval2=14 1 15

		REM set interval=1001 1 1001
		REM set interval2=15 1 15

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 13 - 290515 - S-994 SSW Volume
	if %%z equ 13 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1101 1 1109
		set interval2=14 1 15

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 14 - 290515 - S-994 SSW Volume
	if %%z equ 14 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1006 1 1008
		set interval2=13 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 15 - 290515 - S-994 SSW Volume
	if %%z equ 15 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1109 1 1109
		set interval2=13 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 16 - 290515 - S-994 SSW Volume
	if %%z equ 16 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1007 1 1012
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 17 - 290515 - S-994 SSW Volume
	if %%z equ 17 (
		REM goto :takeTime
		set proj_Num=290515
		set interval=1101 1 1112
		set interval2=11 1 12

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 18 - 293715 - --- Spreizeinheit
	if %%z equ 18 (
		REM goto :takeTime
		set proj_Num=293715
		set interval=3000 1 3000
		set interval2=1 10 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 19 - 294215 - S-955 Anhänglasche
	if %%z equ 19 (
		REM goto :takeTime
		set proj_Num=294215
		set interval=1000 1 1000
		set interval2=1 10 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 20 - 294515 - S-454.1 Schneidrad
	if %%z equ 20 (
		REM goto :takeTime
		set proj_Num=294515
		set interval=1002 1 1002
		set interval2=1 1 4

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende


	REM 99 anfang TEMPORARY CALCULATIONS §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
	if %%z equ 99 (
		REM goto :takeTime
		set proj_Num=Test
		set interval=1000 10 1000
		set interval2=51 20 51

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=0
		REM set execute=0
		REM set sourcePre=R:\maharjan
	)
	REM ende -----------------------------------------------------------

	REM anfang ################### PROJEKTE: not Active #################

		REM anfang 51 - 287915 - S-972 Metro Lima
		if %%z equ 51 (
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

		REM anfang 52 - 287915 - S-972 Metro Lima -ver Verformung
		if %%z equ 52 (
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

		REM anfang 55 - 288115 - BypassTunnel
		if %%z equ 55 (
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

		REM anfang 56 - 288115 - BypassTunnel -ver Verformung
		if %%z equ 56 (
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

		REM anfang 57 - 288115 - BypassTunnel
		if %%z equ 57 (
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

		REM anfang 58 - 288115 - BypassTunnel -ver Verformung
		if %%z equ 58 (
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

		REM anfang 59 - 288115 - BypassTunnel 70 zusatz
		if %%z equ 59 (
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

		REM anfang 60 - 288115 - BypassTunnel -ver Verformung 70 zusatz
		if %%z equ 60 (
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

		REM anfang 61 - 288115 - BypassTunnel -ver Verformung 70 zusatz
		if %%z equ 61 (
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

		REM anfang 62 - 288115 - BypassTunnel -ver Verformung 70 zusatz
		if %%z equ 62 (
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

		REM anfang 63 - 281314 - Sattelauflieger
		if %%z equ 63 (
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

		REM anfang 64 - 281314a - B014 Tragrahm
		if %%z equ 64 (
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

		REM anfang 65 - 285614 - S958 Schildschwanz
		if %%z equ 65 (
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

		REM anfang 66 - 285614 - S958 Schildschwanz
		if %%z equ 66 (
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

		REM anfang 67 - 289415a - S-979 Schildschwanz
		if %%z equ 67 (
			REM goto :takeTime
			set proj_Num=289415a
			set interval=1009 10 1099
			set interval2=1 1 7

			REM set append=1
			REM set pathBefore=D:
			REM set pathAfter=ANSYS
			REM set redirect=0
			REM set execute=1
			REM set sourcePre=R:\maharjan
		)
		REM ende

		REM anfang 68 - 289415a - S-979 Schildschwanz -ve
		if %%z equ 68 (
			REM goto :takeTime
			set proj_Num=289415a
			set interval=1179 10 1199
			set interval2=1 1 7

			REM set append=1
			REM set pathBefore=D:
			REM set pathAfter=ANSYS
			REM set redirect=0
			REM set execute=1
			REM set sourcePre=R:\maharjan
		)
		REM ende

		REM anfang 69 - 289415z - S-974 Schildschwanz
		if %%z equ 69 (
			REM goto :takeTime
			set proj_Num=289415z
			set interval=1009 10 1099
			set interval2=1 1 6

			REM set append=1
			REM set pathBefore=D:
			REM set pathAfter=ANSYS
			REM set redirect=0
			REM set execute=1
			REM set sourcePre=R:\maharjan
		)
		REM ende

		REM anfang 70 - 289415z - S-974 Schildschwanz -ve
		if %%z equ 70 (
			REM goto :takeTime
			set proj_Num=289415z
			set interval=1119 10 1199
			set interval2=1 1 6

			REM set append=1
			REM set pathBefore=D:
			REM set pathAfter=ANSYS
			REM set redirect=0
			REM set execute=1
			REM set sourcePre=R:\maharjan
		)
		REM ende

		REM anfang 71 - 290515 - S994
		if %%z equ 71 (
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

		REM anfang 72 - 290915 - S990 Bohrkopf
		if %%z equ 72 (
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

		REM anfang 73 - 291915 - S985 Schneidrad
		if %%z equ 73 (
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

REM anfang NO NEED to CHANGE BELOW

	call %~dp0%l2cur.bat

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

	set todayNow=On %date:~6,4%-%date:~3,2%-%date:~0,2% at %time:~0,2%:%time:~3,2%
	echo *set,hostname,'!host!' > !wDir!\host.csv
	echo REM ------------------- >> !wDir!\smAPDL.bat
	echo REM                          ___!todayNow!___ >> !wDir!\smAPDL.bat
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

