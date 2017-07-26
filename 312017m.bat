
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

set redirect=0
REM set extVar=0

set proj_Num=312017m

REM REM +ve CS 1
REM 	set interval=1008 10 1098
REM 	set interval2=11 1 11
REM 		call calc.bat

REM +ve CS 1
	set interval=2019 20 2099
	set interval2=11 10 21
		call calc.bat

REM set redirect=1
REM +ve CS 2
	set interval=2119 20 2199
	set interval2=11 10 21
		call calc.bat

REM +ve CS 1
	set interval=2029 20 2089
	set interval2=11 10 21
		call calc.bat

REM set redirect=1
REM +ve CS 2
	set interval=2129 20 2189
	set interval2=11 10 21
		call calc.bat

REM REM +ve CS 1
REM 	set interval=1178 10 1198
REM 	set interval2=11 1 12
REM 		call calc.bat
