
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=d

set proj_Num=316917

for /l %%b in (1 1 1) do (
REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=1000 1 1000
    set interval2=10!bq! 1 10!bq!
      call calc.bat

  REM REM -ve
  REM set bq=%%b
  REM   set interval=1821 1 1829
  REM   set interval2=10!bq! 1 10!bq!
  REM     call calc.bat
)

REM for /l %%b in (1 1 1) do (
REM REM for %%b in (1 2) do (
REM   REM +ve
REM   set bq=%%b
REM     set interval=1811 10 1811
REM     set interval2=10!bq! 1 10!bq!
REM       call calc.bat
REM )
