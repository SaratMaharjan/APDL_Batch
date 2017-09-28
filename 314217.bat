
call reset.bat

REM set pathBefore=F:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
set sourceFile=s-alt.in

set redirect=1
REM set extVar=1
REM set nPrefix=d

set proj_Num=314217

for /l %%b in (2 1 2) do (
REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=2139 10 2139
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  REM REM -ve
  REM set bq=%%b
  REM   set interval=2139 10 2139
  REM   set interval2=1!bq! 1 1!bq!
  REM     call calc.bat
)
