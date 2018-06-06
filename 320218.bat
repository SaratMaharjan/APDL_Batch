
call reset.bat
set proj_Num=%~n0

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=x:\ins
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=m

for /l %%b in (1 1 1) do (
REM for %%b in (1 2) do (

  set bq=%%b

  REM REM +ve
  REM   set interval=1902 2 1906
  REM   set interval2=10!bq! 100 10!bq!
  REM     call calc.bat

  REM +ve
    set interval=0 100 0
    set interval2=10!bq! 100 10!bq!
      call calc.bat

  REM REM -ve
  REM   set interval=1821 1 1829
  REM   set interval2=10!bq! 1 10!bq!
  REM     call calc.bat

)
