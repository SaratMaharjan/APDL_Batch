
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

REM REM +ve CS 1
REM   set interval=2199 10 2199
REM   set interval2=11 10 11
REM     call calc.bat

REM +ve CS 2
  set interval=2179 10 2179
  set interval2=22 10 22
    call calc.bat

REM +ve CS 3
  set interval=2149 10 2149
  set interval2=23 1 23
    call calc.bat

REM +ve CS 4a
  set interval=2019 80 2099
  set interval2=14 1 14
    call calc.bat

REM +ve CS 4b
  set interval=2189 10 2189
  set interval2=25 1 25
    call calc.bat

REM +ve CS 4c
  set interval=2189 10 2189
  set interval2=16 1 16
    call calc.bat
