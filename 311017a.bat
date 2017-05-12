
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ANSYS

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

set proj_Num=311017a

REM +ve CS 1
	set interval=2009 10 2009
	set interval2=11 1 16
		call calc.bat

REM +ve CS 1
	set interval=2009 10 2009
	set interval2=21 1 26
		call calc.bat

REM +ve CS 4
	set interval=2019 10 2019
	set interval2=14 10 14
		call calc.bat

REM -ve CS 4
	set interval=2039 30 2099
	set interval2=14 10 14
		call calc.bat

REM -ve CS 4
	set interval=2139 30 2139
	set interval2=14 10 14
		call calc.bat
