
call reset.bat

set pathBefore=E:
REM set pathAfter=ANSYS

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

REM set redirect=0
REM set extVar=0

set proj_Num=311017

REM REM +ve
REM   set interval=1009 40 1009
REM   set interval2=12 1 13
REM     call calc.bat

REM REM +ve CS 1
REM   set interval=1029 10 1049
REM   set interval2=14 1 14
REM     call calc.bat

REM +ve CS 4
  set interval=1129 10 1149
  set interval2=14 1 14
    call calc.bat

REM -ve CS 4
  set interval=1119 30 1119
  set interval2=14 10 14
    call calc.bat

REM REM -ve CS 4
REM   set interval=1099 100 1199
REM   set interval2=11 10 11
REM     call calc.bat
