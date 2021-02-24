
call reset.bat

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=R:\maharjan
@REM set sourceFile=s.in

@REM set redirect=0
@REM set extVar=0

set proj_Num=312217

@REM +ve
  set interval=1006 10 1096
  set interval2=11 1 13
    call calc.bat

@REM -ve
  set interval=1116 10 1196
  set interval2=11 1 13
    call calc.bat
