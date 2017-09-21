
call reset.bat

REM set pathBefore=F:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s.in

set redirect=1
REM set extVar=1
REM set nPrefix=qvDown

set proj_Num=314917

for /l %%b in (4 1 4) do (
REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=1006 40 1006
    set interval2=1!bq! 1 1!bq!
      call calc.bat

  REM REM -ve
  REM set bq=%%b
  REM   set interval=1116 10 1116
  REM   set interval2=1!bq! 1 1!bq!
  REM     call calc.bat
)
