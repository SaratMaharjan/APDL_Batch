
call reset.bat
set proj_Num=%~n0

@REM set pathBefore=D:
@REM set pathAfter=ansysa

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=1
@REM set extVar=1
@REM set nPrefix=m

@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=2000 1 2000
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=20!bq! 100 60!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )


@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=2000 1 2000
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=10!bq! 100 10!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )

set nPrefix=r
for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=2000 1 2000
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 10!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)
