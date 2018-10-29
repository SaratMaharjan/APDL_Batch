
call reset.bat
REM set proj_Num=%~n0
set proj_Num=325918

REM set pathBefore=E:
set pathAfter=ansysa

REM set sourcePre=x:\ins
REM set sourceFile=s-alt.in

REM set redirect=1
REM set extVar=1
set nPrefix=m

for /l %%b in (1 1 1) do (
REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1900 1 1900
  REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 20!bq!
  REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)

for /l %%b in (1 1 1) do (
REM for %%b in (1 2) do (

  set bq=%%b

  set interval=2900 1 2900
  REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 20!bq!
  REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)
