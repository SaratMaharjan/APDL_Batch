
call reset.bat

REM set pathBefore=F:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
set nPrefix=i

set proj_Num=314917

for /l %%b in (1 1 2) do (
REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=2210 1 2210
    set interval2=10!bq! 1 10!bq!
      call calc.bat

  REM REM -ve
  REM set bq=%%b
  REM   set interval=2710 10 2710
  REM   set interval2=10!bq! 100 70!bq!
  REM     call calc.bat
)
