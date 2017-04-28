
call reset.bat

set pathBefore=E:
REM set pathAfter=ANSYS

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

REM +ve
	set proj_Num=311017
	set interval=1099 40 1099
	set interval2=11 10 11
		call calc.bat

REM +ve CS 1
	set proj_Num=311017
	set interval=1099 40 1099
	set interval2=11 10 11
		call calc.bat

REM +ve CS 4
	set proj_Num=311017
	set interval=1029 10 1059
	set interval2=14 10 14
		call calc.bat

REM -ve CS 4
	set proj_Num=311017
	set interval=1119 10 1199
	set interval2=14 10 14
		call calc.bat
