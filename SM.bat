@echo off
set /a waitSec=3600*0/4
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion

REM anfang get HostName and define Initial File Name
	REM Initial File Name: 1-file; 2-file2
	set d=1
	REM set d=2

	hostname.exe>hostname.txt
	set /p host=<hostname.txt
	echo Hostname: !host!
REM ende

REM anfang Selecting Licenses and Processors
	set appPath="C:\Program Files\ANSYS Inc\v162\ANSYS\bin\winx64\ansys162.exe"
	REM	1.	Structural/ANSYS		2.	Prfnls		3.	Stba/MEBA		4.	Prepost
	set startValue=2
	set endValue=!startValue!
	REM set endValue=4

	set numPro=2
	REM set numPro=4

REM ende

REM for /l %%z in ( 1 1 9 ) do (
REM for %%z in ( 99 ) do (
REM for %%z in ( 15 ) do (
for %%z in ( 34 ) do (

REM anfang Select Drive and Initial Values
		if "!host!" equ "ansys2" (
			set sourcePre=R:\maharjan
			set pathBefore=E:\Maharjan
			set pathAfter=ANSYS
		) else (
			set sourcePre=R:\maharjan
			set pathBefore=D:
			set pathAfter=ANSYS
		)
		set redirect=0
		set execute=1
		REM append=1:appends to bat file, else is overwritten
		set append=1
REM ende

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
		set interval=1011 10 1011
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
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

	REM REM anfang 25 - 9999
	if %%z equ 25 (
		REM goto :takeTime
		set proj_Num=9999
		set interval=9010 10 9010
		set interval2=11 1 11

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 26 - 9999
	if %%z equ 26 (
		REM goto :takeTime
		set proj_Num=9999
		set interval=9010 10 9010
		set interval2=11 1 11

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
		set interval=1000 10 1090
		set interval2=11 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 32 - 296816 - S1018-19 -ve
	if %%z equ 32 (
		REM goto :takeTime
		set proj_Num=296816
		set interval=1110 10 1190
		set interval2=11 1 14

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 33 - 296816 - S1018-19
	if %%z equ 33 (
		REM goto :takeTime
		set proj_Num=296816
		set interval=1081 10 1091
		set interval2=11 1 13

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYS
		REM set redirect=1
		REM set execute=1
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 34 - 296816 - S1018-19 -ve
	if %%z equ 34 (
		REM goto :takeTime
		set proj_Num=296816
		set interval=1181 10 1191
		set interval2=11 1 13

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
		set proj_Num=Test
		set interval=2000 1 2000
		set interval2=71 10 71

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

	del !wDir!\*.abt >nul 2>&1
	del !wDir!\*.lock >nul 2>&1

	if !append! equ 1 (
		echo.>> !wDir!\smAPDL.bat
	) else (
		echo.> !wDir!\smAPDL.bat
	)

	set todayNow=On %date:~0,2%.%date:~3,2%.%date:~6,4% at %time:~0,2%:%time:~3,2%
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

			(echo 0) > !wDir!\success.txt

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
			call calcLoop.bat :calc
			REM timeout /t 10
			set /p succeed=<!wDir!\success.txt
			REM if !succeed! equ 1 (
				call deleteFiles.bat :delFiles
			REM )
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

