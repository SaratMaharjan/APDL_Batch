
call reset.bat

REM set pathBefore=D:\Maharjan
REM set pathAfter=ANSYS

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

REM FS+MS
	set proj_Num=306416
	set interval=2002 10 2002
	set interval2=11 10 51
		call calc.bat

REM SSW ohne vv
	set proj_Num=306416
	set interval=1007 70 1007
	set interval2=11 1 11
		call calc.bat

REM SSW +ve
	set proj_Num=306416
	set interval=1017 70 1087
	set interval2=11 1 11
		call calc.bat

REM ssw -ve
	set proj_Num=306416
	set interval=1117 70 1187
	set interval2=11 1 11
		call calc.bat

REM ssw +ve
	set proj_Num=306416
	set interval=1037 30 1097
	set interval2=11 1 11
		call calc.bat

REM ssw -ve
	set proj_Num=306416
	set interval=1137 30 1197
	set interval2=11 1 11
		call calc.bat
