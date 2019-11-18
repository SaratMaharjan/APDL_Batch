
call reset.bat
set proj_Num=%~n0

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=x:\ins
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=m

REM for /l %%b in (1 1 3) do (
REM for %%b in (1 2 3) do (
REM   REM +ve
REM   REM set bq=%%b
REM   set bq=2
REM     set interval=2001 10 2001
REM     set interval2=1!bq! 10 1!bq!
REM       call calc.bat

REM set nPrefix=m
REM   set bq=2
REM     set interval=2001 10 2001
REM     set interval2=1!bq! 10 1!bq!
REM       call calc.bat

set nPrefix=f
  set bq=2
    set interval=1001 10 1001
    set interval2=1!bq! 10 1!bq!
      call calc.bat

set nPrefix=o
  set bq=2
    set interval=1001 10 1001
    set interval2=1!bq! 10 1!bq!
      call calc.bat

  REM REM -ve
  REM set bq=2
  REM   set interval=2019 30 2049
  REM   set interval2=1!bq! 1 1!bq!
  REM     call calc.bat

  REM REM -ve
  REM set bq=3
  REM   set interval=2049 30 2079
  REM   set interval2=1!bq! 1 1!bq!
  REM     call calc.bat
REM )
