
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

set redirect=0
REM set extVar=0

set proj_Num=312017

REM REM +ve CS 1
REM 	set interval=1008 10 1008
REM 	set interval2=12 1 12
REM 		call calc.bat

REM REM +ve CS 1
REM 	set interval=1018 20 1038
REM 	set interval2=11 1 11
REM 		call calc.bat

set redirect=1
REM +ve CS 2
	set interval=1128 10 1128
	set interval2=12 1 12
		call calc.bat

set redirect=0
REM +ve CS 2
	set interval=1178 10 1178
	set interval2=12 1 12
		call calc.bat

set redirect=1
REM +ve CS 1
	set interval=1128 10 1128
	set interval2=11 1 11
		call calc.bat

REM REM +ve CS 1
REM 	set interval=1118 10 1198
REM 	set interval2=11 1 11
REM 		call calc.bat
