
call reset.bat

REM set pathBefore=D:\Maharjan
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

set proj_Num=308817

REM All load cases
	set interval=1000 10 1000
	set interval2=1 1 4
		call calc.bat
