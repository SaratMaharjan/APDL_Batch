
call reset.bat
set proj_Num=326318

REM set pathBefore=E:
REM set pathAfter=ansys

REM set sourcePre=x:\ins
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
REM set nPrefix=m

for /l %%b in (4 1 4) do (
REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1801 1 1820
  REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 10!bq!
  REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)

REM for /l %%b in (3 1 3) do (
REM REM for %%b in (1 2) do (

REM   set bq=%%b

REM   set interval=1800 1 1820
REM   REM set interval2=20!bq! 100 20!bq!
REM   set interval2=10!bq! 100 10!bq!
REM   REM set interval2=40!bq! 100 40!bq!
REM     call calc.bat

REM )

REM for /l %%b in (1 1 1) do (
REM REM for %%b in (1 2) do (

REM   set bq=%%b

REM   set interval=1800 1 1820
REM   REM set interval2=20!bq! 100 20!bq!
REM   set interval2=10!bq! 100 10!bq!
REM   REM set interval2=40!bq! 100 40!bq!
REM     call calc.bat

REM )

REM for /l %%b in (2 1 2) do (
REM REM for %%b in (1 2) do (

REM   set bq=%%b

REM   set interval=1800 1 1820
REM   REM set interval2=20!bq! 100 20!bq!
REM   set interval2=10!bq! 100 10!bq!
REM   REM set interval2=40!bq! 100 40!bq!
REM     call calc.bat

REM )

