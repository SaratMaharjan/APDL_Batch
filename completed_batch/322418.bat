
call reset.bat
set proj_Num=%~n0

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=m

for /l %%b in (1 1 4) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1801 1 1818
  set interval2=10!bq! 100 10!bq!
    call calc.bat

)

@REM for /l %%b in (4 1 4) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=1812 1 1812
@REM   set interval2=10!bq! 100 10!bq!
@REM     call calc.bat

@REM )

@REM for /l %%b in (1 1 2) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=1801 1 1818
@REM   set interval2=10!bq! 100 10!bq!
@REM     call calc.bat

@REM )
