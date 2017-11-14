
call reset.bat

REM set pathBefore=F:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=i

set proj_Num=314917

for /l %%b in (2 1 2) do (
REM for %%b in (1 2) do (
  REM REM FS
  REM set bq=%%b
  REM   set interval=2110 1 2110
  REM   set interval2=10!bq! 100 20!bq!
  REM     call calc.bat

  REM REM FS
  REM set bq=%%b
  REM   set interval=2110 10 2110
  REM   set interval2=40!bq! 100 40!bq!
  REM     call calc.bat

  REM GS + SSW
  set bq=%%b
    set interval=2710 1 2710
    set interval2=30!bq! 100 30!bq!
      call calc.bat

  REM REM FS + Innen Teleskop
  REM set bq=%%b
  REM   set interval=2210 1 2210
  REM   set interval2=10!bq! 100 10!bq!
  REM     call calc.bat
)
