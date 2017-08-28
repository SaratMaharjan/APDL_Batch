
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s-alt.in
REM set sourceFile=s-restart.in

set redirect=0
REM set extVar=0

set proj_Num=312017m

REM +ve CS 1
  set interval=2029 10 2099
  set interval2=11 10 11
    call calc.bat

REM +ve CS 1
  set interval=2129 20 2199
  set interval2=11 10 11
    call calc.bat

REM set redirect=1
REM +ve CS 2
  set interval=2009 10 2099
  set interval2=21 10 21
    call calc.bat

REM +ve CS 1
  set interval=2119 20 2199
  set interval2=21 10 21
    call calc.bat

REM REM set redirect=1
REM REM +ve CS 2
REM   set interval=2129 20 2189
REM   set interval2=11 10 21
REM     call calc.bat

REM REM +ve CS 1
REM   set interval=1178 10 1198
REM   set interval2=11 1 12
REM     call calc.bat
