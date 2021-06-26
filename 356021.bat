
call reset.bat
set proj_Num=%~n0

@REM set pathBefore=D:
@REM set pathAfter=ansys

@REM set sourcePre=x:\ins
@REM set sourceFile=s-alt.in

@REM set redirect=0
@REM set extVar=1
@REM set nPrefix=m

@REM @REM ###################################  ECCENTRIC, WITHOUT CYLINDER
@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=0 1 0
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=10!bq! 100 10!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )

@REM ###################################  ECCENTRIC, WITH CYLINDER
for /l %%b in (1 1 1) do (
@REM for %%b in (1 2) do (

  set bq=%%b

  set interval=100 1 100
  @REM set interval2=20!bq! 100 20!bq!
  set interval2=10!bq! 100 10!bq!
  @REM set interval2=40!bq! 100 40!bq!
    call calc.bat

)


@REM @REM ###################################  ECCENTRIC, WITHOUT CYLINDER
@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=11 1 12
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=10!bq! 100 10!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )

@REM @REM ###################################  ECCENTRIC, WITH CYLINDER
@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=111 1 112
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=10!bq! 100 10!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )



@REM ###################################  CENTRIC, WITHOUT CYLINDER
@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=0000 1 0000
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=11!bq! 100 31!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM )

@REM ###################################  CENTRIC, WITH CYLINDER
@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=100 1 100
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=11!bq! 100 31!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!

@REM     call calc.bat

@REM )

@REM @REM ###################################  ECCENTRIC, WITHOUT CYLINDER - EW
@REM for /l %%b in (1 1 1) do (
@REM @REM for %%b in (1 2) do (

@REM   set bq=%%b

@REM   set interval=1 1 1
@REM   @REM set interval2=20!bq! 100 20!bq!
@REM   set interval2=10!bq! 100 10!bq!
@REM   @REM set interval2=40!bq! 100 40!bq!
@REM     call calc.bat

@REM @REM )

call extra_cmd.bat
