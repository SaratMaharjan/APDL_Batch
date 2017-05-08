
call reset.bat

set pathBefore=E:
REM set pathAfter=ANSYS

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

REM +ve
	REM set proj_Num=311017
	REM set interval=1009 40 1009
	REM set interval2=11 3 14
	REM 	call calc.bat

REM +ve CS 1
	set proj_Num=311017
	set interval=1019 10 1019
	set interval2=11 3 14
		call calc.bat

REM +ve CS 4
	set proj_Num=311017
	set interval=1059 10 1099
	set interval2=14 10 14
		call calc.bat

REM -ve CS 4
	set proj_Num=311017
	set interval=1159 10 1199
	set interval2=14 10 14
		call calc.bat

REM -ve CS 4
	set proj_Num=311017
	set interval=1099 100 1199
	set interval2=11 10 11
		call calc.bat