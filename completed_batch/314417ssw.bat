call reset.bat

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=R:\maharjan
@REM set sourceFile=s.in

set redirect=0
set extVar=1
if %extVar% equ 1 (
  set nPrefix=d
)

set proj_Num=314417

@REM @REM +ve CS 1
@REM   set interval=1008 10 1098
@REM   set interval2=11 1 11
@REM     call calc.bat

@REM @REM +ve CS 1
@REM   set interval=1118 10 1198
@REM   set interval2=11 1 11
@REM     call calc.bat

@REM @REM +ve CS 2
@REM   set interval=1038 10 1098
@REM   set interval2=12 1 12
@REM     call calc.bat

@REM @REM +ve CS 2
@REM   set interval=1118 10 1198
@REM   set interval2=12 1 12
@REM     call calc.bat

@REM +ve CS 3
  set interval=1008 10 1098
  set interval2=13 1 13
    call calc.bat

@REM +ve CS 3
  set interval=1118 10 1198
  set interval2=13 1 13
    call calc.bat

@REM +ve CS 4
  set interval=1008 10 1098
  set interval2=14 1 14
    call calc.bat

@REM +ve CS 4
  set interval=1118 10 1198
  set interval2=14 1 14
    call calc.bat
