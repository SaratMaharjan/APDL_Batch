
call reset.bat

REM set pathBefore=F:
REM set pathAfter=ansys

REM set sourcePre=R:\maharjan
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=r

set proj_Num=314217

for /l %%b in (2 1 2) do (
REM for %%b in (1 2 3) do (
  REM REM +ve
  REM set bq=%%b
  REM   set interval=2009 10 2099
  REM   set interval2=1!bq! 10 1!bq!
  REM     call calc.bat

  REM -ve
  set bq=%%b
    set interval=2129 10 2129
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)

for /l %%b in (1 1 1) do (
REM for %%b in (1 2 3) do (
  REM REM +ve
  REM set bq=%%b
  REM   set interval=2009 10 2099
  REM   set interval2=1!bq! 10 1!bq!
  REM     call calc.bat

  REM -ve
  set bq=%%b
    set interval=2119 10 2169
    set interval2=1!bq! 1 1!bq!
      call calc.bat
)

REM for /l %%b in (3 1 3) do (
REM REM for %%b in (1 2 3) do (
REM   REM +ve
REM   set bq=%%b
REM     set interval=2009 10 2099
REM     set interval2=1!bq! 10 1!bq!
REM       call calc.bat

REM   REM -ve
REM   set bq=%%b
REM     set interval=2119 10 2199
REM     set interval2=1!bq! 1 1!bq!
REM       call calc.bat
REM )
