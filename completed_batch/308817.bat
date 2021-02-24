
call reset.bat

@REM set pathBefore=D:\Maharjan
@REM set pathAfter=ansys

@REM set sourcePre=R:\maharjan
@REM set sourceFile=s.in

@REM set redirect=0
@REM set extVar=0

set proj_Num=308817

@REM @REM All load cases
@REM   set interval=1010 10 1010
@REM   set interval2=1 1 1
@REM     call calc.bat

@REM All load cases
  set interval=1000 10 1000
  set interval2=2 1 4
    call calc.bat

@REM All load cases
  set interval=1030 10 1050
  set interval2=1 1 1
    call calc.bat
