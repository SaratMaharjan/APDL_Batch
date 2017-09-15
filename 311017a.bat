
call reset.bat

set pathBefore=F:
REM set pathAfter=ansys-tl

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

set redirect=1
REM set extVar=0
REM if %extVar% equ 1 (
REM   set nPrefix=d
REM )

set proj_Num=311017a

REM +ve CS 1
  set interval=2199 10 2199
  set interval2=11 10 11
    call calc.bat

REM +ve CS 1
  set interval=2019 10 2019
  set interval2=22 10 22
    call calc.bat

REM +ve CS 4
  set interval=2129 10 2129
  set interval2=23 1 23
    call calc.bat

REM +ve CS 4
  set interval=2069 10 2069
  set interval2=14 1 14
    call calc.bat

REM +ve CS 4
  set interval=2169 10 2169
  set interval2=25 1 25
    call calc.bat

REM +ve CS 4
  set interval=2189 10 2189
  set interval2=16 1 16
    call calc.bat

REM REM +ve CS 4
REM   set interval=2009 10 2009
REM   set interval2=16 10 26
REM     call calc.bat

REM REM -ve CS 4
REM   set interval=2039 30 2099
REM   set interval2=14 10 14
REM     call calc.bat

REM REM -ve CS 4
REM   set interval=2139 30 2139
REM   set interval2=14 10 14
REM     call calc.bat
