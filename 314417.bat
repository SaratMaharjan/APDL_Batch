
call reset.bat

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=d

set proj_Num=314417

for /l %%b in (1 1 1) do (
REM for %%b in (1 2) do (
  REM REM +ve
  REM set bq=%%b
  REM   set interval=1813 2 1819
  REM   set interval2=10!bq! 1 10!bq!
  REM     call calc.bat

  REM -ve
  set bq=%%b
    set interval=1825 2 1829
    set interval2=10!bq! 1 10!bq!
      call calc.bat
)

for /l %%b in (2 1 5) do (
REM for %%b in (1 2) do (
  REM +ve
  set bq=%%b
    set interval=1810 1 1819
    set interval2=10!bq! 1 10!bq!
      call calc.bat

  REM -ve
  set bq=%%b
    set interval=1821 1 1829
    set interval2=10!bq! 1 10!bq!
      call calc.bat
)
