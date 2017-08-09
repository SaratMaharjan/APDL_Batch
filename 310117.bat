
call reset.bat

REM set pathBefore=D:\Maharjan
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

set proj_Num=310117

REM All load cases
  set interval=0 10 0
  set interval2=22 1 27
    call calc.bat
