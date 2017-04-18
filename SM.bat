@echo off
call %~dp0%l2cur.bat
set /a waitSec=3600/60*0
echo Waiting Before Execution: %waitSec% Seconds
timeout /t %waitSec%
setlocal EnableDelayedExpansion
call first.bat

REM anfang Selecting Licenses and Processors
	set appPath="C:\Program Files\ANSYS Inc\v180\ANSYS\bin\winx64\ansys180.exe"
	REM set appPath="C:\Program Files\ANSYS Inc\v172\ANSYS\bin\winx64\ansys172.exe"
	REM	1.Structural/ANSYS	2.Mech_2	3.Stba/MEBA	4.Prepost
		set startValue=3
		REM set startValue=4
		set endValue=!startValue!
		REM set endValue=4
	REM Number of Processors
		set numPro=2
		REM set numPro=4
REM ende

REM select Calculations to Perform
for %%z in ( 5 ) do (
REM for %%z in ( 100 ) do (

	call initials.bat
	REM anfang Projekte (Active: 1-50)
	REM ==================================================================================================

	REM REM anfang 1 - 310117 - Forderschnecke
	if %%z equ 1 (
		REM goto :takeTime
		set proj_Num=310117
		set interval=9 10 9
		set interval2=11 1 18

		REM set append=1
		set pathBefore=D:\310117\_d340
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 2 - 310117 - Forderschnecke
	if %%z equ 2 (
		REM goto :takeTime
		set proj_Num=310117
		set interval=0 10 0
		set interval2=1 1 7

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
		set interval2=1 1 4

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 5 - 310917 - Sohlsteingreifer S-1071
	if %%z equ 5 (
		REM goto :takeTime
		set proj_Num=310917
		set interval=1000 1 1000
		set interval2=1 1 8

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=D:\310917\apdl
	)
	REM REM ende

	REM REM anfang 5 - 310917 - Sohlsteingreifer S-1071
	if %%z equ 6 (
		REM goto :takeTime
		set proj_Num=310917
		set interval=1000 1 1000
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=D:\310917\apdl
	)
	REM REM ende

	REM REM anfang 9 - 309317 - S-1078 Schneckenförderer
	if %%z equ 9 (
		REM goto :takeTime
		set proj_Num=309317
		set interval=1000 10 1010
		set interval2=21 1 22

		REM set append=1
		REM set pathBefore=D:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 10 - 311017 - S-1097 SSW
	if %%z equ 10 (
		REM goto :takeTime
		set proj_Num=311017
		set interval=1188 10 1198
		set interval2=12 1 13

		REM set append=1
		set pathBefore=E:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 11 - 311017 - S-1097 SSW -ve
	if %%z equ 11 (
		REM goto :takeTime
		set proj_Num=311017
		set interval=1198 10 1198
		set interval2=11 1 11

		REM set append=1
		set pathBefore=E:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 12 - 311017 - S-1097 SSW
	if %%z equ 12 (
		REM goto :takeTime
		set proj_Num=311017
		set interval=1009 10 1099
		set interval2=11 1 16

		REM set append=1
		set pathBefore=E:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 13 - 311017 - S-1097 SSW -ve
	if %%z equ 13 (
		REM goto :takeTime
		set proj_Num=311017
		set interval=1119 10 1198
		set interval2=11 1 16

		REM set append=1
		set pathBefore=E:
		REM set pathAfter=ANSYSec
		REM set redirect=1
		REM set execute=1
		REM set extVar=0
		REM set sourcePre=R:\maharjan
	)
	REM REM ende

	REM REM anfang 16 - 309317 - S-1078 Querträger
	if %%z equ 16 (
		REM goto :takeTime
		set proj_Num=309317a
		set interval=1000 10 1000
		set interval2=1 1 1

		REM set append=1
		REM set pathBefore=E:
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
