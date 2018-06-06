
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

  set interval=1000 1 1000
  set interval2=40!bq! 200 40!bq!
    call calc.bat

)

for /l %%b in (1 1 1) do (
REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1000 1 1000
  set interval2=20!bq! 200 20!bq!
    call calc.bat

)
