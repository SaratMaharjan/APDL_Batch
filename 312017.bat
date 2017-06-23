
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ANSYS

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

set proj_Num=312017

REM +ve CS 1
	set interval=1018 10 1018
	set interval2=12 1 12
		call calc.bat

REM +ve CS 2
	set interval=1038 10 1038
	set interval2=12 1 12
		call calc.bat

REM +ve CS 2
	set interval=1138 10 1138
	set interval2=12 1 12
		call calc.bat

REM REM +ve CS 1
REM 	set interval=1008 10 1098
REM 	set interval2=11 1 11
REM 		call calc.bat

REM REM +ve CS 1
REM 	set interval=1118 10 1198
REM 	set interval2=11 1 11
REM 		call calc.bat
