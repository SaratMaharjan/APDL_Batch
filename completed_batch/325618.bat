
call reset.bat
set proj_Num=%~n0

@REM set pathBefore=E:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

set redirect=1
@REM set extVar=1
set nPrefix=m

@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=2921 1 2921
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=10!bq! 100 10!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )


for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=2917 1 2917
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 10!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=2907 1 2907
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=20!bq! 100 20!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)
