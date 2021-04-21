
call reset.bat
set proj_Num=%~n0

@REM set pathBefore=D:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=0
@REM set extVar=1
@REM set nPrefix=m

@REM for /l %%b in (1 1 2) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=1000 1 1000
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=11!bq! 1 11!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )

for /l %%b in (2 1 2) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=1000 1 1000
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=12!bq! 1 12!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)


call extra_cmd.bat
